#!/usr/bin/env python3

from dataclasses import dataclass
import json
import os
import random
import struct
import subprocess
import sys

def read_field(file, offset, size) -> int:
    file.seek(offset, 0)
    format = ("<I" if size == 4 else ("<H" if size == 2 else ("<B")))
    return struct.unpack(format, file.read(size))[0]

def bit_to_num(num) -> int:
    for i in range(0, 32):
        if num == (1 << i):
            return i

def write_field(file, offset, field, size):
    file.seek(offset, 0)
    format = ("<I" if size == 4 else ("<H" if size == 2 else ("<B")))
    file.write(struct.pack(format, field))

@dataclass
class PaletteInfo:
    unk0: int
    unk1: int
    offset: int

    name: str
    fileName: str

    def fillDataValues(self, btxFile, baseOffset):
        self.unk0 = read_field(btxFile, baseOffset, 2)
        self.unk1 = read_field(btxFile, baseOffset + 2, 2)

    def setName(self, btxFile, baseOffset):
        self.name = ""
        for i in range(0, 16):
            currChar = read_field(btxFile, baseOffset + i, 1)
            if (currChar != 0):
                self.name += chr(currChar)
            else:
                break

    def __init__(self, btxFile, baseOffset):
        self.fillDataValues(btxFile, baseOffset)

@dataclass
class TextureInfo:
    unkBlockUnk0: int
    unkBlockUnk1: int
    imgOffset: int
    params: int
    width2: int
    unk0: int
    unk1: int
    unk2: int

    coordTrans: bool
    color0: bool
    format: int
    height: int
    width: int
    flipY: bool
    flipX: bool
    repeatY: bool
    repeatX: bool

    name: str

    # based on code from tinke
    def deriveParameterValues(self):
        self.coordTrans = (self.params & 0x14)
        self.color0 = (self.params >> 13) & 1
        self.format = (self.params >> 10) & 7
        self.height = (8 << ((self.params >> 7) & 7))
        self.width = (8 << ((self.params >> 4) & 7))
        self.flipY = (self.params >> 3) & 1
        self.flipX = (self.params >> 2) & 1
        self.repeatY = (self.params >> 1) & 1
        self.repeatX = self.params & 1

    def fillDataValues(self, btxFile, baseOffset):
        self.imgOffset = read_field(btxFile, baseOffset, 2)
        self.params = read_field(btxFile, baseOffset+2, 2)
        self.width2 = read_field(btxFile, baseOffset+4, 1)
        self.unk0 = read_field(btxFile, baseOffset+5, 1)
        self.unk1 = read_field(btxFile, baseOffset+6, 1)
        self.unk2 = read_field(btxFile, baseOffset+7, 1)
        self.deriveParameterValues()

    def setName(self, btxFile, baseOffset):
        self.name = ""
        for i in range(0, 16):
            currChar = read_field(btxFile, baseOffset + i, 1)
            if (currChar != 0):
                self.name += chr(currChar)

    def setUnkBlock(self, btxFile, baseOffset):
        self.unkBlockUnk0 = read_field(btxFile, baseOffset, 2)
        self.unkBlockUnk1 = read_field(btxFile, baseOffset + 2, 2)

    def __init__(self, btxFile, baseOffset):
        self.fillDataValues(btxFile, baseOffset)

def rebuildParameterValues(jsonEntry) -> int:
    params = (jsonEntry["coordTrans"] & 0x14)
    params |= (jsonEntry["color0"] & 1) << 13
    params |= (jsonEntry["format"] & 7) << 10
    params |= ((bit_to_num(jsonEntry["height"]) - 3) & 7) << 7
    params |= ((bit_to_num(jsonEntry["width"]) - 3) & 7) << 4
    params |= (jsonEntry["flipY"] & 1) << 3
    params |= (jsonEntry["flipX"] & 1) << 2
    params |= (jsonEntry["repeatY"] & 1) << 1
    params |= (jsonEntry["repeatX"] & 1)
    return params

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

