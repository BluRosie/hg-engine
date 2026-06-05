import argparse
import json
import os
import pathlib
import selectors
import re
import signal
import subprocess
import sys
import tempfile
import time

from desmume.emulator import DeSmuME, DeSmuME_Memory

# Settings
BASE_IDLE_TIMEOUT_SECONDS = 1 * 60  # 1 minute

g_EmulatorCommunicationSendHoleAddress = 0x02FFF81C
TEST_CASE_PASS = -1
TEST_CASE_FAIL = -2
TEST_CASE_KNOWN_FAILING = -3


# https://stackoverflow.com/questions/287871/how-do-i-print-colored-text-to-the-terminal
class bcolors:
    HEADER = "\033[95m"
    OKBLUE = "\033[94m"
    OKCYAN = "\033[96m"
    OKGREEN = "\033[92m"
    WARNING = "\033[93m"
    FAIL = "\033[91m"
    ENDC = "\033[0m"
    BOLD = "\033[1m"
    UNDERLINE = "\033[4m"


parser = argparse.ArgumentParser()
parser.add_argument("-v", "--video", action="store_true")
parser.add_argument("-c", "--continuous_integration", action="store_true")
parser.add_argument(
    "-j",
    "--jobs",
    type=int,
    default=1,
    help="Number of parallel headless partitions to run",
)

ci = False

emu = None
emu_memory = None
memory = None

test_case_names: list[str] = list()
skipped_test_case_names: list[str] = list()
pass_test_case_names: list[str] = list()
fail_test_case_names: list[str] = list()
known_failing_test_case_names: list[str] = list()

current_test_case = 0
return_value = 0
last_activity_time = time.monotonic()
TEST_START_INDEX = 0
TEST_END_INDEX = 0
TOTAL_NUMBER_OF_TESTS = 0


def get_current_test_name() -> str | None:
    if current_test_case < 0 or current_test_case >= len(test_case_names):
        return None
    return test_case_names[current_test_case]


def get_current_global_test_index() -> int | None:
    if current_test_case < 0 or current_test_case >= TOTAL_NUMBER_OF_TESTS:
        return None
    return TEST_START_INDEX + current_test_case


def load_test_manifest() -> dict:
    manifest_path = pathlib.Path(os.getcwd(), "build", "battle_tests", "test_manifest.json")
    with open(manifest_path, "r", encoding="utf-8") as file:
        return json.load(file)


def get_partition_bounds(total_tests: int, partition_count: int, partition_index: int) -> tuple[int, int]:
    if partition_count < 1:
        raise ValueError("partition_count must be at least 1")
    if partition_index < 0 or partition_index >= partition_count:
        raise ValueError("partition_index must be within [0, partition_count)")

    start_index = (total_tests * partition_index) // partition_count
    end_index = (total_tests * (partition_index + 1)) // partition_count
    return (start_index, end_index)


def get_test_names() -> tuple[list[str], list[str]]:
    manifest = load_test_manifest()
    selected = [entry["name"] for entry in manifest["selected_tests"]]
    skipped = [entry["name"] for entry in manifest["skipped_tests"]]
    return (selected, skipped)


def get_partition_count() -> int:
    return int(os.environ.get("TEST_RUNNER_PARTITION_COUNT", "1"))


def get_partition_index() -> int:
    return int(os.environ.get("TEST_RUNNER_PARTITION_INDEX", "0"))


def get_result_file() -> str | None:
    return os.environ.get("TEST_RUNNER_RESULT_FILE")


def should_suppress_partition_summary() -> bool:
    return os.environ.get("TEST_RUNNER_SUPPRESS_PARTITION_SUMMARY", "0") == "1"


def get_idle_timeout_seconds(partition_count: int) -> int:
    return BASE_IDLE_TIMEOUT_SECONDS * max(1, partition_count)


def read_communication_hole_value():
    return emu_memory.signed[g_EmulatorCommunicationSendHoleAddress]


