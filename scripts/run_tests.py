import argparse
import sys

from desmume.emulator import DeSmuME, DeSmuME_Memory

g_EmulatorCommunicationSendHoleAddress = 0x02FFF81C
TEST_CASE_PASS = -1
TEST_CASE_FAIL = -2


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
NUMBER_OF_TESTS_TO_RUN = 3
TEST_START_INDEX = 0


has_finished_testing_flag = False
current_test_case = TEST_START_INDEX
return_value = 0

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
    global current_test_case, has_finished_testing_flag, return_value

    value = read_communication_hole_value()

    # Early return if value is invalid
    if value == TEST_CASE_FAIL:
        print(f"{bcolors.FAIL}[Fail] Test case {current_test_case}{bcolors.ENDC}")
        return_value += 1
    # Check if the value matches the current test case
    elif value == TEST_CASE_PASS:
        print(f"{bcolors.OKGREEN}[Pass] Test case {current_test_case}{bcolors.ENDC}")

    current_test_case += 1


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
        if window is not None:
            window.draw()

        emu.cycle(False)

    print("Tests complete!\n", flush=True)
    sys.exit(return_value)


if __name__ == "__main__":
    main()
