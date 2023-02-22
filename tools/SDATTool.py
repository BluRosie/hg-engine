#!/usr/bin/python3

import os
import hashlib
import time
import argparse
import json
from shutil import copyfile

# SDAT-Tool by FroggestSpirit
version = "1.2.1"
# Unpacks and builds SDAT files
# Make backups, this can overwrite files without confirmation

LONG = -4
SHORT = -2
BYTE = -1
SEQ = 0
SEQARC = 1
BANK = 2
WAVARC = 3
PLAYER = 4
GROUP = 5
PLAYER2 = 6
STRM = 7
FILE = 8

itemString = (
    "SEQ",
    "SEQARC",
    "BANK",
    "WAVARC",
    "PLAYER",
    "GROUP",
    "PLAYER2",
    "STRM",
    "FILE"
)

infoBlockGroup = ["seqInfo", "seqarcInfo", "bankInfo", "wavarcInfo", "playerInfo", "groupInfo", "player2Info", "strmInfo"]
infoBlockGroupType = ["SEQInfo", "SEQARCInfo", "BANKInfo", "WAVARCInfo", "PLAYERInfo", "GROUPInfo", "PLAYER2Info", "STRMInfo"]
infoBlockGroupFile = ["seqInfo", "seqarcInfo", "bankInfo", "wavarcInfo", "strmInfo"]

class MyEncoder(json.JSONEncoder):
    def default(self, o):
        return o.__dict__

class InfoBlock:
    class SEQInfo:
        def __init__(self, name, dict=None):
            if dict:
                self.name = dict["name"]
                if self.name != "":
                    self.fileName = dict["fileName"]
                    self.unkA = dict["unkA"]
                    self.bnk = dict["bnk"]
                    self.vol = dict["vol"]
                    self.cpr = dict["cpr"]
                    self.ppr = dict["ppr"]
                    self.ply = dict["ply"]
                    self.unkB = dict["unkB"]
            else:
                self.name = name
                if self.name != "":
                    self.fileName = read_filename()
                    self.unkA = read_short(None)
                    self.bnk = read_item_name(BANK)
                    self.vol = read_byte(None)
                    self.cpr = read_byte(None)
                    self.ppr = read_byte(None)
                    self.ply = read_item_name(PLAYER)
                    self.unkB = [None] * 2
                    for i in range(2):
                        self.unkB[i] = read_byte(None)
        def write(self):
            if self.name != "":
                append_short(names[FILE].index(self.fileName))
                append_short(self.unkA)
                append_short([i.name for i in infoBlock.bankInfo].index(self.bnk))
                append_byte(self.vol)
                append_byte(self.cpr)
                append_byte(self.ppr)
                append_byte([i.name for i in infoBlock.playerInfo].index(self.ply))
                for i in range(2):
                    append_byte(self.unkB[i])
    class SEQARCInfo:
        def __init__(self, name, dict=None):
            if dict:
                self.name = dict["name"]
                if self.name != "":
                    self.fileName = dict["fileName"]
                    self.unkA = dict["unkA"]
                    self.zippedName = dict["zippedName"]
            else:
                self.name = name
                if self.name != "":
                    self.fileName = read_filename()
                    self.unkA = read_short(None)
                    self.zippedName = None
        def write(self):
            if self.name != "":
                append_short(names[FILE].index(self.fileName))
                append_short(self.unkA)
    class BANKInfo:
        def __init__(self, name, dict=None, blank=False):
            if dict:
                self.name = dict["name"]
                if self.name != "":
                    self.fileName = dict["fileName"]
                    self.unkA = dict["unkA"]
                    self.wa = dict["wa"]
            else:
                self.name = name
                if self.name != "":
                    self.fileName = read_filename()
                    self.unkA = read_short(None)
                    self.wa = [""] * 4
                    for i in range(4):
                        self.wa[i] = read_item_name(WAVARC)
            if blank:
                self.name = None
                self.fileName = None
                self.unkA = None
                self.wa = [""] * 4
        def write(self):
            if self.name != "":
                append_short(names[FILE].index(self.fileName))
                append_short(self.unkA)
                for i in range(4):
                    if(self.wa[i] == ""):
                        append_short(0xFFFF)
                    else:
                        append_short([i.name for i in infoBlock.wavarcInfo].index(self.wa[i]))
    class WAVARCInfo:
        def __init__(self, name, dict=None, blank=False):
            if dict:
                self.name = dict["name"]
                if self.name != "":
                    self.fileName = dict["fileName"]
                    self.unkA = dict["unkA"]
            else:
                self.name = name
                if self.name != "":
                    self.fileName = read_filename()
                    self.unkA = read_short(None)
            if blank:
                self.name = None
                self.fileName = None
                self.unkA = None
        def write(self):
            if self.name != "":
                append_short(names[FILE].index(self.fileName))
                append_short(self.unkA)
    class PLAYERInfo:
        def __init__(self, name, dict=None):
            if dict:
                self.name = dict["name"]
                if self.name != "":
                    self.unkA = dict["unkA"]
                    self.padding = dict["padding"]
                    self.unkB = dict["unkB"]
            else:
                self.name = name
                if self.name != "":
                    self.unkA = read_byte(None)
                    self.padding = [None] * 3
                    for i in range(3):
                        self.padding[i] = read_byte(None)
                    self.unkB = read_long(None)
        def write(self):
            if self.name != "":
                append_byte(self.unkA)
                for i in range(3):
                    append_byte(self.padding[i])
                append_long(self.unkB)
    class GROUPInfo:
        def __init__(self, name, dict=None):
            class SubGROUP:
                def __init__(self, dict=None):
                    if dict:
                        self.type = dict["type"]
                        self.entry = dict["entry"]
                    else:
                        self.type = read_long(None)
                        self.entry = read_long(None)
            if dict:
                self.name = dict["name"]
                if self.name != "":
                    self.count = dict["count"]
                    self.subGroup = []
                    for i in range(len(dict["subGroup"])):
                        self.subGroup.append(SubGROUP(dict=dict["subGroup"][i]))
            else:
                self.name = name
                if self.name != "":
                    self.count = read_long(None)
                    self.subGroup = [None] * self.count
                    for i in range(self.count):
                        self.subGroup[i] = SubGROUP()
        def write(self):
            if self.name != "":
                append_long(self.count)
                for i in range(self.count):
                    append_long(self.subGroup[i].type)
                    append_long(self.subGroup[i].entry)
    class PLAYER2Info:
        def __init__(self, name, dict=None):
            if dict:
                self.name = dict["name"]
                if self.name != "":
                    self.count = dict["count"]
                    self.v = dict["v"]
                    self.reserved = dict["reserved"]
            else:
                self.name = name
                if self.name != "":
                    self.count = read_byte(None)
                    self.v = [None] * 16
                    for i in range(16):
                        self.v[i] = read_byte(None)
                    self.reserved = [None] * 7
                    for i in range(7):
                        self.reserved[i] = read_byte(None)
        def write(self):
            if self.name != "":
                append_byte(self.count)
                for i in range(16):
                    append_byte(self.v[i])
                for i in range(7):
                    append_byte(self.reserved[i])
    class STRMInfo:
        def __init__(self, name, dict=None):
            if dict:
                self.name = dict["name"]
                if self.name != "":
                    self.fileName = dict["fileName"]
                    self.unkA = dict["unkA"]
                    self.vol = dict["vol"]
                    self.pri = dict["pri"]
                    self.ply = dict["ply"]
                    self.reserved = dict["reserved"]
            else:
                self.name = name
                if self.name != "":
                    self.fileName = read_filename()
                    self.unkA = read_short(None)
                    self.vol = read_byte(None)
                    self.pri = read_byte(None)
                    self.ply = read_byte(None)
                    self.reserved = [None] * 5
                    for i in range(5):
                        self.reserved[i] = read_byte(None)
        def write(self):
            if self.name != "":
                append_short(names[FILE].index(self.fileName))
                append_short(self.unkA)
                append_byte(self.vol)
                append_byte(self.pri)
                append_byte(self.ply)
                for i in range(5):
                    append_byte(self.reserved[i])
    def __init__(self):
        for group in infoBlockGroup:
            exec(f"self.{group} = []")
    def load(self, infile):
        for index, group in enumerate(infoBlockGroup):
            exec(f"""for i in range(len(infile['{group}'])):
                self.{group}.append(self.{infoBlockGroupType[index]}(None, dict=infile['{group}'][i]))""")

    def write(self, type, index=-1):
        if index == -1:
            for i in range(len(type)):
                type[i].write()
        else:
            type[index].write()
    def replace_file(self, type, oldFile, newFile):
        exec(f"""for item in self.{infoBlockGroup[eval(type)]}:
            if item.name != "":
                if item.fileName == oldFile:
                    item.fileName = newFile""")

