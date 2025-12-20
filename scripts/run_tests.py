from desmume.emulator import DeSmuME
from desmume.emulator import DeSmuME_Memory

SHOW_VIDEO_OUTPUT = False
g_EmulatorCommunicationSendHoleAddress = 0x023df15c
NUMBER_OF_TESTS_TO_RUN = 1

emu = DeSmuME()
emu_memory = emu.memory
emu.open('test.nds')
emu.backup.import_file('test.sav')

# Create the window for the emulator
window = emu.create_sdl_window()
memory = DeSmuME_Memory(emu)

# Run the emulation as fast as possible until quit
while True:
    window.process_input()   # Controls are the default DeSmuME controls, see below.
    emu.cycle()
    if (SHOW_VIDEO_OUTPUT):
        window.draw()
    # TODO: Obviously make it not 1
    # Kill the emulator after running 1 test case
    if (emu_memory.unsigned[g_EmulatorCommunicationSendHoleAddress] == NUMBER_OF_TESTS_TO_RUN):
        break

print("Tests complete!\n", flush=True)
