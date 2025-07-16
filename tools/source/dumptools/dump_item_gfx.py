import os
import struct
import subprocess
import sys

"""
02100194 - item data table
format per item:
    u16 - data index - file in a017
    u16 - gfx index - file in a018
    u16 - pal index - file in a018
    u16 - gba index - conversion index for pal park items

desired output:
    png's named after the item, items assumed to be ordered in include/constants/item.h
        vanilla handling is read from 02100194 and beyond is read according to older format--every 2 files starting at 807 is NCGR/NCLR pair.
        we skip 797-806 because it used to be HUD elements for mega evolution/primal reversion
    itemgra.mk that is then automatically generated from the include/constants/item.h
"""

outputMakefile = "data/graphics/itemgra.mk"
outputDirectory = "data/graphics/item"

dump = False

BASE_DATA_TABLE_OFFSET = 0x100194

def GrabItemDict(itemDict: dict):
    itemEntry = 0
    with open("include/constants/item.h") as f:
        for line in f:
            if len(line.split()) > 1:
                test = line.split()[1].strip()
                if 'ITEM_' in test and not '_START' in test and not '_ITEM_' in test:
                    itemDict[itemEntry] = test.lower()[len("ITEM_"):]
                    itemEntry += 1


def DumpItemGfx(itemDict: dict):
    # delete existing item graphics
    subprocess.run(["rm", "-rf", outputDirectory + "/*"])
    if (dump): # dump item gfx from the files that are loaded in build/
        arm9 = open("base/arm9.bin", "rb")
        # read 02100194[item].gfx
        for item in range(0, 536): # original item end
            arm9.seek(0x100194 + 8*item + 2, 0)
            ncgr = struct.unpack("<H", arm9.read(2))[0]
            nclr = struct.unpack("<H", arm9.read(2))[0]
            print(f"ncgr {ncgr} nclr {nclr} itemDict {itemDict[item]}")
            subprocess.run(["cp", f"build/a018/8_{ncgr:03}", "temp,NCGR"])
            subprocess.run(["./tools/nitrogfx", "temp.NCGR", f"{outputDirectory}/{itemDict[item]}.png"])


if __name__ == '__main__':
    itemDict = {}
    args = sys.argv[1:]
    if (len(args) == 3 and "--dump" in args[0]):
        dump = True
        outputMakefile = args[1]
        outputDirectory = args[2]
    elif (len(args) == 2):
        outputMakefile = args[0]
        outputDirectory = args[1]
    elif (len(args) != 0):
        print("Incorrect number of command line arguments supplied, using default values and not dumping.")
    GrabItemDict(itemDict)
    DumpItemGfx(itemDict)