def write_communication_hole_value(value: int):
    emu_memory.write_long(g_EmulatorCommunicationSendHoleAddress, value)


def has_finished_testing() -> bool:
    return current_test_case >= TOTAL_NUMBER_OF_TESTS


def callback_function_when_game_put_thing_into_communication_hole(address, size) -> None:
    del address
    del size

    global current_test_case
    global return_value
    global last_activity_time

    last_activity_time = time.monotonic()

    value = read_communication_hole_value()

    if value == TEST_CASE_FAIL:
        print(
            f"{bcolors.FAIL}[Fail] {test_case_names[current_test_case]}{bcolors.ENDC}",
            flush=True,
        )
        fail_test_case_names.append(test_case_names[current_test_case])
        return_value += 1
    elif value == TEST_CASE_PASS:
        print(
            f"{bcolors.OKGREEN}[Pass] {test_case_names[current_test_case]}{bcolors.ENDC}",
            flush=True,
        )
        pass_test_case_names.append(test_case_names[current_test_case])
    elif value == TEST_CASE_KNOWN_FAILING:
        print(
            f"{bcolors.WARNING}[Known Failing] {test_case_names[current_test_case]}{bcolors.ENDC}",
            flush=True,
        )
        known_failing_test_case_names.append(test_case_names[current_test_case])
    else:
        return

    current_test_case += 1

    if ci:
        print("##[endgroup]")
        if not has_finished_testing():
            print(f"##[group]{test_case_names[current_test_case]}")


def read_total_tests_from_header() -> int:
    header_path = "include/constants/generated/test_battle.h"

    with open(header_path, "r", encoding="utf-8") as f:
        text = f.read()

    m = re.search(r"#define\s+TEST_BATTLE_TOTAL_TESTS\s+(\d+)", text)
    if not m:
        raise RuntimeError(f"Could not find TEST_BATTLE_TOTAL_TESTS in {header_path}")
    return int(m.group(1))


def get_test_results() -> str:
    results: str = "\n\n"
    results += "Test results:\n"
    results += f"Number of tests passed: {len(pass_test_case_names)}\n"

    results += f"Tests failed ({len(fail_test_case_names)}):\n"
    for failed_item in fail_test_case_names:
        results += f"\t{bcolors.FAIL}{failed_item}{bcolors.ENDC}\n"

    results += f"Tests known failing ({len(known_failing_test_case_names)}):\n"
    for known_failing_item in known_failing_test_case_names:
        results += f"\t{bcolors.WARNING}{known_failing_item}{bcolors.ENDC}\n"

    results += f"Tests skipped ({len(skipped_test_case_names)}):\n"
    for skipped_item in skipped_test_case_names:
        results += f"\t{bcolors.WARNING}{skipped_item}{bcolors.ENDC}\n"

    return results


def get_result_payload(partition_count: int, partition_index: int) -> dict:
    return {
        "partition_count": partition_count,
        "partition_index": partition_index,
        "start_index": TEST_START_INDEX,
        "end_index": TEST_END_INDEX,
        "total_tests": TOTAL_NUMBER_OF_TESTS,
        "passed": pass_test_case_names,
        "failed": fail_test_case_names,
        "known_failing": known_failing_test_case_names,
        "skipped": skipped_test_case_names,
        "return_value": return_value,
        "status": "ok",
        "error_type": None,
        "error_message": None,
        "current_test_name": get_current_test_name(),
        "current_global_test_index": get_current_global_test_index(),
    }


def write_result_payload(result_file: str | None, payload: dict) -> None:
    if result_file is None:
        return

    with open(result_file, "w", encoding="utf-8") as file:
        json.dump(payload, file, indent=2)
        file.write("\n")


def append_results_to_log() -> None:
    with open("test_logs.txt", "a", encoding="utf-8") as f:
        f.write(get_test_results())


