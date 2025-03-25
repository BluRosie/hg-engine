import sys
import os
import struct

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


def headbuttdumper(narcPath: str, outputPath: str):
    speciesDict = {}
    GrabSpeciesDict(speciesDict)
    output = open(outputPath, "w")

    output.write(""".include "armips/include/constants.s"
.include "armips/include/macros.s"

.include "asm/include/species.inc"
                 
.nds
.thumb

// headbutt trees
// headbuttheader header, numberOfNormalTrees, numberOfSpecialTrees
// treecoords requires 6 pairs of x/y coordinates per tree.  fill the remaining pairs with -1's

""")
    for file in range(0, len(os.listdir(narcPath))):
        headbuttFile = open(narcPath + "/2_{:03d}".format(file), "rb")
        normalTrees = struct.unpack("<H", headbuttFile.read(2))[0]
        specialTrees = struct.unpack("<H", headbuttFile.read(2))[0]
        output.write("headbuttheader {:3d}, {:3d}, {:3d}\n".format(file, normalTrees, specialTrees))
        if (normalTrees != 0 or specialTrees != 0):
            output.write("    // normal slots\n")
            for encounter in range(0, 12):
                output.write("    headbuttencounter {}, {}, {}\n".format(speciesDict[struct.unpack("<H", headbuttFile.read(2))[0]], struct.unpack("<B", headbuttFile.read(1))[0], struct.unpack("<B", headbuttFile.read(1))[0]))
            output.write("    // special slots\n")
            for encounter in range(0, 6):
                output.write("    headbuttencounter {}, {}, {}\n".format(speciesDict[struct.unpack("<H", headbuttFile.read(2))[0]], struct.unpack("<B", headbuttFile.read(1))[0], struct.unpack("<B", headbuttFile.read(1))[0]))
            # tree coordinates
            if (normalTrees != 0):
                output.write("    // normal trees\n")
                for encounter in range(0, normalTrees):
                    output.write("    treecoords {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}\n".format(
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0]
                    ))
            if (specialTrees != 0):
                output.write("    // special trees\n")
                for encounter in range(0, specialTrees):
                    output.write("    treecoords {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}\n".format(
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0],
                        struct.unpack("<h", headbuttFile.read(2))[0]
                    ))
        output.write(".close\n\n")

if __name__ == '__main__':
    args = sys.argv[1:]
    if (len(args) == 3 and args[0].strip() == '--dump'):
        dump = True
        headbuttdumper(args[1].strip(), args[2].strip())
    else:
        raise Exception("Usage: python3 headbutt.py --dump narcPath armipsFilePath")
