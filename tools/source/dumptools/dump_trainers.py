#!/usr/bin/env python3

# sup gang
# dump trainer files to build/a055 and build/a056, 5_### and 6_### respectively

dump = True

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

# pretend speciesEntry and speciesDict say itemEntry and itemDict
def GrabItemDict(speciesDict: dict):
    speciesEntry = 0
    with open("include/constants/item.h") as f:
        for line in f:
            if len(line.split()) > 1:
                test = line.split()[1].strip()
                if ' ITEM' in line and not "START" in test:
                    if dump:
                        speciesDict[speciesEntry] = test
                    else:
                        speciesDict[test] = speciesEntry
                    speciesEntry += 1

# pretend speciesEntry and speciesDict say moveEntry and moveDict
def GrabMovesDict(speciesDict: dict):
    speciesEntry = 0
    with open("include/constants/moves.h") as f:
        for line in f:
            if len(line.split()) > 1:
                test = line.split()[1].strip()
                if ' MOVE_' in line and not "START" in test:
                    if dump:
                        speciesDict[speciesEntry] = test
                    else:
                        speciesDict[test] = speciesEntry
                    speciesEntry += 1

def dumptrainers(outputFile: str):
    speciesDict = {}
    GrabSpeciesDict(speciesDict)
    itemDict = {}
    GrabItemDict = {}
    output = open(outputPath, "w")

    output.write(""".nds
.thumb

.include "armips/include/constants.s"
.include "armips/include/macros.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/moves.inc"
.include "asm/include/species.inc"

""")

    # to start, narcPath will be the trainer data narc, a055
    narcPath = "build/a055"

    for file in range(0, len(os.listdir(narcPath))):
        dataFile = open(narcPath + "/5_{:03d}".format(file), "rb")
        output.write(f"""trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PKMN_TRAINER_ETHAN
    nummons 0
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags 0
    battletype SINGLE_BATTLE
    endentry        
""")

"""
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PKMN_TRAINER_ETHAN
    nummons 0
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags 0
    battletype SINGLE_BATTLE
    endentry
"""

if __name__ == '__main__':
    args = sys.argv[1:]
    if (len(args) == 1):
        dumptrainers(args[0].strip())
    elif (len(args) == 0):
        dumptrainers("armips/data/trainers/trainers.s")
    else:
        raise Exception("Usage: python3 dump_trainers.py [outputPath]")
