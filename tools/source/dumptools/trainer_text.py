import os
import struct
import subprocess
import sys

definesDict = {
    0: "TEXT_NOTICE_IN_OVERWORLD",
    1: "TEXT_DEFEATED_IN_BATTLE",
    2: "TEXT_DEFEATED_IN_OVERWORLD",
    3: "TEXT_DOUBLE_NOTICE_IN_OVERWORLD_1",
    4: "TEXT_DOUBLE_DEFEATED_IN_BATTLE_1",
    5: "TEXT_DOUBLE_DEFEATED_IN_OVERWORLD_1",
    6: "TEXT_DOUBLE_ONLY_1_POKEMON_1",
    7: "TEXT_DOUBLE_NOTICE_IN_OVERWORLD_2",
    8: "TEXT_DOUBLE_DEFEATED_IN_BATTLE_2",
    9: "TEXT_DOUBLE_DEFEATED_IN_OVERWORLD_2",
    10: "TEXT_DOUBLE_ONLY_1_POKEMON_2",
    15: "TEXT_LAST_MON_CRITICAL",
    16: "TEXT_LAST_MON_SENT_OUT",
    17: "TEXT_17",
    18: "TEXT_18",
    19: "TEXT_19",
    20: "TEXT_PLAYER_LOSES",
}

def DumpTrainerText():
    entryNum = 0
    currentTrainer = 0
    addressHasPrinted = False
    trainerAddressesToNum = {}
    trainerNumToAddresses = {}
    trainerTextLines = {}
    trainerTextLinesFile = open("data/text/728.txt")
    for line in trainerTextLinesFile:
        trainerTextLines[entryNum] = line
        entryNum = entryNum + 1
    output = open("armips/data/trainers/trainertext.s", "w")
    output.write(
""".nds
.thumb

.include "armips/include/constants.s"
.include "armips/include/macros.s"

.open "build/trainer_text_map/7_0", 0
""")
    with open("a131/1_0", "rb") as f:
        while f.tell() < os.stat("a131/1_0").st_size:
            currentEntry = struct.unpack("<H", f.read(2))[0]
            trainerAddressesToNum[currentEntry] = currentTrainer
            trainerNumToAddresses[currentTrainer] = currentEntry
            currentTrainer = currentTrainer + 1
    currentTrainer = 0
    with open("a057/7_0", "rb") as f:
        while f.tell() < os.stat("a057/7_0").st_size:
            for entry in trainerNumToAddresses:
                if f.tell() == trainerNumToAddresses[entry]:
                    output.write('{} // Trainer {}\n'.format(
                        "\n_{:04X}:".format(trainerNumToAddresses[entry]) if addressHasPrinted == False else "      ", entry))
                    addressHasPrinted = True
            addressHasPrinted = False
            currentEntry = struct.unpack("<H", f.read(2))[0]
            textFunc = definesDict[struct.unpack("<H", f.read(2))[0]]
            #if f.tell() in trainerAddressesToNum:
            output.write('    trainertextentry {:4d}, {:3d}, {}, "{}"\n'.format(currentTrainer, currentEntry, textFunc, trainerTextLines[(f.tell() >> 2) - 1].strip()))
            currentTrainer = currentTrainer + 1
    output.write('\n.close\n\n\n\n.create "build/trainer_text_offsets/1_0", 0\n\n')
    for entry in trainerNumToAddresses:
        output.write("/* Trainer {:3d} */ .halfword _{:04X}\n".format(entry, trainerNumToAddresses[entry]))
    output.write('\n.close')
    output.close()

if __name__ == '__main__':
    DumpTrainerText()
