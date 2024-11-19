import sys
import os
import struct

dump = False

numToTutorName = {
    0: "TUTOR_TOP_LEFT",
    1: "TUTOR_TOP_RIGHT",
    2: "TUTOR_BOTTOM_RIGHT",
    3: "TUTOR_HEADBUTT",
}

tutorNameToNum = {
    "TUTOR_TOP_LEFT": 0,
    "TUTOR_TOP_RIGHT": 1,
    "TUTOR_BOTTOM_RIGHT": 2,
    "TUTOR_HEADBUTT": 3,
}

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

TUTOR_LOCATION: MOVE_NAME COST
SPECIES_NAME_1
SPECIES_NAME_2
...


binary format:

fielddata/wazaoshie/waza_oshie.bin

2 words per mon that the tutors are
"""

NUM_OF_ENTRIES = 52

def tutordatabuilder(inputPath: str):
    speciesDict = {}
    tutor_data = {}
    GrabSpeciesDict(speciesDict)
    tutorId = -1 # -1 so that when it iterates on finding the first entry it equals 0
    # idea is to iterate through file and switch up tutor id when needed and such
    with open(inputPath, 'r', encoding="UTF-8") as file:
        for line in file:
            if line.startswith('TUTOR'): # new tutor move entry
                if tutorId >= (NUM_OF_ENTRIES):
                    print('tutorId too high: {:2d} >= {:2d}{\nQuitting execution...'.format(tutorId, NUM_OF_ENTRIES))
                    return
                tutorId = tutorId + 1
            elif line.strip().startswith('SPECIES'): # SPECIES entry in current tutorId
                try:
                    tutor_data[speciesDict[line.strip()]] |= (1 << tutorId)
                except KeyError:
                    tutor_data[speciesDict[line.strip()]] = (1 << tutorId)
    tutorDataFile = open("base/data/fielddata/wazaoshie/waza_oshie.bin", "wb")
    for elem in range(1, len(speciesDict)):
        data_to_write = [0, 0]
        try:
            for i in range(0, 2):
                data_to_write = struct.pack("<I", (tutor_data[elem] >> (32 * i)) & 0xFFFFFFFF)
                tutorDataFile.write(data_to_write)
        except KeyError:
            data_to_write = bytes([0, 0, 0, 0, 0, 0, 0, 0])
            tutorDataFile.write(data_to_write)
    tutorDataFile.close()

def tutordatadumper(outputPath: str):
    speciesDict = {}
    movesDict = {}
    tutorArray = {}
    GrabSpeciesDict(speciesDict)
    GrabMovesDict(movesDict)
    output = open(outputPath, "w", encoding="UTF-8")
    # create a boolean array for each pokémon for tm's
    tutorDataFile = open("base/data/fielddata/wazaoshie/waza_oshie.bin", "rb")
    for species in range(1, len(speciesDict)):
        tutorDataFile.seek((species-1)*8)
        tutorArray[species] = 0
        for i in range(0, 2):
            tutorArray[species] |= (struct.unpack("<I", tutorDataFile.read(4))[0] & 0xFFFFFFFF) << (32 * i)
    tutorDataFile.close()
    output.write(
"""Any line that doesn't start with TUTOR or SPECIES is discarded as a comment.
The move specified will automatically be written over the overlay 1 entry as well.
The entries between ARCEUS and VICTINI for EGG, BAD_EGG, etc.
are all due to entry for forms in tutor data not corresponding to personal entry.
See SpeciesAndFormeToWazaOshieIndex in src/pokemon.c for more information.

""")
    ovl1 = open("base/overlay/overlay_0001.bin", "rb+")
    for i in range(0, NUM_OF_ENTRIES):
        ovl1.seek(0x23AE0 + i*4)
        tutorMove = struct.unpack("<H", ovl1.read(2))[0]
        cost = struct.unpack("<B", ovl1.read(1))[0]
        tutorLocation = struct.unpack("<B", ovl1.read(1))[0]
        output.write('{}: {} {:d}\n'.format(numToTutorName[tutorLocation], movesDict[tutorMove], cost))
        for species in range(1, len(speciesDict)):
            if (tutorArray[species] & (1 << i)):
                output.write("    "+speciesDict[species]+"\n")
        output.write("\n")
    ovl1.close()
    output.close()

def writemovestaughtbytutors(inputPath: str):
    movesDict = {}
    GrabMovesDict(movesDict)
    ovl1 = open("base/overlay/overlay_0001.bin", "rb+")
    tutorId = 0
    with open(inputPath, 'r', encoding="UTF-8") as file:
        for line in file:
            if line.startswith('TUTOR'): # new tutor entry
                if tutorId >= NUM_OF_ENTRIES:
                    print('tutorId too high: {}\nQuitting execution...'.format(tutorId))
                    return
                currLine = line.split()
                moveId = movesDict[currLine[1].strip()]
                ovl1.seek(0x23AE0 + tutorId*4)
                ovl1.write(struct.pack("<H", moveId))
                ovl1.write(struct.pack("<B", int(currLine[2].strip())))
                ovl1.write(struct.pack("<B", int(tutorNameToNum[currLine[0][0:len(currLine[0])-1].strip()])))
                tutorId = tutorId + 1
    ovl1.close()

if __name__ == '__main__':
    args = sys.argv[1:]
    if (len(args) == 2 and args[0].strip() == '--dump'):
        dump = True
        tutordatadumper(args[1].strip())
    elif (len(args) == 2 and args[0].strip() == '--writemovecostlist'):
        writemovestaughtbytutors(args[1].strip())
    elif (len(args) == 1):
        tutordatabuilder(args[0].strip())