def build_btx_from_png_and_mappings():
    btxFile = open(btxFilename, "wb")

    if ".png" in pngFilename:
        metadataStr = pngFilename[:(-1 * len(".png"))]
    else:
        metadataStr = pngFilename
    metadata = json.load(open(metadataStr + ".json", "r"))
    frames = 0
    palettes = 0
    numSeparateFrames = 0
    frameWidth = 0
    frameHeight = 0
    frameNames = {}
    palNames = {}
    frameMetadata = metadata["frames"]
    paletteMetadata = metadata["palettes"]
    for metafield in frameMetadata.keys():
        if frameMetadata[metafield]["frame"] > numSeparateFrames:
            numSeparateFrames = frameMetadata[metafield]["frame"]
        if frameHeight == 0:
            frameHeight = frameMetadata[metafield]["height"]
        if frameWidth == 0:
            frameWidth = frameMetadata[metafield]["width"]
        frameNames[frames] = metafield
        frames = frames + 1
    for metafield in paletteMetadata.keys():
        palNames[palettes] = metafield
        palettes = palettes + 1
    numSeparateFrames = numSeparateFrames + 1

    TEXOffset = 0x14 # this seems pretty standard to me
    textureDataSize = int(numSeparateFrames * frameHeight * frameWidth / 16)

    propertiesOffset = 0x50 # this also seems pretty standard to me
    paletteInfoOffset = propertiesOffset + 0x10 + frames * 0x1C

    # palette info header
    write_field(btxFile, paletteInfoOffset + 1, palettes, 1)
    write_field(btxFile, paletteInfoOffset + 2, 0x10 + palettes * 0x18, 2)
    write_field(btxFile, paletteInfoOffset + 4, 8, 2)
    write_field(btxFile, paletteInfoOffset + 6, 0xC + palettes*4, 2)
    write_field(btxFile, paletteInfoOffset + 8, 0x17F, 4)
    #for i in range(0, palettes):
    #    write_field(btxFile, paletteInfoOffset + 0xC + (0x4 * i), paletteMetadata[palNames[i]]["unk0"], 2)
    #    write_field(btxFile, paletteInfoOffset + 0xE + (0x4 * i), paletteMetadata[palNames[i]]["unk1"], 2)
    write_field(btxFile, paletteInfoOffset + 0xC + (0x4 * palettes), 4, 2)
    write_field(btxFile, paletteInfoOffset + 0xC + (0x4 * palettes) + 2, 4 + 4*palettes, 2)
    #for i in range(0, palettes):
    #    write_field(btxFile, paletteInfoOffset + 0x10 + (0x4 * palettes) + (0x4 * i), paletteMetadata[palNames[i]]["offset"], 4)
    highestOffset = 0
    for i in range(0, palettes):
        write_field(btxFile, paletteInfoOffset + 0xC + (0x4 * i), paletteMetadata[palNames[i]]["unk0"], 2)
        write_field(btxFile, paletteInfoOffset + 0xE + (0x4 * i), paletteMetadata[palNames[i]]["unk1"], 2)
        write_field(btxFile, paletteInfoOffset + 0x10 + (0x4 * palettes) + (0x4 * i), paletteMetadata[palNames[i]]["offset"] * 4, 4)
        for j in range(0, len(palNames[i])):
            write_field(btxFile, (paletteInfoOffset + 0x10 + (0x8 * palettes) + (16 * i) + j), ord(palNames[i][j]), 1)
        if (paletteMetadata[palNames[i]]["offset"] > highestOffset):
            highestOffset = paletteMetadata[palNames[i]]["offset"]
    highestOffset = highestOffset + 1

    textureOffset = (paletteInfoOffset + 0x10 + (0x18 * palettes))
    paletteOffset = textureOffset + textureDataSize*8

    # now we start writing the texture header
    write_field(btxFile, TEXOffset, 0x30584554, 4)
    write_field(btxFile, TEXOffset + 8, 0, 4)
    write_field(btxFile, TEXOffset + 0xC, textureDataSize, 2)
    write_field(btxFile, TEXOffset + 0xE, propertiesOffset - TEXOffset, 2)
    write_field(btxFile, TEXOffset + 0x10, 0, 4)
    write_field(btxFile, TEXOffset + 0x14, textureOffset - TEXOffset, 4)
    write_field(btxFile, TEXOffset + 0x18, 0, 4)
    write_field(btxFile, TEXOffset + 0x1C, 0, 2)
    write_field(btxFile, TEXOffset + 0x1E, propertiesOffset - TEXOffset, 2)
    write_field(btxFile, TEXOffset + 0x20, 0, 4)
    write_field(btxFile, TEXOffset + 0x24, paletteOffset - TEXOffset, 4)
    write_field(btxFile, TEXOffset + 0x28, paletteOffset - TEXOffset, 4)
    write_field(btxFile, TEXOffset + 0x2C, 0, 4)
    write_field(btxFile, TEXOffset + 0x34, paletteInfoOffset - TEXOffset, 4)
    write_field(btxFile, TEXOffset + 0x38, paletteOffset - TEXOffset, 4)

    # now we take a look at the properties of each frame
    write_field(btxFile, propertiesOffset + 1, frames, 1)
    write_field(btxFile, propertiesOffset + 2, 0x10 + frames*0x1C, 2)
    write_field(btxFile, propertiesOffset + 4, 8, 2)
    write_field(btxFile, propertiesOffset + 6, 0xC + frames*4, 2)
    write_field(btxFile, propertiesOffset + 8, 0x17F, 4)
    for i in range(0, frames):
        write_field(btxFile, propertiesOffset + 0xC + i*4, frameMetadata[frameNames[i]]["unkBlockUnk0"], 2)
        write_field(btxFile, propertiesOffset + 0xE + i*4, frameMetadata[frameNames[i]]["unkBlockUnk1"], 2)
    newBaseOffset = propertiesOffset + 0xC + frames*4
    write_field(btxFile, newBaseOffset, 8, 2)
    write_field(btxFile, newBaseOffset + 2, 4 + frames * 8, 2)
    for i in range(0, frames):
        write_field(btxFile, newBaseOffset + 4 + 8*i, int(frameMetadata[frameNames[i]]["frame"] * frameMetadata[frameNames[i]]["width"] * frameMetadata[frameNames[i]]["height"] / 16), 2)
        write_field(btxFile, newBaseOffset + 6 + 8*i, rebuildParameterValues(frameMetadata[frameNames[i]]), 2)
        write_field(btxFile, newBaseOffset + 8 + 8*i, frameMetadata[frameNames[i]]["width"], 1)
        write_field(btxFile, newBaseOffset + 9 + 8*i, frameMetadata[frameNames[i]]["unk0"], 1)
        write_field(btxFile, newBaseOffset + 0xA + 8*i, frameMetadata[frameNames[i]]["unk1"], 1)
        write_field(btxFile, newBaseOffset + 0xB + 8*i, frameMetadata[frameNames[i]]["unk2"], 1)
    newBaseOffset = newBaseOffset + 0x4 + 8*frames
    for i in range(0, frames):
        for j in range(0, len(frameNames[i])):
            write_field(btxFile, newBaseOffset + i * 16 + j, ord(frameNames[i][j]), 1)

    # end with writing the overall header
    write_field(btxFile, 0, 0x30585442, 4)
    write_field(btxFile, 4, 0x0001FEFF, 4)
    write_field(btxFile, 0xC, 0x10, 2)
    write_field(btxFile, 0xE, 1, 2)
    write_field(btxFile, 0x10, TEXOffset, 4)

    # finally, convert all of the files and write them to the file
    suffix = str(random.randint(0, 65535))
    while (os.path.exists(f"image-{suffix}.4bpp")):
        suffix = str(random.randint(0, 65535))
    subprocess.run([GFX, pngFilename, f"image-{suffix}.4bpp", "-notiles"])
    btxFile.seek(textureOffset, 0)
    btxFile.write(open(f"image-{suffix}.4bpp", "rb").read())
    for i in range(0, palettes):
        offset = paletteMetadata[palNames[i]]["offset"]
        subprocess.run([GFX, metadataStr + "-" + paletteMetadata[palNames[i]]["fileName"], f"image-{suffix}.gbapal"])
        btxFile.seek(paletteOffset + offset*0x20, 0) # this probably doesn't match exactly for edge cases of btx0 files but it does for my personal case
        btxFile.write(open(f"image-{suffix}.gbapal", "rb").read())

    os.remove(f"image-{suffix}.4bpp")
    os.remove(f"image-{suffix}.gbapal")

    # recalculate the total size stuff at the end just to make sure everything works
    btxFile.seek(0, 2) # end of file just to make sure
    totalSize = btxFile.tell()
    palSize = totalSize - paletteOffset
    write_field(btxFile, TEXOffset + 4, totalSize - TEXOffset, 4)
    write_field(btxFile, TEXOffset + 0x30, int(palSize / 8), 4) # size of palette info in 8-byte blocks it seems
    write_field(btxFile, 8, totalSize, 4)

    btxFile.close()


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
    /* 0x1E */ public ushort textCompressedInfo_offset; // see textInfo_offset
    /* 0x20 */ public uint padding4;
    /* 0x24 */ public uint textCompressedData_offset;
    /* 0x28 */ public uint textCompressedInfoData_offset; // see textCompressedData_offset
    /* 0x2C */ public uint padding5;
    /* 0x30 */ public uint paletteData_size;
    /* 0x34 */ public uint paletteInfo_offset;
    /* 0x38 */ public uint paletteData_offset; // see textCompressedData_offset
}
"""

# so this is all that is really necessary to get to png!
def dump_btx_to_png_and_mappings():
    btxFile = open(btxFilename, "rb")

    headerMagic = read_field(btxFile, 0, 4)
    if (headerMagic != 0x30585442):
        headerMagic = chr(read_field(btxFile, 0, 1)) + chr(read_field(btxFile, 1, 1)) + chr(read_field(btxFile, 2, 1)) + chr(read_field(btxFile, 3, 1))
        print(f"Error: BTX file is not a valid btx--header magic is {headerMagic}, not BTX0")
        return

    totalSize = read_field(btxFile, 0x8, 2)
    TEXOffset = read_field(btxFile, 0x10, 4)

    textureOffset = TEXOffset + read_field(btxFile, TEXOffset + 0x14, 4)
    textInfoOffset = TEXOffset + read_field(btxFile, TEXOffset + 0xE, 2)
    palInfoOffset = TEXOffset + read_field(btxFile, TEXOffset + 0x34, 4)
    palOffset = TEXOffset + read_field(btxFile, TEXOffset + 0x38, 4)

# grab textureInfo
    numObjs = read_field(btxFile, textInfoOffset + 1, 1)
    propertiesOffset = textInfoOffset + 4 + read_field(btxFile, textInfoOffset + 6, 2)
    textStringOffset = propertiesOffset + 8 * numObjs
    textureInfo = {}

    for i in range(0, numObjs):
        textureInfo[i] = TextureInfo(btxFile, propertiesOffset + i*8)
        textureInfo[i].setName(btxFile, textStringOffset + i*16)
        textureInfo[i].setUnkBlock(btxFile, 0x5C + 4*i)

# palette info stuff yay
    numObjs = read_field(btxFile, palInfoOffset + 1, 1)
    propertiesOffset = palInfoOffset + 0xC
    textStringOffset = propertiesOffset + 4 + (8 * numObjs)
    paletteInfo = {}

    for i in range(0, numObjs):
        paletteInfo[i] = PaletteInfo(btxFile, propertiesOffset + i*4)
        paletteInfo[i].offset = read_field(btxFile, textStringOffset - 4*numObjs + 4*i, 4)
        paletteInfo[i].setName(btxFile, textStringOffset + i*16)

    if ".png" in pngFilename:
        metadataStr = pngFilename[:(-1 * len(".png"))]
    else:
        metadataStr = pngFilename
    metadata = open(metadataStr + ".json", "w")
    metadata.write("{\n\t\"frames\": {\n")
    for i in range(0, len(textureInfo)):
        metadata.write(f"\t\t\"{textureInfo[i].name}\": ")
        metadata.write("{\n")
        metadata.write(f"\t\t\t\"frame\": {int(textureInfo[i].imgOffset / (textureInfo[i].width * textureInfo[i].height / 16))},\n")
        # params will be derived from everything else
        # width2 is always just width
        metadata.write(f"\t\t\t\"coordTrans\": {textureInfo[i].coordTrans},\n")
        metadata.write(f"\t\t\t\"color0\": {textureInfo[i].color0},\n")
        metadata.write(f"\t\t\t\"format\": {textureInfo[i].format},\n")
        metadata.write(f"\t\t\t\"height\": {textureInfo[i].height},\n")
        metadata.write(f"\t\t\t\"width\": {textureInfo[i].width},\n")
        metadata.write(f"\t\t\t\"flipY\": {textureInfo[i].flipY},\n")
        metadata.write(f"\t\t\t\"flipX\": {textureInfo[i].flipX},\n")
        metadata.write(f"\t\t\t\"repeatY\": {textureInfo[i].repeatY},\n")
        metadata.write(f"\t\t\t\"repeatX\": {textureInfo[i].repeatX},\n")
        metadata.write(f"\t\t\t\"unkBlockUnk0\": {textureInfo[i].unkBlockUnk0},\n")
        metadata.write(f"\t\t\t\"unkBlockUnk1\": {textureInfo[i].unkBlockUnk1},\n")
        metadata.write(f"\t\t\t\"unk0\": {textureInfo[i].unk0},\n")
        metadata.write(f"\t\t\t\"unk1\": {textureInfo[i].unk1},\n")
        metadata.write(f"\t\t\t\"unk2\": {textureInfo[i].unk2}\n")
        if (i != (len(textureInfo) - 1)):
            metadata.write("\t\t},\n")
        else:
            metadata.write("\t\t}\n\t},\n")

    metadata.write("\t\"palettes\": {\n")

    for i in range(0, len(paletteInfo)):
        offset = int(paletteInfo[i].offset / 4)
        offsetAlreadyUsed = 0xFF
        for j in range(0, i):
            if int(paletteInfo[j].offset / 4) == offset:
                offsetAlreadyUsed = j
                break
        metadata.write(f"\t\t\"{paletteInfo[i].name}\": ")
        metadata.write("{\n")
        metadata.write(f"\t\t\t\"offset\": {offset},\n")
        metadata.write(f"\t\t\t\"unk0\": {paletteInfo[i].unk0},\n")
        metadata.write(f"\t\t\t\"unk1\": {paletteInfo[i].unk1},\n")
        if (offsetAlreadyUsed != 0xFF):
            metadata.write(f"\t\t\t\"fileName\": \"{paletteInfo[offsetAlreadyUsed].name}.pal\"\n")
        else:
            metadata.write(f"\t\t\t\"fileName\": \"{paletteInfo[i].name}.pal\"\n")
        if i != (len(paletteInfo) - 1):
            metadata.write("\t\t},\n")
        else:
            metadata.write("\t\t}\n\t}\n}\n")
    metadata.close()

# finally read data
    btxFile.seek(textureOffset, 0)
    texture4bpp = btxFile.read(palOffset - textureOffset)

    suffix = str(random.randint(0, 65535))
    while (os.path.exists(f"image-{suffix}.4bpp")):
        suffix = str(random.randint(0, 65535))

    btxFile.seek(palOffset, 0)
    gbapal = btxFile.read(totalSize - palOffset)
    for i in range(0, len(paletteInfo)):
        offset = int(paletteInfo[i].offset / 4)
        offsetAlreadyUsed = i
        for j in range(0, i):
            if int(paletteInfo[j].offset / 4) == offset:
                offsetAlreadyUsed = j
                break
        if (offsetAlreadyUsed != i):
            open(f"{metadataStr + '-' + paletteInfo[i].name}.gbapal", "wb").write(gbapal[(0x20 * offset):(0x20 * (offset+1))])
            subprocess.run([GFX, f"{metadataStr + '-' + paletteInfo[i].name}.gbapal", f"{metadataStr + '-' + paletteInfo[offsetAlreadyUsed].name}.pal"])
            os.remove(f"{metadataStr + '-' + paletteInfo[i].name}.gbapal")
        else:
            open(f"{metadataStr + '-' + paletteInfo[i].name}.gbapal", "wb").write(gbapal[(0x20 * offset):(0x20 * (offset+1))])
            subprocess.run([GFX, f"{metadataStr + '-' + paletteInfo[i].name}.gbapal", f"{metadataStr + '-' + paletteInfo[i].name}.pal"])
            os.remove(f"{metadataStr + '-' + paletteInfo[i].name}.gbapal")

    btxFile.close()

    open(f"image-{suffix}.4bpp", "wb").write(texture4bpp)
    #if len(gbapal) > 0x20:
    #    open(f"image-{suffix}.gbapal", "wb").write(gbapal[0x20:0x40])
    #else:
    #    open(f"image-{suffix}.gbapal", "wb").write(gbapal[:0x20])
    open(f"image-{suffix}.gbapal", "wb").write(gbapal[:0x20])

    try:
        subprocess.run([GFX, f"image-{suffix}.4bpp", pngFilename, "-palette", f"image-{suffix}.gbapal", "-notiles", "-width", str(textureInfo[0].width2 / 8)])
    except KeyError:
        print(pngFilename, textureInfo, len(textureInfo))



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
        build_btx_from_png_and_mappings()
