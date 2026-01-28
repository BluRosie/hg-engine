import argparse
import os
import re
import sys
import time

from desmume.emulator import DeSmuME, DeSmuME_Memory

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


# Settings
SHOW_VIDEO_OUTPUT = False
TEST_START_INDEX = 0
IDLE_TIMEOUT_SECONDS = 1 * 60  # 1 minute

has_finished_testing_flag = False
current_test_case = TEST_START_INDEX
return_value = 0
last_activity_time = time.monotonic()

parser = argparse.ArgumentParser()
parser.add_argument("-v", "--video", action="store_true")

emu = DeSmuME()
emu_memory = emu.memory
memory = DeSmuME_Memory(emu)


def read_communication_hole_value():
    return emu_memory.signed[g_EmulatorCommunicationSendHoleAddress]


# TODO: Obviously make it not 1
# Kill the emulator after running 1 test case
def has_finished_testing():
    return current_test_case == NUMBER_OF_TESTS_TO_RUN


def callback_function_when_game_put_thing_into_communication_hole(address, size):
    global \
        current_test_case, \
        has_finished_testing_flag, \
        return_value, \
        last_activity_time

    last_activity_time = time.monotonic()

    value = read_communication_hole_value()

    if value == TEST_CASE_FAIL:
        print(f"{bcolors.FAIL}[Fail] Test case {current_test_case}{bcolors.ENDC}")
        return_value += 1
    elif value == TEST_CASE_PASS:
        print(f"{bcolors.OKGREEN}[Pass] Test case {current_test_case}{bcolors.ENDC}")
    elif value == TEST_CASE_KNOWN_FAILING:
        print(
            f"{bcolors.WARNING}[Known Failing] Test case {current_test_case}{bcolors.ENDC}"
        )

    current_test_case += 1


def read_total_tests_from_header() -> int:
    header_path = "include/constants/generated/test_battle.h"

    with open(header_path, "r", encoding="utf-8") as f:
        text = f.read()

    m = re.search(r"#define\s+TEST_BATTLE_TOTAL_TESTS\s+(\d+)", text)
    if not m:
        raise RuntimeError(f"Could not find TEST_BATTLE_TOTAL_TESTS in {header_path}")
    return int(m.group(1))


NUMBER_OF_TESTS_TO_RUN = read_total_tests_from_header()

memory.register_write(
    g_EmulatorCommunicationSendHoleAddress,
    callback_function_when_game_put_thing_into_communication_hole,
)


def main():
    args = parser.parse_args()
    emu.open("test.nds")
    emu.backup.import_file("test.sav")

    window = None

    if args.video:
        # Create the window for the emulator
        window = emu.create_sdl_window()

    # Run the emulation as fast as possible until testing complete
    while not has_finished_testing():
        if (time.monotonic() - last_activity_time) > IDLE_TIMEOUT_SECONDS:
            print(
                f"{bcolors.FAIL}[Timeout] No activity for {IDLE_TIMEOUT_SECONDS // 60} minutes. Aborting.{bcolors.ENDC}",
                flush=True,
            )
            sys.exit(1)

        if window is not None:
            window.draw()

        emu.cycle(False)

    print("Tests complete!\n", flush=True)
    sys.exit(return_value)


if __name__ == "__main__":
    main()