class FileBlock:
    class File:
        def __init__(self, name, type, dict=None):
            if dict:
                self.name = dict["name"]
                self.type = dict["type"]
                self.MD5 = dict["MD5"]
                if "subFile" in dict:
                    self.subFile = dict["subFile"]
            else:
                self.name = name
                self.type = type
                self.MD5 = None
    def __init__(self):
        self.file = []
    def load(self, infile):
        for i in range(len(infile["file"])):
            self.file.append(self.File(None, None, dict=infile["file"][i]))


itemExt = (
    ".sseq",
    ".ssar",
    ".sbnk",
    ".swar",
    "",
    "",
    "",
    ".strm"
)

itemHeader = (
    b'SSEQ',
    b'SSAR',
    b'SBNK',
    b'SWAR',
    "",
    "",
    "",
    b'STRM'
)

sseqNote = (
    "C_",
    "C#",
    "D_",
    "D#",
    "E_",
    "F_",
    "F#",
    "G_",
    "G#",
    "A_",
    "A#",
    "B_",
)

sseqCmdName = (
    "Delay",  # 0x80
    "Instrument",  # 0x81
    "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
    "",
    "Pointer",  # 0x93
    "Jump",  # 0x94
    "Call",  # 0x95
    "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
    "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
    "", "", "", "", "", "", "", "", "", "",
    "Pan",  # 0xC0
    "Volume",  # 0xC1
    "MasterVolume",  # 0xC2
    "Transpose",  # 0xC3
    "PitchBend",  # 0xC4
    "PitchBendRange",  # 0xC5
    "Priority",  # 0xC6
    "Poly",  # 0xC7
    "Tie",  # 0xC8
    "PortamentoControll",  # 0xC9
    "ModDepth",  # 0xCA
    "ModSpeed",  # 0xCB
    "ModType",  # 0xCC
    "ModRange",  # 0xCD
    "PortamentoOnOff",  # 0xCE
    "PortamentoTime",  # 0xCF
    "Attack",  # 0xD0
    "Decay",  # 0xD1
    "Sustain",  # 0xD2
    "Release",  # 0xD3
    "LoopStart",  # 0xD4
    "Expression",  # 0xD5
    "Print",  # 0xD6
    "", "", "", "", "", "", "", "", "",
    "ModDelay",  # 0xE0
    "Tempo",  # 0xE1
    "",
    "PitchSweep",  # 0xE3
    "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
    "", "", "", "", "", "", "", "",
    "LoopEnd",  # 0xFC
    "Return\n",  # 0xFD
    "TracksUsed",  # 0xFE
    "TrackEnd\n"  # 0xFF
)

sseqCmdArgs = (  # -1 for variable length
    -1,  # 0x80
    -1,  # 0x81
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0,
    4,  # 0x93
    3,  # 0x94
    3,  # 0x95
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    1,  # 0xC0
    1,  # 0xC1
    1,  # 0xC2
    1,  # 0xC3
    1,  # 0xC4
    1,  # 0xC5
    1,  # 0xC6
    1,  # 0xC7
    1,  # 0xC8
    1,  # 0xC9
    1,  # 0xCA
    1,  # 0xCB
    1,  # 0xCC
    1,  # 0xCD
    1,  # 0xCE
    1,  # 0xCF
    1,  # 0xD0
    1,  # 0xD1
    1,  # 0xD2
    1,  # 0xD3
    1,  # 0xD4
    1,  # 0xD5
    1,  # 0xD6
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    2,  # 0xE0
    2,  # 0xE1
    0,
    2,  # 0xE3
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0,
    0,  # 0xFC
    0,  # 0xFD
    2,  # 0xFE
    0  # 0xFF
)

itemOffset = [0, 0, 0, 0, 0, 0, 0, 0, 0]
itemSymbOffset = [0, 0, 0, 0, 0, 0, 0, 0, 0]
itemCount = [0, 0, 0, 0, 0, 0, 0, 0, 0]
names = [[], [], [], [], [], [], [], [], []]
fileType = []
fileNameID = []
progUsed = []
progUsedName = []

SDAT = bytearray()
SDATPos = 0

def read_long(pos):
    global SDATPos
    if pos:
        return int.from_bytes(SDAT[pos:pos + 4], 'little')
    SDATPos += 4
    return int.from_bytes(SDAT[SDATPos - 4:SDATPos], 'little')

def read_short(pos):
    global SDATPos
    if pos:
        return int.from_bytes(SDAT[pos:pos + 2], 'little')
    SDATPos += 2
    return int.from_bytes(SDAT[SDATPos - 2:SDATPos], 'little')

def read_byte(pos):
    global SDATPos
    if pos:
        return int.from_bytes(SDAT[pos:pos + 1], 'little')
    SDATPos += 1
    return int.from_bytes(SDAT[SDATPos - 1:SDATPos], 'little')

def read_item_name(listItem):
    global SDATPos
    if read_short(SDATPos) < len(names[listItem]):
        retString = names[listItem][read_short(SDATPos)]
    else:
        if read_short(SDATPos) == 65535 and listItem == WAVARC:  # unused wavarc slot
            retString = ""
        else:
            retString = f"{itemString[listItem]}_{read_short(SDATPos)}"
    SDATPos += 2
    if listItem == PLAYER:
        SDATPos -= 1
    return retString

def read_filename():
    tempID = read_short(None)
    matchID = 0
    done = False
    while matchID < len(fileNameID) and not done:
        if fileNameID[matchID] == tempID:
            done = True
        else:
            matchID += 1
    return names[FILE][matchID] + itemExt[fileType[matchID]]

def append_long(x):  # append a 32bit value to SDAT LSB first
    global SDAT
    SDAT += x.to_bytes(4, 'little')

def append_short(x):  # append a 16bit value to SDAT LSB first
    global SDAT
    SDAT += x.to_bytes(2, 'little')

def append_byte(x):  # append an 8bit value to SDAT
    global SDAT
    SDAT += x.to_bytes(1, 'little')

def write_long(loc, x):  # write a 32bit value to SDAT at position loc LSB first
    global SDAT
    SDAT[loc:loc + 4] = x.to_bytes(4, 'little')

def write_short(loc, x):  # write a 16bit value to SDAT at position loc LSB first
    global SDAT
    SDAT[loc:loc + 2] = x.to_bytes(2, 'little')

def write_byte(loc, x):  # write an 8bit value to SDAT at position loc
    global SDAT
    SDAT[loc] = x.to_bytes(1, 'little')

def get_string():
    global SDAT, SDATPos
    retString = ""
    if SDATPos <= 0x40:
        return ""
    i = SDAT[SDATPos]
    SDATPos += 1
    while i > 0:
        retString += chr(i)
        i = SDAT[SDATPos]
        SDATPos += 1
    return retString

# Main
parser = argparse.ArgumentParser(description=f"SDAT-Tool {version}: Unpack/Pack NDS SDAT Files")
parser.add_argument("SDATfile")
parser.add_argument("folder", nargs="?")
mode_grp = parser.add_mutually_exclusive_group(required=True)
mode_grp.add_argument("-u", "--unpack", dest="mode", action="store_false")
mode_grp.add_argument("-b", "--build", dest="mode", action="store_true")
parser.add_argument("-o", "--optimize", dest="optimize", action="store_true", help="Remove unused and duplicate files")
parser.add_argument("-os", "--optimize_size", dest="optimizeSize", action="store_true", help="Build Optimized for filesize")
parser.add_argument("-or", "--optimize_ram", dest="optimizeRAM", action="store_true", help="Build Optimized for RAM")
parser.add_argument("-ns", "--noSymbBlock", dest="noSymbBlock", action="store_true", help="Build without a SymbBlock")
args = parser.parse_args()