def end_test(signum, frame):
    del frame

    if emu is not None:
        emu.destroy()

    append_results_to_log()
    sys.exit(signum)


def validate_partition_args(partition_count: int, partition_index: int) -> None:
    if partition_count < 1:
        raise ValueError("--partition-count must be at least 1")
    if partition_index < 0 or partition_index >= partition_count:
        raise ValueError("--partition-index must be between 0 and partition-count - 1")


def print_partition_header(partition_count: int, partition_index: int) -> None:
    print(
        f"Running partition {partition_index + 1}/{partition_count} "
        f"(tests {TEST_START_INDEX}..{max(TEST_START_INDEX, TEST_END_INDEX) - 1})"
    )


def mark_result_error(payload: dict, error_type: str, error_message: str) -> dict:
    payload["status"] = "error"
    payload["error_type"] = error_type
    payload["error_message"] = error_message
    payload["current_test_name"] = get_current_test_name()
    payload["current_global_test_index"] = get_current_global_test_index()
    return payload


def reset_partition_state() -> None:
    global current_test_case
    global return_value
    global pass_test_case_names
    global fail_test_case_names
    global known_failing_test_case_names
    global ci

    current_test_case = 0
    return_value = 0
    pass_test_case_names = list()
    fail_test_case_names = list()
    known_failing_test_case_names = list()
    ci = False


def run_single_partition(args) -> int:
    global ci
    global emu
    global emu_memory
    global memory
    global TEST_START_INDEX
    global TEST_END_INDEX
    global TOTAL_NUMBER_OF_TESTS
    global test_case_names
    global skipped_test_case_names
    global last_activity_time

    partition_count = get_partition_count()
    partition_index = get_partition_index()
    result_file = get_result_file()
    idle_timeout_seconds = get_idle_timeout_seconds(partition_count)

    validate_partition_args(partition_count, partition_index)
    reset_partition_state()

    test_case_names, skipped_test_case_names = get_test_names()
    total_test_count = read_total_tests_from_header()
    TEST_START_INDEX, TEST_END_INDEX = get_partition_bounds(
        total_test_count, partition_count, partition_index
    )
    TOTAL_NUMBER_OF_TESTS = TEST_END_INDEX - TEST_START_INDEX
    test_case_names = test_case_names[TEST_START_INDEX:TEST_END_INDEX]

    signal.signal(signal.SIGINT, end_test)

    emu = DeSmuME()
    emu_memory = emu.memory
    memory = DeSmuME_Memory(emu)
    last_activity_time = time.monotonic()

    memory.register_write(
        g_EmulatorCommunicationSendHoleAddress,
        callback_function_when_game_put_thing_into_communication_hole,
    )

    if args.continuous_integration:
        ci = True

    print_partition_header(partition_count, partition_index)
    print(f"Number of tests: {len(test_case_names)}")
    print(f"Number of skipped tests: {len(skipped_test_case_names)}")

    if TOTAL_NUMBER_OF_TESTS == 0:
        print("No tests assigned to this partition.")
        payload = get_result_payload(partition_count, partition_index)
        write_result_payload(result_file, payload)
        if not should_suppress_partition_summary():
            print(format_aggregate_results([payload]), flush=True)
        return 0

    emu.open("test.nds")
    emu.backup.import_file("test.sav")

    window = None
    if args.video:
        window = emu.create_sdl_window()

    if ci:
        print(f"##[group]{test_case_names[0]}")

    for i in range(120):
        del i
        emu.cycle(False)

    write_communication_hole_value(TEST_START_INDEX + (TEST_END_INDEX << 16))

    # Run the emulation as fast as possible until testing complete
    while not has_finished_testing():
        if (time.monotonic() - last_activity_time) > idle_timeout_seconds:
            current_test_name = get_current_test_name()
            current_global_test_index = get_current_global_test_index()
            timeout_message = (
                f"[Timeout] No activity for {idle_timeout_seconds // 60} minutes. Aborting."
            )
            if current_test_name is not None and current_global_test_index is not None:
                timeout_message += (
                    f" Stuck on test {current_global_test_index}: {current_test_name}"
                )
            print(
                f"{bcolors.FAIL}{timeout_message}{bcolors.ENDC}",
                flush=True,
            )
            payload = mark_result_error(
                get_result_payload(partition_count, partition_index),
                "timeout",
                timeout_message,
            )
            write_result_payload(result_file, payload)
            return 1

        if window is not None:
            window.draw()

        emu.cycle(False)

    emu.destroy()
    emu = None

    payload = get_result_payload(partition_count, partition_index)
    write_result_payload(result_file, payload)

    if not should_suppress_partition_summary():
        print(format_aggregate_results([payload]), flush=True)

    return return_value


