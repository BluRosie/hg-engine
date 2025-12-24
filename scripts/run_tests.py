import argparse
from desmume.emulator import DeSmuME
from desmume.emulator import DeSmuME_Memory

# Settings
SHOW_VIDEO_OUTPUT = False
g_EmulatorCommunicationSendHoleAddress = 0x023df15c
NUMBER_OF_TESTS_TO_RUN = 1
hasFinishedTesting = False

parser = argparse.ArgumentParser()
parser.add_argument('-v', '--video', action='store_true')

emu = DeSmuME()
emu_memory = emu.memory
memory = DeSmuME_Memory(emu)

def read_communication_hole_value():
    return emu_memory.signed[g_EmulatorCommunicationSendHoleAddress]

# TODO: Obviously make it not 1
# Kill the emulator after running 1 test case
def has_finished_testing():
    return read_communication_hole_value() == NUMBER_OF_TESTS_TO_RUN


def callback_function_when_game_put_thing_into_communication_hole(address, size):
    if (has_finished_testing()):
        global hasFinishedTesting
        hasFinishedTesting = True

memory.register_write(g_EmulatorCommunicationSendHoleAddress, callback_function_when_game_put_thing_into_communication_hole)

def main():
    args = parser.parse_args()
    emu.open('test.nds')
    emu.backup.import_file('test.sav')

    window = None

    if (args.video):
        # Create the window for the emulator
        window = emu.create_sdl_window()

    # Run the emulation as fast as possible until testing complete
    while (not hasFinishedTesting):
        if (window is not None):
            window.draw()

        emu.cycle(False)

    print("Tests complete!\n", flush=True)

if __name__ == '__main__':
    main()
