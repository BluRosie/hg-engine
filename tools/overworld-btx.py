#!/usr/bin/env python3

import os
import random
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
    TEXOffset = struct.unpack("<I", btxFile.read(4))[0]

# relevant TEX0 fields
"""
public struct Header
{
    /* 0x00 */ public char[] type;
    /* 0x04 */ public uint section_size;
    /* 0x08 */ public uint padding;
    /* 0x0C */ public ushort textData_size;
    /* 0x0E */ public ushort textInfo_offset;
    /* 0x10 */ public uint padding2;
    /* 0x14 */ public uint textData_offset;
    /* 0x18 */ public uint padding3;
    /* 0x1C */ public ushort textCompressedData_size;
    /* 0x1E */ public ushort textCompressedInfo_offset;
    /* 0x20 */ public uint padding4;
    /* 0x24 */ public uint textCompressedData_offset;
    /* 0x28 */ public uint textCompressedInfoData_offset;
    /* 0x2C */ public uint padding5;
    /* 0x30 */ public uint paletteData_size;
    /* 0x34 */ public uint paletteInfo_offset;
    /* 0x38 */ public uint paletteData_offset;
}
"""
    btxFile.seek(TEXOffset + 0x14, 0)
    textureOffset = TEXOffset + struct.unpack("<I", btxFile.read(4))[0]
    btxFile.seek(TEXOffset + 0x38, 0)
    palOffset = TEXOffset + struct.unpack("<I", btxFile.read(4))[0]
    btxFile.seek(TEXOffset + 0xE, 0)
    textInfoOffset = TEXOffset + struct.unpack("<H", btxFile.read(2))[0]

# compressed info offset/size
    
    

# finally read data
    btxFile.seek(textureOffset, 0)
    texture4bpp = btxFile.read(palOffset - textureOffset)
    btxFile.seek(palOffset, 0)
    gbapal = btxFile.read(totalSize - palOffset)
    
    btxFile.close()
    
    suffix = str(random.randint(0, 65535))
    while (os.path.exists(f"image-{suffix}.4bpp")):
        suffix = str(random.randint(0, 65535))

    open(f"image-{suffix}.4bpp", "wb").write(texture4bpp)
    open(f"image-{suffix}.gbapal", "wb").write(gbapal[:0x20])
    
    subprocess.run([GFX, f"image-{suffix}.4bpp", pngFilename, "-palette", f"image-{suffix}.gbapal", "-notiles", "-width", "8"])
    
    os.remove(f"image-{suffix}.4bpp")
    os.remove(f"image-{suffix}.gbapal")
    

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
        dump_btx_to_png_and_mappings()
    else:
        print(f"Dump state {dump}, GFX = {GFX}")