def format_aggregate_results(results: list[dict]) -> str:
    total_passed = sum(len(result["passed"]) for result in results)
    total_failed = sum(len(result["failed"]) for result in results)
    total_known_failing = sum(len(result["known_failing"]) for result in results)
    total_skipped = len(results[0]["skipped"]) if results else 0
    partition_errors = [result for result in results if result.get("status") != "ok"]

    lines = [
        "Total test summary:",
        f"Number of tests passed: {total_passed}",
        f"Tests failed ({total_failed + len(partition_errors)}):",
    ]

    for result in results:
        for failed_item in result["failed"]:
            lines.append(f"\t{bcolors.FAIL}{failed_item}{bcolors.ENDC}")

    for result in partition_errors:
        detail = (
            f"partition {result['partition_index'] + 1}/{result['partition_count']}: "
            f"{result['error_message']}"
        )
        lines.append(f"\t{bcolors.FAIL}{detail}{bcolors.ENDC}")

    lines.append(f"Tests known failing ({total_known_failing}):")
    for result in results:
        for known_failing_item in result["known_failing"]:
            lines.append(f"\t{bcolors.WARNING}{known_failing_item}{bcolors.ENDC}")

    lines.append(f"Tests skipped ({total_skipped}):")
    if results:
        for skipped_item in results[0]["skipped"]:
            lines.append(f"\t{bcolors.WARNING}{skipped_item}{bcolors.ENDC}")

    return "\n".join(lines)


