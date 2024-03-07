import sys
import os
import struct

dump = False

def GrabSpeciesDict(speciesDict: dict):
    speciesEntry = 0
    with open("include/constants/species.h") as f:
        for line in f:
            if len(line.split()) > 1:
                test = line.split()[1].strip()
                if 'SPECIES' in test and not '_START' in test and not '_SPECIES_H' in test and not '_NUM (' in line and not 'MAX_' in test:
                    if dump:
                        speciesDict[speciesEntry] = test
                    else:
                        speciesDict[test] = speciesEntry
                    speciesEntry += 1

def GrabMovesDict(movesDict: dict):
    moveEntry = 0
    with open("include/constants/moves.h") as f:
        for line in f:
            if len(line.split()) > 1:
                test = line.split()[1].strip()
                if 'MOVE' in test and not '_START' in test and not '_MOVES_H' in test and not 'NUM_OF' in test:
                    if dump:
                        movesDict[moveEntry] = test
                    else:
                        movesDict[test] = moveEntry
                    moveEntry += 1
    #GrabDefinesDict("include/constants/moves.h", movesDict)

"""
entry template:

TMXXX: MOVE_NAME
SPECIES_NAME_1
SPECIES_NAME_2
...

TMYYY: MOVE_NAME_2
SPECIES_NAME_1
SPECIES_NAME_3
...


binary format:
words tm's 1-32, tm's 33-64, 65-92+hm01-hm04, hm05-hm08
32 31 30 29 38 ...
64 65 63 62 61 ...
hm04 hm03 hm02 hm01 tm92 ...
... hm08 hm07 hm06 hm05
"""

NUM_OF_TMS = 92
NUM_OF_HMS = 8

def tmdatabuilder(inputPath: str):
    speciesDict = {}
    tm_data = {}
    GrabSpeciesDict(speciesDict)
    # idea is to iterate through file and switch up tm id when needed and such
    with open(inputPath, 'r', encoding="UTF-8") as file:
        for line in file:
            if line.startswith('TM'): # new tm entry
                tmId = int(line[2:5]) - 1 # tm index
                if tmId >= NUM_OF_TMS:
                    print('tmId too high: TM{:03d}\nQuitting execution...'.format(tmId+1))
                    return
            elif line.startswith('HM'): # new hm entry
                tmId = int(line[2:5]) - 1 + NUM_OF_TMS
                if tmId >= (NUM_OF_TMS + NUM_OF_HMS):
                    print('tmId for HM too high: HM{:03d}\nQuitting execution...'.format(tmId+1-NUM_OF_TMS))
                    return
            elif line.strip().startswith('SPECIES'): # SPECIES entry in current tmId
                try:
                    tm_data[speciesDict[line.strip()]] |= (1 << tmId)
                except KeyError:
                    tm_data[speciesDict[line.strip()]] = (1 << tmId)
    for species in range(0, len(speciesDict)):
        data_to_write = [0, 0, 0, 0]
        mondata = open("build/a002/mondata_{:04d}".format(species), "rb+")
        mondata.seek(0x1A)
        mondata.write(bytes([0, 0]))
        for i in range(0, 4):
            if species not in tm_data:
                tm_data[species] = 0
            data_to_write = struct.pack("<I", (tm_data[species] >> (32 * i)) & 0xFFFFFFFF)
            mondata.write(data_to_write)
        mondata.close()

def tmdatadumper(outputPath: str):
    speciesDict = {}
    movesDict = {}
    tmArray = {}
    tmSpecies = {}
    GrabSpeciesDict(speciesDict)
    GrabMovesDict(movesDict)
    output = open(outputPath, "w", encoding="UTF-8")
    # create a boolean array for each pokémon for tm's
    for species in range(0, len(speciesDict)):
        mondata = open("build/a002/mondata_{:04d}".format(species), "rb")
        mondata.seek(0x1C)
        tmArray[species] = 0
        for i in range(0, 4):
            tmArray[species] |= (struct.unpack("<I", mondata.read(4))[0] & 0xFFFFFFFF) << (32 * i)
        mondata.close()
    output.write(
"""Any line that doesn't start with TM/HM/SPECIES is discarded as a comment.
The TM move specified will automatically be written over the ARM9 entry as well.
The item icon and palette will still have to be modified, else the original type will be displayed.

""")
    arm9 = open("base/arm9.bin", "rb+")
    for i in range(0, NUM_OF_TMS + NUM_OF_HMS):
        arm9.seek(0x1000CC + i*2)
        tmMove = struct.unpack("<H", arm9.read(2))[0]
        if (i >= NUM_OF_TMS):
            output.write('HM{:03d}: {}\n'.format(i+1-NUM_OF_TMS, movesDict[tmMove]))
        else:
            output.write('TM{:03d}: {}\n'.format(i+1, movesDict[tmMove]))
        for species in range(0, len(speciesDict)):
            if (tmArray[species] & (1 << i)):
                output.write("    "+speciesDict[species]+"\n")
        output.write("\n")
    arm9.close()
    output.close()

def writemovestaughtbytms(inputPath: str):
    movesDict = {}
    GrabMovesDict(movesDict)
    arm9 = open("base/arm9.bin", "rb+")
    with open(inputPath, 'r', encoding="UTF-8") as file:
        for line in file:
            if line.startswith('TM'): # new tm entry
                tmId = int(line[2:5]) - 1 # tm index
                if tmId >= NUM_OF_TMS:
                    print('tmId too high: TM{}\nQuitting execution...'.format(int(line[2:5])))
                    return
                moveId = movesDict[line[7:len(line)-1]]
                arm9.seek(0x1000CC + tmId*2)
                arm9.write(struct.pack("<H", moveId))
            elif line.startswith('HM'): # new hm entry
                tmId = int(line[2:5]) - 1 + NUM_OF_TMS
                if tmId >= (NUM_OF_TMS + NUM_OF_HMS):
                    print('tmId for HM too high: HM{}\nQuitting execution...'.format(int(line[2:5])))
                    return
                moveId = movesDict[line[7:len(line)-1]]
                arm9.seek(0x1000CC + tmId*2)
                arm9.write(struct.pack("<H", moveId))
    arm9.close()

if __name__ == '__main__':
    args = sys.argv[1:]
    if (len(args) == 2 and args[0].strip() == '--dump'):
        dump = True
        tmdatadumper(args[1].strip())
    elif (len(args) == 2 and args[0].strip() == '--writetmlist'):
        writemovestaughtbytms(args[1].strip())
    elif (len(args) == 1):
        tmdatabuilder(args[0].strip())