mode = args.mode
infileArg = args.SDATfile
outfileArg = args.folder
optimize = args.optimize
optimizeSize = args.optimizeSize
optimizeRAM = args.optimizeRAM
if optimizeSize or optimizeRAM:
    optimize = True
skipSymbBlock = args.noSymbBlock

if optimizeRAM & optimizeSize:
    raise Exception("Cannot optimize for size and RAM")
if infileArg.lower().find(".sdat") == -1:
    raise Exception("File is not a SDAT file")
if not outfileArg:
    outfileArg = infileArg.lower().replace(".sdat","")
if infileArg.lower() == outfileArg.lower():
    raise Exception("Input and output cannot match")


ts = time.time()

if not mode:  # Unpack
    print("Unpacking...")
    if not os.path.exists(outfileArg):
        os.makedirs(outfileArg)
    with open(infileArg, "rb") as infile:
        SDAT = bytearray(infile.read())
    fileSize = len(SDAT)
    SDATSize = read_long(8)
    headerSize = read_short(12)
    blocks = read_short(14)
    SDATPos = 16
    if blocks == 4:
        symbOffset = read_long(SDATPos)
        symbSize = read_long(SDATPos + 4)
        SDATPos += 8
    infoOffset = read_long(SDATPos)
    infoSize = read_long(SDATPos + 4)
    SDATPos += 8
    fatOffset = read_long(SDATPos)
    fatSize = read_long(SDATPos + 4)
    SDATPos += 8
    fileOffset = read_long(SDATPos)
    fileSize = read_long(SDATPos + 4)

    # Symb Block
    seqarcName = []
    seqarcNameID = []
    if blocks == 4:
        SDATPos = symbOffset + 8
        for i in range(8):
            itemSymbOffset[i] = read_long(SDATPos + (i * 4)) + symbOffset
        for i in range(8):
            if i != SEQARC:
                SDATPos = itemSymbOffset[i]
                entries = read_long(SDATPos)
                for ii in range(entries):
                    SDATPos = read_long(itemSymbOffset[i] + 4 + (ii * 4)) + symbOffset
                    names[i].append(get_string())
            else:
                SDATPos = itemSymbOffset[i]
                entries = read_long(SDATPos)
                for ii in range(entries):
                    SDATPos = read_long(itemSymbOffset[i] + 4 + (ii * 8)) + symbOffset
                    names[i].append(get_string())
                    SDATPos = read_long(itemSymbOffset[i] + 8 + (ii * 8)) + symbOffset
                    SEQARCSubOffset = SDATPos
                    count = read_long(SDATPos)
                    for x in range(count):
                        SDATPos = read_long(SEQARCSubOffset + 4 + (x * 4)) + symbOffset
                        if entries > 0:
                            seqarcName.append(get_string())
                            seqarcNameID.append(ii)                            

    # Info Block
    infoBlock = InfoBlock()
    SDATPos = infoOffset + 8
    for i in range(8):
        itemOffset[i] = read_long(SDATPos + (i * 4)) + infoOffset
    for i in range(8):
        SDATPos = itemOffset[i]
        entries = read_long(SDATPos)
        for ii in range(entries):
            SDATPos = read_long(itemOffset[i] + 4 + (ii * 4)) + infoOffset
            if SDATPos - infoOffset > 0x40:
                count = read_long(SDATPos)  # count is only used for group
                if blocks == 4 and ii < len(names[i]):
                    iName = names[i][ii]
                else:
                    iName = f"{itemString[i]}_{ii}"
                if i in (SEQ, SEQARC, BANK, WAVARC, STRM):  # These have files
                    fileType.append(i)
                    fileNameID.append(read_short(SDATPos))
                    names[FILE].append(iName)
            else:
                iName = ""
            exec(f"infoBlock.{infoBlockGroup[i]}.append(infoBlock.{infoBlockGroupType[i]}(iName))")
            if i == SEQARC:
                infoBlock.seqarcInfo[-1].zippedName = [seqarcName[id] for id, num in enumerate(seqarcNameID) if num == ii]
    with open(f"{outfileArg}/InfoBlock.json", "w") as outfile:
        outfile.write(json.dumps(infoBlock, cls=MyEncoder, indent=4)  # make the JSON file pretty at the expense of ugly code
            .replace(f"\n{' '*16}","")
            .replace(f"\n{' '*12}]","]")
            .replace(f"{{{' '*4}",f"\n{' '*16}{{")
            .replace(f",{' '*4}",", ")
            .replace(f',"',f",\n{' '*16}\"")
            .replace(f'["',f"[\n{' '*16}\"")
            .replace(f'{{\n{" "*12}"name": ""\n{" "*8}}},',f'{{"name": ""}},'))

    # FAT Block / File Block
    fileBlock = FileBlock()
    SDATPos = fatOffset + 8
    entries = read_long(SDATPos)
    if not os.path.exists(f"{outfileArg}/Files"):
        os.makedirs(f"{outfileArg}/Files")
    if not os.path.exists(f"{outfileArg}/Files/{itemString[SEQ]}"):
        os.makedirs(f"{outfileArg}/Files/{itemString[SEQ]}")
    if not os.path.exists(f"{outfileArg}/Files/{itemString[SEQARC]}"):
        os.makedirs(f"{outfileArg}/Files/{itemString[SEQARC]}")
    if not os.path.exists(f"{outfileArg}/Files/{itemString[BANK]}"):
        os.makedirs(f"{outfileArg}/Files/{itemString[BANK]}")
    if not os.path.exists(f"{outfileArg}/Files/{itemString[WAVARC]}"):
        os.makedirs(f"{outfileArg}/Files/{itemString[WAVARC]}")
    if not os.path.exists(f"{outfileArg}/Files/{itemString[STRM]}"):
        os.makedirs(f"{outfileArg}/Files/{itemString[STRM]}")
    for i in range(entries):
        SDATPos = read_long(fatOffset + 12 + (i * 16))
        tempSize = read_long(fatOffset + 16 + (i * 16))
        done = False
        fileRefID = 0
        fileHeader = SDAT[SDATPos:(SDATPos + 4)]
        if fileHeader in itemHeader:
            tempPath = f"{outfileArg}/Files/{itemString[itemHeader.index(fileHeader)]}/unknown_{i:02}"
            tempName = f"unknown_{i:02}"
            tempExt = itemExt[itemHeader.index(fileHeader)]
            tempType = itemString[itemHeader.index(fileHeader)]
        else:
            tempPath = f"{outfileArg}/Files/unknown_{i:02}"
            tempName = f"unknown_{i:02}"
            tempExt = ""
            tempType = ""
        while fileNameID[fileRefID] != i and not done:
            fileRefID += 1
            if fileRefID >= len(fileNameID):
                fileRefID = -1
                done = True
        if fileRefID != -1:
            tempPath = f"{outfileArg}/Files/{itemString[fileType[fileRefID]]}/{names[FILE][fileRefID]}"
            tempName = names[FILE][fileRefID]
        fileBlock.file.append(FileBlock.File(f"{tempName}{tempExt}", tempType))
        if fileHeader == b'SWAR':
            numSwav = read_long(SDATPos + 0x38)
            fileBlock.file[-1].subFile = []
            if not os.path.exists(tempPath):
                os.makedirs(tempPath)
            for ii in range(numSwav):
                fileBlock.file[-1].subFile.append(f"{hex(ii).lstrip('0x').rstrip('L').zfill(2).upper()}.swav")
                swavOffset = SDATPos + read_long(SDATPos + (ii * 4) + 0x3C)
                swavLength = SDATPos + read_long(SDATPos + ((ii + 1) * 4) + 0x3C)
                if ii + 1 == numSwav:
                    swavLength = SDATPos + tempSize
                swavSize = swavLength - swavOffset
                with open(f"{tempPath}/{hex(ii).lstrip('0x').rstrip('L').zfill(2).upper()}.swav", "wb") as outfile:
                    outfile.write(b'SWAV')  # Header
                    outfile.write(b'\xFF\xFE\x00\x01')  # magic
                    outfile.write((swavSize + 0x18).to_bytes(4, byteorder='little'))
                    outfile.write(b'\x10\x00\x01\x00')  # structure size and blocks
                    outfile.write(b'DATA')
                    outfile.write((swavSize + 0x08).to_bytes(4, byteorder='little'))
                    outfile.write(SDAT[swavOffset:swavLength])
        elif fileHeader == b'SBNK':
            numInst = read_long(SDATPos + 0x38)
            sbnkEnd = read_long(SDATPos + 0x08) + SDATPos
            with open(f"{tempPath}.txt", "w") as sbnkIDFile:
                instType = []
                instOffset = []
                instOrder = []
                instUsed = []
                lastPointer = -1  # Because some instruments will point to the same exact definition
                furthestRead = SDATPos + 0x3C + (numInst * 4)  # Because someone decided to leave in data that's not pointed to...
                for ii in range(numInst):
                    instType.append(SDAT[SDATPos + 0x3C + (ii * 4)])
                    instOffset.append(read_short(SDATPos + 0x3C + (ii * 4) + 1))
                    instOrder.append(-1)
                    instUsed.append(False)
                for ii in range(numInst):  # get the order the data is stored for 1:1 builds
                    lowestPointer = 0xFFFFFFFF
                    lowestPointerID = -1
                    for x in range(numInst):
                        if not instUsed[x]:
                            if lowestPointer > instOffset[x]:
                                lowestPointer = instOffset[x]
                                lowestPointerID = x
                    instOrder[ii] = lowestPointerID
                    instUsed[lowestPointerID] = True
                for ii in range(numInst):
                    if instOffset[instOrder[ii]] == lastPointer and lastPointer > 0:
                        sbnkIDFile.write(str(instOrder[ii]))
                        sbnkIDFile.write(", SameAsAbove\n")
                    elif instType[instOrder[ii]] == 0:
                        sbnkIDFile.write(str(instOrder[ii]))
                        sbnkIDFile.write(", NULL\n")
                    elif instType[instOrder[ii]] < 16:
                        if furthestRead < SDATPos + instOffset[instOrder[ii]]:
                            sbnkIDFile.write("Unused")
                            while furthestRead < SDATPos + instOffset[instOrder[ii]]:
                                sbnkIDFile.write(f", {SDAT[furthestRead]}")
                                furthestRead += 1
                            sbnkIDFile.write("\n")
                        sbnkIDFile.write(str(instOrder[ii]))
                        if instType[instOrder[ii]] == 1:
                            sbnkIDFile.write(", Single")
                        elif instType[instOrder[ii]] == 2:
                            sbnkIDFile.write(", PSG1")
                        elif instType[instOrder[ii]] == 3:
                            sbnkIDFile.write(", PSG2")
                        elif instType[instOrder[ii]] == 4:
                            sbnkIDFile.write(", PSG3")
                        else:
                            sbnkIDFile.write(f", {instType[instOrder[ii]]}")
                        sbnkIDFile.write(f", {read_short(SDATPos + instOffset[instOrder[ii]])}")
                        sbnkIDFile.write(f", {read_short(SDATPos + instOffset[instOrder[ii]] + 2)}")
                        sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 4]}")
                        sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 5]}")
                        sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 6]}")
                        sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 7]}")
                        sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 8]}")
                        sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 9]}\n")
                        if SDATPos + instOffset[instOrder[ii]] + 9 > furthestRead:
                            furthestRead = SDATPos + instOffset[instOrder[ii]] + 10
                    elif instType[instOrder[ii]] == 16:
                        if furthestRead < SDATPos + instOffset[instOrder[ii]]:
                            sbnkIDFile.write("Unused")
                            while furthestRead < SDATPos + instOffset[instOrder[ii]]:
                                sbnkIDFile.write(f", {SDAT[furthestRead]}")
                                furthestRead += 1
                            sbnkIDFile.write("\n")
                        sbnkIDFile.write(str(instOrder[ii]))
                        lowNote = SDAT[SDATPos + instOffset[instOrder[ii]]]
                        highNote = SDAT[SDATPos + instOffset[instOrder[ii]] + 1]
                        sbnkIDFile.write(f", Drums, {lowNote}, {highNote}\n")
                        x = 0
                        while read_short(SDATPos + instOffset[instOrder[ii]] + 2 + (x * 12)) == 1 and read_short(SDATPos + instOffset[instOrder[ii]] + 6 + (x * 12)) < 4:
                            sbnkIDFile.write(f"\t{read_short(SDATPos + instOffset[instOrder[ii]] + 2 + (x * 12))}")
                            sbnkIDFile.write(f", {read_short(SDATPos + instOffset[instOrder[ii]] + 4 + (x * 12))}")
                            sbnkIDFile.write(f", {read_short(SDATPos + instOffset[instOrder[ii]] + 6 + (x * 12))}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 8 + (x * 12)]}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 9 + (x * 12)]}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 10 + (x * 12)]}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 11 + (x * 12)]}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 12 + (x * 12)]}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 13 + (x * 12)]}\n")
                            x += 1
                        x -= 1
                        if SDATPos + instOffset[instOrder[ii]] + 13 + (x * 12) > furthestRead:
                            furthestRead = SDATPos + instOffset[instOrder[ii]] + 14 + (x * 12)
                    elif instType[instOrder[ii]] == 17:
                        if furthestRead < SDATPos + instOffset[instOrder[ii]]:
                            sbnkIDFile.write("Unused")
                            while furthestRead < SDATPos + instOffset[instOrder[ii]]:
                                sbnkIDFile.write(f", {SDAT[furthestRead]}")
                                furthestRead += 1
                            sbnkIDFile.write("\n")
                        sbnkIDFile.write(str(instOrder[ii]))
                        regions = 0
                        sbnkIDFile.write(", Keysplit")
                        for x in range(8):
                            if SDAT[SDATPos + instOffset[instOrder[ii]] + x] > 0:
                                regions += 1
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + x]}")
                        sbnkIDFile.write("\n")
                        tempOffset = SDATPos + instOffset[instOrder[ii]] + 8
                        for x in range(regions):
                            sbnkIDFile.write(f"\t{read_short(SDATPos + instOffset[instOrder[ii]] + 8 + (x * 12))}")
                            sbnkIDFile.write(f", {read_short(SDATPos + instOffset[instOrder[ii]] + 10 + (x * 12))}")
                            sbnkIDFile.write(f", {read_short(SDATPos + instOffset[instOrder[ii]] + 12 + (x * 12))}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 14 + (x * 12)]}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 15 + (x * 12)]}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 16 + (x * 12)]}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 17 + (x * 12)]}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 18 + (x * 12)]}")
                            sbnkIDFile.write(f", {SDAT[SDATPos + instOffset[instOrder[ii]] + 19 + (x * 12)]}\n")
                            if SDATPos + instOffset[instOrder[ii]] + 19 + (x * 12) > furthestRead:
                                furthestRead = SDATPos + instOffset[instOrder[ii]] + 20 + (x * 12)
                    lastPointer = instOffset[instOrder[ii]]
                if furthestRead < sbnkEnd:
                    sbnkIDFile.write("Unused")
                    while furthestRead < sbnkEnd:
                        sbnkIDFile.write(f", {SDAT[furthestRead]}")
                        furthestRead += 1
                    sbnkIDFile.write("\n")
        elif fileHeader == b'SSEQ':
            sseqSize = read_long(SDATPos + 0x14)
            sseqEnd = SDATPos + 16 + sseqSize
            SDATPos += 0x1C
            sseqStart = SDATPos

            # Run through first to calculate labels
            trackOffset = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            trackLabel = []
            trackLabelName = []
            command = SDAT[SDATPos]
            if command == 0xFE:
                usedTracks = read_short(SDATPos + 1)
                SDATPos += 3
                numTracks = 0
                curTrack = 1
                while curTrack < 16:
                    if usedTracks & curTrack:
                        numTracks += 1
                    curTrack <<= 1
            else:
                SDATPos = sseqEnd

            trackOffset[0] = SDATPos  # Workaround to place the first track header
            while SDATPos < sseqEnd:
                command = SDAT[SDATPos]
                SDATPos += 1  # temporary
                if command == 0x93:  # Track Pointer
                    trackInfo = read_long(SDATPos)
                    trackOffset[trackInfo & 0xFF] = (trackInfo >> 8) + sseqStart
                    SDATPos += 4
                elif (command == 0x94) or (command == 0x95):  # Jump or Call
                    commandArgLen = sseqCmdArgs[command - 0x80]
                    commandArg = (read_long(SDATPos) & 0xFFFFFF) + sseqStart
                    if commandArg not in trackLabel:
                        trackLabel.append(commandArg)
                        if commandArg not in trackOffset:
                            trackLabelName.append(f"Label_0x{hex(commandArg).lstrip('0x').rstrip('L').zfill(2).upper()}")
                        else:
                            trackLabelName.append(f"Track_{trackOffset.index(commandArg) + 1}")
                    SDATPos += commandArgLen
                elif command >= 0x80:
                    commandArgLen = sseqCmdArgs[command - 0x80]
                    if commandArgLen == -1:
                        for i in range(3):
                            if SDAT[SDATPos] > 0x7F:
                                SDATPos += 1
                        SDATPos += 1
                    else:
                        SDATPos += commandArgLen
                else:
                    SDATPos += 1
                    for i in range(3):
                        if SDAT[SDATPos] > 0x7F:
                            SDATPos += 1
                    SDATPos += 1


            # Re-run through the song now that the labels are defined
            SDATPos = sseqStart
            with open(f"{tempPath}.txt", "w") as sseqFile:
                command = SDAT[SDATPos]
                if command == 0xFE:
                    usedTracks = read_short(SDATPos + 1)
                    SDATPos += 3
                    numTracks = 0
                    curTrack = 1
                    while curTrack < 16:
                        if usedTracks & curTrack:
                            numTracks += 1
                        curTrack <<= 1
                else:
                    SDATPos = sseqEnd

                curTrack = 0
                trackOffset[0] = SDATPos  # Workaround to place the first track header
                while SDATPos < sseqEnd:
                    if SDATPos in trackOffset:
                        sseqFile.write(f"Track_{trackOffset.index(SDATPos) + 1}:\n")
                    elif SDATPos in trackLabel:
                        sseqFile.write(f"{trackLabelName[trackLabel.index(SDATPos)]}:\n")
                    command = SDAT[SDATPos]
                    SDATPos += 1  # temporary
                    if command == 0x93:  # Track Pointer
                        trackInfo = read_long(SDATPos)
                        trackOffset[trackInfo & 0xFF] = (trackInfo >> 8) + sseqStart
                        SDATPos += 4
                    elif command >= 0x80:
                        commandName = sseqCmdName[command - 0x80]
                        if commandName == "":
                            commandName = f"Unknown_0x{hex(command).lstrip('0x').rstrip('L').zfill(2).upper()}"
                        commandArgLen = sseqCmdArgs[command - 0x80]
                        if commandArgLen == -1:
                            commandArgLen = 1
                            commandArg = (SDAT[SDATPos] & 0x7F)
                            for i in range(3):
                                if SDAT[SDATPos] > 0x7F:
                                    commandArg <<= 7
                                    commandArg += (SDAT[SDATPos] & 0x7F)
                                    SDATPos += 1
                                    commandArgLen += 1
                            SDATPos += 1
                        else:
                            commandArgMask = 0
                            for i in range(commandArgLen):
                                commandArgMask <<= 8
                                commandArgMask += 0xFF
                            commandArg = (read_long(SDATPos) & commandArgMask)
                            SDATPos += commandArgLen
                        if commandArgLen != 0:
                            if (command == 0x94) or (command == 0x95):  # Jump or Call
                                sseqFile.write(f"\t{commandName} {trackLabelName[trackLabel.index(commandArg + sseqStart)]}\n")
                            else:
                                sseqFile.write(f"\t{commandName} {commandArg}\n")
                        else:
                            sseqFile.write(f"\t{commandName}\n")
                    else:
                        velocity = SDAT[SDATPos]
                        SDATPos += 1
                        commandArg = (SDAT[SDATPos] & 0x7F)
                        commandArgLen = 1
                        for i in range(3):
                            if SDAT[SDATPos] > 0x7F:
                                commandArg <<= 7
                                commandArg += (SDAT[SDATPos] & 0x7F)
                                SDATPos += 1
                                commandArgLen += 1
                        SDATPos += 1
                        sseqFile.write(f"\t{sseqNote[command % 12]}{int(command / 12)},{velocity},{commandArg}\n")
            SDATPos = sseqStart - 0x1C
        with open(tempPath + tempExt, "wb") as outfile:
            outfile.write(SDAT[SDATPos:(SDATPos + tempSize)])
        tempFileString = SDAT[SDATPos:(SDATPos + tempSize)]
        thisMD5 = hashlib.md5(tempFileString)
        fileBlock.file[-1].MD5 = f"{thisMD5.hexdigest()}"
    with open(f"{outfileArg}/FileBlock.json", "w") as outfile:
        outfile.write(json.dumps(fileBlock, cls=MyEncoder, indent=4))