def run_parallel_partitions(args) -> int:
    if args.video:
        raise ValueError("Parallel mode does not support --video")
    if args.jobs < 1:
        raise ValueError("--jobs must be at least 1")

    total_test_count = read_total_tests_from_header()
    worker_count = min(args.jobs, max(1, total_test_count))
    script_path = pathlib.Path(__file__).resolve()
    print(f"Running {worker_count} test partitions. Logs will be printed in order after completion.")
    live_result_pattern = re.compile(r"\[(Pass|Fail|Known Failing|Timeout)\]")

    with tempfile.TemporaryDirectory(prefix="battle-test-partitions-") as temp_dir:
        processes: list[tuple[int, pathlib.Path, pathlib.Path, subprocess.Popen, object]] = list()
        selector = selectors.DefaultSelector()
        partition_buffers: dict[int, str] = {}

        def handle_output_chunk(partition_index: int, output_file, chunk_text: str) -> None:
            buffer = partition_buffers.get(partition_index, "") + chunk_text

            while True:
                newline_index = buffer.find("\n")
                if newline_index == -1:
                    break

                line = buffer[: newline_index + 1]
                buffer = buffer[newline_index + 1 :]
                output_file.write(line)
                if live_result_pattern.search(line):
                    print(line, end="", flush=True)

            output_file.flush()
            partition_buffers[partition_index] = buffer

        def flush_partition_buffer(partition_index: int, output_file) -> None:
            buffer = partition_buffers.get(partition_index, "")
            if not buffer:
                return

            output_file.write(buffer)
            output_file.flush()
            if live_result_pattern.search(buffer):
                print(buffer, end="", flush=True)
            partition_buffers[partition_index] = ""

        for partition_index in range(worker_count):
            result_path = pathlib.Path(temp_dir, f"partition_{partition_index}.json")
            output_path = pathlib.Path(temp_dir, f"partition_{partition_index}.log")
            start_index, end_index = get_partition_bounds(
                total_test_count, worker_count, partition_index
            )
            env = os.environ.copy()
            env["TEST_RUNNER_PARTITION_COUNT"] = str(worker_count)
            env["TEST_RUNNER_PARTITION_INDEX"] = str(partition_index)
            env["TEST_RUNNER_RESULT_FILE"] = str(result_path)
            env["TEST_RUNNER_SUPPRESS_PARTITION_SUMMARY"] = "1"
            cmd = [
                sys.executable,
                "-u",
                str(script_path),
            ]
            if args.continuous_integration:
                cmd.append("-c")

            output_file = open(output_path, "w", encoding="utf-8")
            process = subprocess.Popen(
                cmd,
                env=env,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                bufsize=0,
            )
            if process.stdout is None:
                raise RuntimeError(f"Failed to capture stdout for partition {partition_index}")
            selector.register(process.stdout, selectors.EVENT_READ, (partition_index, output_file))
            processes.append((partition_index, result_path, output_path, process, output_file))
            partition_buffers[partition_index] = ""
            print(
                f"Started partition {partition_index + 1}/{worker_count} "
                f"(tests {start_index}..{max(start_index, end_index) - 1})"
            )

        while selector.get_map():
            for key, _ in selector.select(timeout=0.1):
                stream = key.fileobj
                partition_index, output_file = key.data
                chunk = os.read(stream.fileno(), 4096)
                if not chunk:
                    selector.unregister(stream)
                    continue
                handle_output_chunk(partition_index, output_file, chunk.decode("utf-8", errors="replace"))

        exit_code = 0
        for partition_index, result_path, output_path, process, output_file in processes:
            process.wait()
            if process.stdout is not None:
                remaining_output = process.stdout.read()
                if remaining_output:
                    handle_output_chunk(
                        partition_index,
                        output_file,
                        remaining_output.decode("utf-8", errors="replace"),
                    )
                process.stdout.close()
            flush_partition_buffer(partition_index, output_file)
            output_file.close()
            if process.returncode != 0:
                exit_code = 1
            if not result_path.exists():
                raise RuntimeError(
                    f"Partition {partition_index} did not write results to {result_path}"
                )

        results = list()
        log_sections = list()
        for partition_index, result_path, output_path, process, output_file in processes:
            del process
            del output_file
            with open(result_path, "r", encoding="utf-8") as file:
                result = json.load(file)
                if result["partition_index"] != partition_index:
                    raise RuntimeError(
                        f"Partition result mismatch for {result_path}: "
                        f"expected index {partition_index}, got {result['partition_index']}"
                    )
                results.append(result)
            with open(output_path, "r", encoding="utf-8") as file:
                log_sections.append(
                    f"== Partition {partition_index + 1}/{worker_count} ==\n{file.read()}".rstrip()
                )

        results.sort(key=lambda item: item["partition_index"])
        summary = format_aggregate_results(results)
        total_failed = sum(len(result["failed"]) for result in results)
        total_partition_errors = sum(1 for result in results if result.get("status") != "ok")
        print("\n\n".join(log_sections))
        print()
        print(summary)

        with open("test_logs.txt", "w", encoding="utf-8") as file:
            file.write("\n\n".join(log_sections))
            file.write("\n\n")
            file.write(summary)
            file.write("\n")

        if exit_code != 0 and total_failed == 0 and total_partition_errors == 0:
            return exit_code
        return total_failed + total_partition_errors


def main():
    args = parser.parse_args()

    if args.jobs > 1:
        sys.exit(run_parallel_partitions(args))

    sys.exit(run_single_partition(args))


if __name__ == "__main__":
    main()
