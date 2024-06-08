#!/usr/bin/env python3

import os
import struct
import subprocess
import sys

usage_str = """python3 overworld-btx.py input.png output.btx0 [options]
this is not meant to be a generic btx0 handler
it is merely an overworld btx0 handler as they appear in hgss
idea is that we can provide an image and this handles it
uses nitrogfx (--nitrogfx/-n option) to generate the 4bpp texture
has a --dump/-d option because of course it does
just dumps the image with a proper palette
input is assumed to be png and output is assumed to be btx0
this holds true for --dump option--same order of png btx0

options:
-n [path]   specifies path to nitrogfx executable
            assumed to be at tools/nitrogfx if not specified.  also --nitrogfx
-d          dump image from btx0 with proper palette assignment.  also --dump
"""

dump = False
GFX = ("tools/nitrogfx")
pngFilename = ""
btxFilename = ""

# header format:
"""
struct BTX0_HEADER
{
    u8 headerConst[8] = {0x42, 0x54, 0x58, 0x30, 0xFF, 0xFE, 0x01, 0x00};
    u32 totalSize;
    u16 headerSize = 0x10; // (even though it's really 0x14 but whatever)
    u16 numSections = 1;
    u32 sectionOffsets = 0x14;
};
"""

# TEX0 format:

# so this is all that is really necessary to get to png!  however, it does still need the mappings from the beginning of the file
def dump_btx_to_png_and_mappings():
    btxFile = open(btxFilename, "rb")
    btxFile.seek(0x8, 0)
    totalSize = struct.unpack("<H", btxFile.read(2))[0]
    btxFile.seek(0x10, 0)
    TEXOffset = struct.unpack("<H", btxFile.read(2))[0]
    btxFile.seek(TEXOffset + 0x14, 0)
    textureOffset = TEXOffset + struct.unpack("<H", btxFile.read(2))[0]
    btxFile.seek(TEXOffset + 0x38, 0)
    palOffset = TEXOffset + struct.unpack("<H", btxFile.read(2))[0]
    btxFile.seek(textureOffset, 0)
    texture4bpp = btxFile.read(palOffset - textureOffset)
    btxFile.seek(palOffset, 0)
    gbapal = btxFile.read(totalSize - palOffset)

    open("image.4bpp", "wb").write(texture4bpp)
    open("image.gbapal", "wb").write(gbapal[:0x20])
    

if __name__ == '__main__':
    args = sys.argv[1:]

    # argument handling time
    i = 0
    # look for --dump first
    while (i < len(args)):
        currArg = args[i].strip()
        if (currArg == "-d" or currArg == "--dump"):
            dump = True
        i = i + 1
    
    # now can worry about the rest of them
    i = 0
    while (i < len(args)):
        currArg = args[i].strip()
        if (currArg == "-d" or currArg == "--dump"):
            # dump already handled, do nothing sue me fuck you
            pass
        elif (currArg == "-n" or currArg == "--nitrogfx"):
            if ((i+1) >= len(args)):
                print(f"Error: no nitrogfx path specified for {currArg}\n")
                exit()
            elif ((not os.path.exists(args[i + 1].strip())) or os.path.isdir(args[i + 1].strip())):
                print(f"Error: {args[i + 1].strip()} is not a valid path for {currArg}\n")
                exit()
            else:
                GFX = (args[i + 1].strip())
                i = i + 1
        elif pngFilename == "":
            # when dumping, the image does not need to exist
            if ((not os.path.exists(currArg) and not dump) or os.path.isdir(currArg)):
                print(f"Error: {currArg} is not a valid path for {'output' if dump else 'input'} png\n")
                exit()
            pngFilename = currArg
        elif btxFilename == "":
            # when building, the btx does not need to exist
            if ((not os.path.exists(currArg) and dump) or os.path.isdir(currArg)):
                print(f"Error: {currArg} is not a valid path for {'output' if not dump else 'input'} btx0\n")
                exit()
            btxFilename = currArg
        else:
            print(f"Error: not sure what do with {currArg}\n")
            exit()
        i = i + 1
    if (pngFilename == ""):
        print("Error: png file not specified\n")
        print(usage_str)
        exit()
    elif (btxFilename == ""):
        print("Error: btx file not specified\n")
        print(usage_str)
        exit()

    # now we handle things
    if (dump):
        dump_btx_to_png()
    else:
        print(f"Dump state {dump}, GFX = {GFX}")