if mode:  # Build
    if not os.path.exists(f"{outfileArg}/FileBlock.json"):
        raise Exception("Missing FileBlock.json\n")
    if not os.path.exists(f"{outfileArg}/InfoBlock.json"):
        raise Exception("Missing InfoBlock.json\n")
    print("Building...")
    blocks = 4
    if skipSymbBlock:
        blocks = 3

    with open(f"{outfileArg}/FileBlock.json", "r") as infile:
        fileBlock = FileBlock()
        fileBlock.load(json.load(infile))
    with open(f"{outfileArg}/InfoBlock.json", "r") as infile:
        infoBlock = InfoBlock()
        infoBlock.load(json.load(infile))

    if optimizeRAM:
        for i, item in enumerate(infoBlock.seqInfo):  # Check for SSEQ source files
            if item.name != "":
                fName = item.fileName
                if fName[-5:] == ".sseq":  # check for used instruments
                    if not fName in progUsedName:
                        tempInstUsed = []
                        testPath = f"{outfileArg}/Files/{itemString[SEQ]}/{fName[:-5]}.txt"
                        if not os.path.exists(testPath):
                            raise Exception(f"Missing File:{testPath}")
                        with open(testPath, "r") as sseqFile:
                            done = False
                            sseqLines = []
                            numInst = 0
                            while not done:
                                thisLine = sseqFile.readline()
                                if not thisLine:
                                    done = True
                                thisLine = thisLine.split(";")[0]  # ignore anything commented out
                                thisLine = thisLine.split("\n")[0]  # remove newline
                                if thisLine != "":
                                    sseqLines.append(thisLine)
                            for channel in range(16):
                                done = False
                                if not f"Track_{channel}:" in sseqLines:
                                    done = True
                                else:
                                    curLine = sseqLines.index(f"Track_{channel}:") + 1
                                    curInst = 0
                                    retCall = -1
                                while not done:
                                    if sseqLines[curLine].find("\t") > -1:
                                        if sseqLines[curLine] == "\tTrackEnd":
                                            done = True
                                        elif sseqLines[curLine] == "\tReturn":
                                            if retCall > -1:
                                                curLine = retCall
                                                retCall = -1
                                        elif sseqLines[curLine].replace("\t","")[:2] in sseqNote:
                                            curNote = sseqNote.index(sseqLines[curLine].replace("\t","")[:2]) + (int(sseqLines[curLine][3]) * 12)
                                            if not (curInst << 7) + curNote in tempInstUsed:
                                                tempInstUsed.append((curInst << 7) + curNote)
                                                testvar = sseqNote.index(sseqLines[curLine].replace("\t","")[:2])
                                                print(f"Adding instrument: {curInst}, Note: {curNote}, {(curInst << 7) + curNote}")
                                        elif sseqLines[curLine].replace("\t","").split(" ")[0] == "Instrument":
                                            curInst = int(sseqLines[curLine].replace("\t","").split(" ")[1])
                                        elif sseqLines[curLine].replace("\t","").split(" ")[0] == "Jump":
                                            done = True
                                        elif sseqLines[curLine].replace("\t","").split(" ")[0] == "Call":
                                            retCall = curLine
                                            t = sseqLines[curLine].replace('\t','').split(' ')[1]
                                            curLine = sseqLines.index(f"{t}:")
                                    curLine += 1
                                        
                        progUsedName.append(fName)
                        progUsed.append(tempInstUsed)
                    tempInstUsed = progUsed[progUsedName.index(fName)]
                    tempInstUsed.sort()
                    print(tempInstUsed)
                    bnkID = list(bnk.name for bnk in infoBlock.bankInfo).index(infoBlock.seqInfo[i].bnk)
                    bnkFile = infoBlock.bankInfo[bnkID].fileName
                    fileBlock.file.append(fileBlock.File(f"{item.name}.sbnk", "BANK"))
                    fileBlock.file[-1].MD5 = fileBlock.file[list(file.name for file in fileBlock.file).index(bnkFile)].MD5
                    bnkFile = bnkFile.replace(".sbnk", ".txt")
                    usedSwav = [[], [], [], []]
                    with open(f"{outfileArg}/Files/{itemString[BANK]}/{bnkFile}", "r") as sbnkIDFile:
                        done = False
                        sbnkLines = []
                        numInst = 0
                        curInst = -1
                        curInstType = -1
                        while not done:
                            thisLine = sbnkIDFile.readline()
                            if not thisLine:
                                done = True
                            thisLine = thisLine.split(";")[0]  # ignore anything commented out
                            thisLine = thisLine.split("\n")[0]  # remove newline
                            if thisLine != "" and thisLine.find("Unused") == -1:
                                if thisLine.find("\t") == -1:  # Don't count unused or sub definitions
                                    thisLine = thisLine.replace(" ","").split(",")
                                    curInst = int(thisLine[0])
                                    if curInst in ((prog >> 7) for prog in tempInstUsed):
                                        print(f"Found {curInst}")
                                        if thisLine[1] == "Single":
                                            curInstType = -1
                                            if not int(thisLine[2]) in usedSwav[int(thisLine[3])]:
                                                usedSwav[int(thisLine[3])].append(int(thisLine[2]))
                                            thisLine[2] = str(usedSwav[int(thisLine[3])].index(int(thisLine[2])))
                                            sbnkLines.append(", ".join(thisLine))
                                        elif thisLine[1] == "Drums":
                                            curInstType = 0
                                            drumRange = [int(thisLine[2]), int(thisLine[3])]
                                            sbnkLines.append(", ".join(thisLine))
                                        elif thisLine[1] == "Keysplit":
                                            curInstType = 1
                                            keySplits = [-1, int(thisLine[2]), int(thisLine[3]), int(thisLine[4]), int(thisLine[5]), int(thisLine[6]), int(thisLine[7]), int(thisLine[8]), int(thisLine[9])]
                                            sbnkLines.append(", ".join(thisLine))
                                    else:
                                        sbnkLines.append(f"{thisLine[0]}, NULL")
                                        curInstType = -1
                                elif thisLine.find("\t") != -1:
                                    thisLine = thisLine.replace(" ","").split(",")
                                    if curInstType == 0:  # Drums
                                        if (curInst << 7) + drumRange[0] in tempInstUsed:
                                            if not int(thisLine[1]) in usedSwav[int(thisLine[2])]:
                                                usedSwav[int(thisLine[2])].append(int(thisLine[1]))
                                            thisLine[1] = str(usedSwav[int(thisLine[2])].index(int(thisLine[1])))
                                        else:
                                            thisLine[1] = "0"
                                        sbnkLines.append(", ".join(thisLine))
                                        drumRange[0] += 1
                                    elif curInstType == 1:  # Keysplit
                                        found = False
                                        print(f"Checking inst {curInst} keys {keySplits[0] + 1} - {keySplits[1]}")
                                        for split in range(keySplits[1] - keySplits[0]):
                                            if (curInst << 7) + split + keySplits[0] + 1 in tempInstUsed:
                                                found = True
                                        if found:
                                            print(f"Found")
                                            if not int(thisLine[1]) in usedSwav[int(thisLine[2])]:
                                                usedSwav[int(thisLine[2])].append(int(thisLine[1]))
                                            thisLine[1] = str(usedSwav[int(thisLine[2])].index(int(thisLine[1])))
                                        else:
                                            print(f"Not Found")
                                            thisLine[1] = "0"
                                        sbnkLines.append(", ".join(thisLine))
                                        del keySplits[0]
                                else:
                                    sbnkLines.append(thisLine)
                    with open(f"{outfileArg}/Files/{itemString[BANK]}/{item.name}.txt", "w") as sbnkIDFile:
                        for line in sbnkLines:
                            sbnkIDFile.write(f"{line}\n")

                    infoBlock.seqInfo[i].bnk = f"BANK_{item.name}"
                    infoBlock.bankInfo.append(infoBlock.BANKInfo("", blank=True))
                    infoBlock.bankInfo[-1].name = f"BANK_{item.name}"
                    infoBlock.bankInfo[-1].fileName = f"{item.name}.sbnk"
                    infoBlock.bankInfo[-1].unkA = infoBlock.bankInfo[bnkID].unkA
                    for j in range(4):
                        if len(usedSwav[j]) > 0:
                            if infoBlock.bankInfo[bnkID].wa[j] != "":
                                swarID = list(swar.name for swar in infoBlock.wavarcInfo).index(infoBlock.bankInfo[bnkID].wa[j])
                                swarFileID = list(swar.name for swar in fileBlock.file).index(infoBlock.wavarcInfo[swarID].fileName)
                                infoBlock.bankInfo[-1].wa[j] = f"WA{j}_{item.name}"
                                infoBlock.wavarcInfo.append(infoBlock.BANKInfo("", blank=True))
                                infoBlock.wavarcInfo[-1].name = f"WA{j}_{item.name}"
                                infoBlock.wavarcInfo[-1].fileName = f"{item.name}_WA{j}.swar"
                                infoBlock.wavarcInfo[-1].unkA = infoBlock.wavarcInfo[swarID].unkA
                                fileBlock.file.append(fileBlock.File(f"{item.name}_WA{j}.swar", "WAVARC"))

                                if not os.path.exists(f"{outfileArg}/Files/{itemString[WAVARC]}/{item.name}_WA{j}"):
                                    os.makedirs(f"{outfileArg}/Files/{itemString[WAVARC]}/{item.name}_WA{j}")
                                fileBlock.file[-1].subFile = []
                                for sf in usedSwav[j]:
                                    fileBlock.file[-1].subFile.append(fileBlock.file[swarFileID].subFile[sf])
                                    copyfile(f"{outfileArg}/Files/{itemString[WAVARC]}/{fileBlock.file[swarFileID].name.split('.')[0]}/{fileBlock.file[swarFileID].subFile[sf]}", f"{outfileArg}/Files/{itemString[WAVARC]}/{item.name}_WA{j}/{fileBlock.file[swarFileID].subFile[sf]}")


    if optimize:
        if optimizeSize:  #  These optimizations may break in-game, mainly used for generating a small SDAT for playback
            for group in infoBlockGroup:  # Remove empty entries in infoBlock
                i = 0
                exec(f"""while i < len(infoBlock.{group}):
                    if infoBlock.{group}[i].name == '':
                        del infoBlock.{group}[i]
                    else:
                        i += 1""")
            i = 0
            while i < len(infoBlock.bankInfo):  # Remove banks not referenced in the infoBlock
                name = infoBlock.bankInfo[i].name
                if name in list(item.bnk for item in infoBlock.seqInfo):
                    i += 1
                else:
                    del infoBlock.bankInfo[i]
            i = 0
            while i < len(infoBlock.wavarcInfo):  # Remove wavarc not referenced in the infoBlock
                name = infoBlock.wavarcInfo[i].name
                delete = True
                for wa in range(4):
                    if name in list(item.wa[wa] for item in infoBlock.bankInfo):
                        delete = False
                if delete:
                    del infoBlock.wavarcInfo[i]
                else:
                    i += 1
        i = 0
        while i < len(fileBlock.file):  # Remove files not referenced in the infoBlock
            name = fileBlock.file[i].name
            delete = True
            for group in infoBlockGroupFile:
                exec(f"""if name in list(item.fileName for item in (item for item in infoBlock.{group} if item.name != '')):
                    delete = False""")
            if delete:
                del fileBlock.file[i]
            else:
                i += 1
        if not optimizeRAM:
            i = 0
            while i < len(fileBlock.file):  # Remove files with duplicate MD5
                item = fileBlock.file[i]
                firstID = list(md5.MD5 for md5 in fileBlock.file[:i + 1]).index(item.MD5)
                if i != firstID:
                    infoBlock.replace_file(item.type, item.name, fileBlock.file[firstID].name)
                    del fileBlock.file[i]
                else:
                    i += 1


    for i in infoBlock.seqInfo:
        names[SEQ].append(i.name)
    seqarcSymbSubParent = []
    seqarcSymbSubName = []
    seqarcSymbSubCount = []
    for i in infoBlock.seqarcInfo:
        names[SEQARC].append(i.name)
        for ii in i.zippedName:
            seqarcSymbSubParent.append(len(names[SEQARC]) - 1)
            seqarcSymbSubName.append(ii)
        seqarcSymbSubCount.append(len(i.zippedName))
    for i in infoBlock.bankInfo:
        names[BANK].append(i.name)
    for i in infoBlock.wavarcInfo:
        names[WAVARC].append(i.name)
    for i in infoBlock.playerInfo:
        names[PLAYER].append(i.name)
    for i in infoBlock.groupInfo:
        names[GROUP].append(i.name)
    for i in infoBlock.player2Info:
        names[PLAYER2].append(i.name)
    for i in infoBlock.strmInfo:
        names[STRM].append(i.name)
    for i in fileBlock.file:
        names[FILE].append(i.name)
    itemCount = [len(names[SEQ]), len(names[SEQARC]), len(names[BANK]), len(names[WAVARC]), len(names[PLAYER]), len(names[GROUP]), len(names[PLAYER2]), len(names[STRM]), len(names[FILE])] 

    SDAT = bytearray(b'SDAT')  # Header
    SDAT += b'\xFF\xFE\x00\x01'  # Magic
    SDAT += bytearray(4)  # File size
    append_short((blocks + 4) * 8)  # Header size
    append_short(blocks)  # Blocks
    SDAT += bytearray((blocks + 2) * 8)  # reserve space for the offsets and sizes
    headeri = 0  # help point back to the block offsets and sizes when ready to write

    if blocks == 4:  # symbBlock
        symbBlockOffset = len(SDAT)
        SDAT += b'SYMB'  # Header
        SDAT += bytearray(4)  # symbBlock size
        SDAT += bytearray(8 * 4)  # reserve space for the offsets
        SDAT += bytearray(24)  # reserved bytes

        for i in range(8):
            itemSymbOffset[i] = len(SDAT)
            write_long(symbBlockOffset + (i * 4) + 8, itemSymbOffset[i] - symbBlockOffset)
            append_long(itemCount[i])
            if i != SEQARC:
                SDAT += bytearray(itemCount[i] * 4)
            else:
                seqarcSymbSubOffset = []
                SDAT += bytearray(itemCount[i] * 8)  # this has sub-groups
                for ii in range(itemCount[i]):
                    write_long((itemSymbOffset[i] + 8) + (ii * 8), len(SDAT) - symbBlockOffset)
                    seqarcSymbSubOffset.append(len(SDAT))
                    append_long(seqarcSymbSubCount[ii])
                    SDAT += bytearray(seqarcSymbSubCount[ii] * 4)

        for i in range(8):
            if i != SEQARC:
                for ii in range(itemCount[i]):
                    if names[i][ii] != "":
                        write_long((itemSymbOffset[i] + 4) + (ii * 4), len(SDAT) - symbBlockOffset)
                        for x, character in enumerate(names[i][ii]):
                            append_byte(ord(character))
                        append_byte(0)  # terminate string
            else:
                for ii in range(itemCount[i]):
                    if names[i][ii] != "":
                        write_long((itemSymbOffset[i] + 4) + (ii * 8), len(SDAT) - symbBlockOffset)
                        for x, character in enumerate(names[i][ii]):
                            append_byte(ord(character))
                        append_byte(0)  # terminate string
                        curSeqarcSub = 0
                        for subi, name in enumerate(seqarcSymbSubName):
                            if seqarcSymbSubParent[subi] == ii:
                                if name != "":
                                    write_long((seqarcSymbSubOffset[ii] + 4) + (curSeqarcSub * 4), len(SDAT) - symbBlockOffset)
                                    for x, character in enumerate(name):
                                        append_byte(ord(character))
                                    append_byte(0)  # terminate string
                                curSeqarcSub += 1

        write_long(16, symbBlockOffset)
        write_long(20, len(SDAT) - symbBlockOffset)
        headeri += 1
        SDAT += bytearray((4 - (len(SDAT) & 3)) & 3)  # pad to the nearest 0x04 byte alignment
        write_long(symbBlockOffset + 4, len(SDAT) - symbBlockOffset)

    infoBlockOffset = len(SDAT)  # infoBlock
    SDAT += b'INFO'  # Header
    SDAT += bytearray(4)  # File size
    SDAT += bytearray(8 * 4)  # reserve space for the offsets
    SDAT += bytearray(24)  # reserved bytes

    for i in range(8):
        itemOffset[i] = len(SDAT)
        write_long(infoBlockOffset + (i * 4) + 8, itemOffset[i] - infoBlockOffset)
        append_long(itemCount[i])
        SDAT += bytearray(itemCount[i] * 4)
        for ii in range(itemCount[i]):
            write_long((itemOffset[i] + 4) + (ii * 4), len(SDAT) - infoBlockOffset)
            tempSize = len(SDAT)
            exec(f"infoBlock.write(infoBlock.{infoBlockGroup[i]}, ii)")
            if tempSize == len(SDAT):  # Null out the pointer for null items
                write_long((itemOffset[i] + 4) + (ii * 4), 0)

    write_long(16 + (headeri * 8), infoBlockOffset)
    write_long(20 + (headeri * 8), len(SDAT) - infoBlockOffset)
    headeri += 1
    SDAT += bytearray((4 - (len(SDAT) & 3)) & 3)  # pad to the nearest 0x04 byte alignment
    write_long(infoBlockOffset + 4, len(SDAT) - infoBlockOffset)


    fatBlockOffset = len(SDAT)  # fatBlock
    SDAT += b'FAT\x20'  # Header
    append_long((itemCount[FILE] * 16) + 12)  # fatBlock size
    append_long(itemCount[FILE])  # number of FAT records
    SDAT += bytearray((itemCount[FILE] * 16))

    write_long(16 + (headeri * 8), fatBlockOffset)
    write_long(20 + (headeri * 8), len(SDAT) - fatBlockOffset)
    headeri += 1
    SDAT += bytearray((4 - (len(SDAT) & 3)) & 3)  # pad to the nearest 0x04 byte alignment
    write_long(fatBlockOffset + 4, len(SDAT) - fatBlockOffset)

    fileBlockOffset = len(SDAT)  # fileBlock
    SDAT += b'FILE'  # Header
    SDAT += bytearray(4)  # fileBlock size
    append_long(itemCount[FILE])  # number of files
    SDAT += bytearray(4)  # reserved
    SDAT += bytearray((0x20 - (len(SDAT) & 0x1F)) & 0x1F)  # pad to the nearest 0x20 byte alignment


    for i, fName in enumerate(names[FILE]):  # Check for BANK source files
        testPath = f"{outfileArg}/Files/{itemString[itemExt.index(fName[-5:])]}/{fName}"
        if not os.path.exists(testPath):
            if fName[-5:] == ".sbnk":  # can the sbnk be built?
                testPath = f"{outfileArg}/Files/{itemString[BANK]}/{fName[:-5]}.txt"
                if not os.path.exists(testPath):
                    raise Exception(f"Missing File:{testPath}")
                with open(testPath, "r") as sbnkIDFile:
                    done = False
                    sbnkLines = []
                    numInst = 0
                    while not done:
                        thisLine = sbnkIDFile.readline()
                        if not thisLine:
                            done = True
                        thisLine = thisLine.split(";")[0]  # ignore anything commented out
                        thisLine = thisLine.split("\n")[0]  # remove newline
                        if thisLine != "":
                            sbnkLines.append(thisLine)
                            if thisLine.find("\t") == -1 and thisLine.find("Unused") == -1:  # Don't count unused or sub definitions
                                numInst += 1
                sbnkHeader = []
                sbnkHeaderSize = 0x3C
                sbnkData = []
                prevPointer = b'\x00\x00\x00\x00'
                sbnkHeader.append(b'SBNK')  # Header
                sbnkHeader.append(b'\xFF\xFE\x00\x01')  # magic
                sbnkHeader.append(b'\x00\x00\x00\x00')  # Reserve for sbnk size
                sbnkHeader.append(b'\x10\x00\x01\x00')  # structure size and blocks
                sbnkHeader.append(b'DATA')
                sbnkHeader.append(b'\x00\x00\x00\x00')  # Reserve for struct size
                sbnkHeader.append(b'\x00' * 32)  # reserved
                sbnkHeader.append((numInst).to_bytes(4, byteorder='little'))  # Number of instruments
                for ii in range(numInst):
                    sbnkHeader.append(b'\x00\x00\x00\x00')  # Reserve for pointers
                for ii, inst in enumerate(sbnkLines):
                    thisLine = inst
                    if thisLine.find("\t") == -1:
                        thisLine = thisLine.split(", ")
                        if thisLine[1] == "SameAsAbove":
                            sbnkHeader[8 + int(thisLine[0])] = prevPointer
                        elif thisLine[1] != "0" and thisLine[1] != "NULL":
                            if thisLine[1] == "Single":
                                thisLine[1] = "1"
                            elif thisLine[1] == "PSG1":
                                thisLine[1] = "2"
                            elif thisLine[1] == "PSG2":
                                thisLine[1] = "3"
                            elif thisLine[1] == "PSG3":
                                thisLine[1] = "4"
                            elif thisLine[1] == "Drums":
                                thisLine[1] = "16"
                            elif thisLine[1] == "Keysplit":
                                thisLine[1] = "17"
                            sbnkHeaderSize = (numInst * 4) + 0x3C
                            if thisLine[0] == "Unused":
                                for x, unusedData in enumerate(thisLine[1:]):
                                    sbnkData.append((int(unusedData)).to_bytes(1, byteorder='little'))
                            else:
                                prevPointer = (int(thisLine[1]) + ((sbnkHeaderSize + sum(len(tf) for tf in sbnkData)) << 8)).to_bytes(4, byteorder='little')
                                sbnkHeader[8 + int(thisLine[0])] = prevPointer
                            if int(thisLine[1]) < 16:
                                sbnkData.append((int(thisLine[2])).to_bytes(2, byteorder='little'))
                                sbnkData.append((int(thisLine[3])).to_bytes(2, byteorder='little'))
                                sbnkData.append((int(thisLine[4])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[5])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[6])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[7])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[8])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[9])).to_bytes(1, byteorder='little'))
                            elif int(thisLine[1]) == 16:
                                sbnkData.append((int(thisLine[2])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[3])).to_bytes(1, byteorder='little'))
                            elif int(thisLine[1]) == 17:
                                sbnkData.append((int(thisLine[2])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[3])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[4])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[5])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[6])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[7])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[8])).to_bytes(1, byteorder='little'))
                                sbnkData.append((int(thisLine[9])).to_bytes(1, byteorder='little'))
                    else:
                        thisLine = thisLine.split("\t")
                        thisLine = thisLine[1]
                        thisLine = thisLine.split(", ")
                        sbnkData.append((int(thisLine[0])).to_bytes(2, byteorder='little'))
                        sbnkData.append((int(thisLine[1])).to_bytes(2, byteorder='little'))
                        sbnkData.append((int(thisLine[2])).to_bytes(2, byteorder='little'))
                        sbnkData.append((int(thisLine[3])).to_bytes(1, byteorder='little'))
                        sbnkData.append((int(thisLine[4])).to_bytes(1, byteorder='little'))
                        sbnkData.append((int(thisLine[5])).to_bytes(1, byteorder='little'))
                        sbnkData.append((int(thisLine[6])).to_bytes(1, byteorder='little'))
                        sbnkData.append((int(thisLine[7])).to_bytes(1, byteorder='little'))
                        sbnkData.append((int(thisLine[8])).to_bytes(1, byteorder='little'))
                sbnkSize = sum(len(tf) for tf in sbnkData) + sbnkHeaderSize
                while (sbnkSize & 0xFFFFFFFC) != sbnkSize:
                    sbnkData.append(b'\x00')  # pad to the nearest 0x4 byte alignment
                    sbnkSize += 1
                sbnkHeader[2] = (sbnkSize).to_bytes(4, byteorder='little')
                sbnkHeader[5] = (sbnkSize - 0x10).to_bytes(4, byteorder='little')
                testPath = f"{outfileArg}/Files/{itemString[BANK]}/{fName}"
                with open(testPath, "wb") as sbnkFile:
                    for ii, listItem in enumerate(sbnkHeader):
                        sbnkFile.write(listItem)
                    for ii, listItem in enumerate(sbnkData):
                        sbnkFile.write(listItem)


    for i, fName in enumerate(names[FILE]):  # Check for WAVEARC source files
        testPath = f"{outfileArg}/Files/{itemString[itemExt.index(fName[-5:])]}/{fName}"
        if not os.path.exists(testPath):
            if fName[-5:] == ".swar":  # can the swar be built?
                swavName = fileBlock.file[i].subFile
                swarTemp = []
                for ii, sName in enumerate(swavName):
                    testPath = f"{outfileArg}/Files/{itemString[WAVARC]}/{fName[:-5]}/{sName}"
                    if not os.path.exists(testPath):
                        raise Exception(f"Missing File:{testPath}")
                    with open(testPath, "rb") as tempFile:
                        swarTemp.append(bytearray(tempFile.read()))
                testPath = f"{outfileArg}/Files/{itemString[WAVARC]}/{fName}"
                with open(testPath, "wb") as swarFile:
                    swarSize = sum(len(sf[0x18:]) for sf in swarTemp)
                    swarFile.write(b'SWAR')  # Header
                    swarFile.write(b'\xFF\xFE\x00\x01')  # magic
                    swarFile.write((swarSize + 0x3C + (len(swarTemp) * 4)).to_bytes(4, byteorder='little'))
                    swarFile.write(b'\x10\x00\x01\x00')  # structure size and blocks
                    swarFile.write(b'DATA')
                    swarFile.write((swarSize + 0x2C + (len(swarTemp) * 4)).to_bytes(4, byteorder='little'))
                    swarFile.write(b'\x00' * 32)  # reserved
                    swarFile.write((len(swarTemp)).to_bytes(4, byteorder='little'))
                    swarPointer = 0x3C + (len(swarTemp) * 4)  # where the first swav will be in the file
                    for ii, sFile in enumerate(swarTemp):
                        swarFile.write((swarPointer).to_bytes(4, byteorder='little'))
                        swarPointer += len(sFile[0x18:])
                    for ii, sFile in enumerate(swarTemp):
                        swarFile.write(sFile[0x18:])


    curFile = 0
    tFileBuffer = []
    for i, fName in enumerate(names[FILE]):  # Pack the binary files
        testPath = f"{outfileArg}/Files/{itemString[itemExt.index(fName[-5:])]}/{fName}"
        if not os.path.exists(testPath):
            testPath = f"{outfileArg}/Files/{fName}"
            if not os.path.exists(testPath):
                raise Exception(f"Missing File:{testPath}")
        curFileLoc = (len(SDAT) + sum(len(tf) for tf in tFileBuffer))
        write_long((curFile * 16) + 12 + fatBlockOffset, curFileLoc)  # write file pointer to the fatBlock
        with open(testPath, "rb") as tempFile:
            tFileBuffer.append(bytearray(tempFile.read()))
        write_long((curFile * 16) + 16 + fatBlockOffset, len(tFileBuffer[curFile]))  # write file size to the fatBlock

        while (len(tFileBuffer[curFile]) & 0xFFFFFFE0) != len(tFileBuffer[curFile]):
            tFileBuffer[curFile] += b'\x00'  # pad to the nearest 0x20 byte alignment
        curFile += 1
    write_long(16 + (headeri * 8), fileBlockOffset)
    write_long(20 + (headeri * 8), (len(SDAT) + sum(len(tf) for tf in tFileBuffer)) - fileBlockOffset)
    write_long(fileBlockOffset + 4, (len(SDAT) + sum(len(tf) for tf in tFileBuffer)) - fileBlockOffset)  # write fileBlock size
    write_long(8, (len(SDAT) + sum(len(tf) for tf in tFileBuffer)))  # write file size
    with open(infileArg, "wb") as outfile:
        outfile.write(SDAT)
        for i, tFile in enumerate(tFileBuffer):
            outfile.write(tFile)


ts2 = time.time() - ts
print(f"Done: {ts2}s")
