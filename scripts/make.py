#!/usr/bin/env python3

import os
import subprocess
import shutil
import struct
import sys
from datetime import datetime
import _io
import ndspy.codeCompression

if sys.platform.startswith('win'):
    PathVar = os.environ.get('Path')
    Paths = PathVar.split(';')
    PATH = ''
    for candidatePath in Paths:
        if 'devkitARM' in candidatePath:
            PATH = candidatePath
            break
    if PATH == '':
        PATH = 'C://devkitPro//devkitARM//bin'
        if os.path.isdir(PATH) is False:
            print('Devkit not found, trying executables on PATH...')
            PATH = ''

    PREFIX = 'arm-none-eabi-'
    OBJDUMP = os.path.join(PATH, PREFIX + 'objdump')
    NM = os.path.join(PATH, PREFIX + 'nm')
    AS = os.path.join(PATH, PREFIX + 'as')

else:  # Linux, OSX, etc.
    if os.path.exists('/opt/devkitpro/devkitARM/bin/'):
        PREFIX = '/opt/devkitpro/devkitARM/bin/arm-none-eabi-'
    else:
        PREFIX = 'arm-none-eabi-'
    OBJDUMP = (PREFIX + 'objdump')
    if sys.platform.startswith('darwin'):
        NM = ('nm')
    else:
        NM = (PREFIX + 'nm')
    AS = (PREFIX + 'as')


BYTE_REPLACEMENT = 'bytereplacement'
HOOKS = 'hooks'
ARM_HOOKS = 'armhooks'
REPOINTS = 'repoints'
ROUTINE_POINTERS = 'routinepointers'

# step 1:  list folders in a directory
SOURCE = "src"
BUILD = "build"
SRC_FILES = os.listdir(SOURCE)
OVERLAYS = []
for file in SRC_FILES:
    if ".c" not in file and "individual" not in file and ".ld" not in file:
        OVERLAYS.append(file)

# construct output filename list
NEW_OVERLAYS = []
for file in OVERLAYS:
    NEW_OVERLAYS.append(BUILD + "/output_" + file + ".bin")

# repeat to grab individual overlays
SRC_FILES = os.listdir(SOURCE + "/individual")
INDIVIDUAL_OVERLAYS = []
for file in SRC_FILES:
    if ".c" in file:
        INDIVIDUAL_OVERLAYS.append(file[:-1 * len(".c")])

# construct output filename list
NEW_INDIVIDUAL_OVERLAYS = []
for file in INDIVIDUAL_OVERLAYS:
    NEW_INDIVIDUAL_OVERLAYS.append(BUILD + "/output_" + file + ".bin")
print

# treat overlay 129 specially
OUTPUT = BUILD + "/output.bin"

LINKED_SECTIONS = [BUILD + "/linked.o"]
for file in OVERLAYS:
    LINKED_SECTIONS.append(BUILD + "/" + file + "_linked.o")
OFFSET_START_IN_129 = 0x600

def ExtractPointer(byteList: [bytes]):
    pointer = 0
    for a in range(len(byteList)):
        pointer += (int(byteList[a])) << (8 * a)

    return pointer


def GetTextSection(section=0) -> int:
    #return 0
    try:
        # Dump sections
        out = subprocess.check_output([OBJDUMP, '-t', LINKED_SECTIONS[section]])
        lines = out.decode().split('\n')

        # Find text section
        text = filter(lambda x: x.strip().endswith('.text'), lines)
        section = (list(text))[0]

        # Get the offset
        offset = int(section.split(' ')[0], 16)
        return offset

    except:
        print("Error: The insertion process could not be completed.\n"
              + "The linker symbol file was not found. Most likely the compilation process was not completed.")
        sys.exit(1)


def GetSymbols() -> {str: int}:
    ret = {}

    for section in LINKED_SECTIONS:
        #subtract = GetTextSection(section)
        out = subprocess.check_output([NM, section])
        lines = out.decode().split('\n')

        for line in lines:
            parts = line.strip().split()

            if len(parts) < 3:
                continue

            if parts[1].lower() not in {'t', 'd'}:
                continue

            offset = int(parts[0], 16)
            ret[parts[2]] = offset# - subtract

    return ret


def Hook(rom: _io.BufferedReader, space: int, hookAt: int, register=0, memAddress=0):
    # Align 2
    if hookAt & 1:
        hookAt -= 1

    rom.seek(hookAt)

    if (register > 7 and register != 0xFF):
        print("Register used to hook at " + str(space) + " is > 7 (r" + str(register) + " used).  Modulo'd by 8.")
        register &= 7

    if (register != 0xFF):
        if hookAt % 4:
            data = bytes([0x01, 0x48 | register, 0x00 | (register << 3), 0x47, 0x0, 0x0])
        else:
            data = bytes([0x00, 0x48 | register, 0x00 | (register << 3), 0x47])
        space += 1
        data += (space.to_bytes(4, 'little'))
    else: # register == 0xFF is an unspecified register
        if (memAddress & 0x08000000):
            print("Error:  Need to specify a memory address (02XXXXXX) for total function replacement instead of an absolute offset.")
            sys.exit(1)
        immediate = int((space - (memAddress + 0xE)) / 2)
        immediateHigher = (immediate >> 11) & 0x3FF
        immediateLower = immediate & 0x7FF
        # requires 0x1C of space
        # see documentation/testing_hook.s for the assembly here
        data = bytes([0x60, 0xB4, 0x04, 0x4D, 0x76, 0x46, 0x2E, 0x60, 0x60, 0xBC,
            # memAddress > space would result in negative immediate
            # i suppose all higher bits would be set and this wouldn't be necessary, but this is a mind safety deal i fear
            immediateHigher & 0xFF, (0xF0 | ((immediateHigher >> 8) & 0x3) | (0x4 if (memAddress+0xE) > space else 0)),
            immediateLower & 0xFF, (0xF8 | ((immediateLower >> 8) & 0x7)),
            0x01, 0x49, 0x09, 0x68, 0x8F, 0x46])
        #print(f"bl construction: space = {space:08X}, hookAt = {hookAt:06X}, memAddress = {memAddress:08X}, immediate = {immediate:06X}, {immediateHigher:03X} {immediateLower:03X}")
        #for i in range(0, len(data)):
        #    print(f"{data[i]:02X}", end=' ')
        #print("")
        data += ((memAddress + 0x18).to_bytes(4, 'little'))

    rom.write(bytes(data))


def HookARM(rom: _io.BufferedReader, space: int, hookAt: int, register=0):
    # Align 4
    if hookAt & 3:
        hookAt -= hookAt % 4

    rom.seek(hookAt)

    if (register > 12):
        print("Register used to hook at " + str(space) + " is > 12 (r" + str(register) + " used).  Results may be unstable.")

    data = bytes([0x00, 0x00 | register << 4, 0x9F, 0xE5, 0x10 | register, 0xFF, 0x2F, 0xE1])

    data += (space.to_bytes(4, 'little'))
    rom.write(bytes(data))


def Repoint(rom: _io.BufferedReader, space: int, repointAt: int, slideFactor=0):
    rom.seek(repointAt)

    space += (slideFactor)
    data = (space.to_bytes(4, 'little'))
    rom.write(bytes(data))


def ReplaceBytes(rom: _io.BufferedReader, offset: int, data: str):
    ar = offset
    words = data.split()
    for i in range(0, len(words)):
        rom.seek(ar)
        intByte = int(words[i], 16)
        rom.write(bytes(intByte.to_bytes(1, 'big')))
        ar += 1


def TryProcessFileInclusion(line: str, definesDict: dict) -> bool:
    if line.startswith('#include "'):
        try:
            path = line.split('"')[1].strip()
            with open(path, 'r', encoding="UTF-8") as file:
                for line in file:
                    if line.startswith('#define '):
                        try:
                            lineList = line.strip().split()
                            title = lineList[1]

                            if len(lineList) == 2 or lineList[2].startswith('//') or lineList[2].startswith('/*'):
                                define = True
                            else:
                                define = lineList[2]

                            definesDict[title] = define
                        except IndexError:
                            print('Error reading define on line"' + line.strip() + '" in file "' + path + '".')

        except Exception as e:
            print('Error including file on line "' + line.strip() + '".')
            print(e)

        return True  # Inclusion line; don't read otherwise

    return False


def TryProcessConditionalCompilation(line: str, definesDict: dict, conditionals: [(str, bool)]) -> bool:
    line = line.strip()
    upperLine = line.upper()
    numWordsOnLine = len(line.split())

    if upperLine.startswith('#IFDEF ') and numWordsOnLine > 1:
        condition = line.strip().split()[1]
        conditionals.insert(0, (condition, True))  # Insert at front
        return True
    elif upperLine.startswith('#IFNDEF ') and numWordsOnLine > 1:
        condition = line.strip().split()[1]
        conditionals.insert(0, (condition, False))  # Insert at front
        return True
    elif upperLine == '#ELSE':
        if len(conditionals) >= 1:  # At least one statement was pushed before
            condition = conditionals.pop(0)
            if condition[1] is True:
                conditionals.insert(0, (condition[0], False))  # Invert old statement
            else:
                conditionals.insert(0, (condition[0], True))  # Invert old statement
            return True
    elif upperLine == '#ENDIF':
        conditionals.pop(0)  # Remove first element (last pushed)
        return True
    else:
        for condition in conditionals:
            definedType = condition[1]
            condition = condition[0]

            if definedType is True:  # From #ifdef
                if condition not in definesDict:
                    return True  # If something isn't defined then skip the line
            else:  # From #ifndef
                if condition in definesDict:
                    return True  # If something is defined then skip the line

    return False


def install():
    if os.path.isfile(BYTE_REPLACEMENT):
        with open(BYTE_REPLACEMENT, 'r') as replacelist:
            definesDict = {}
            conditionals = []
            for line in replacelist:
                if TryProcessFileInclusion(line, definesDict):
                    continue
                if TryProcessConditionalCompilation(line, definesDict, conditionals):
                    continue
                if line.strip().startswith('#') or line.strip() == '':
                    continue

                #offset = int(line[4:13], 16) - 0x08000000
                openbin = line[:4]
                if openbin == "arm9":
                    rom2 = open("base/arm9.bin", 'rb+')
                    offset = int(line[4:13], 16) - 0x02000000 if int(line[4:13], 16) & 0x02000000 else int(line[4:13], 16) - 0x08000000
                else:
                    rom2 = open("base/overlay/overlay_" + openbin + ".bin", 'rb+')
                    with open("base/overarm9.bin", 'rb+') as y9Table:
                        y9Table.seek((int(openbin)*0x20)+0x4) # read the overlay memory address for offset calculation
                        offset = int(line[4:13], 16) - struct.unpack_from("<I", y9Table.read(4))[0] if int(line[4:13], 16) & 0x02000000 else int(line[4:13], 16) - 0x08000000
                try:
                    ReplaceBytes(rom2, offset, line[13:].strip())
                except ValueError:  # Try loading from the defines dict if unrecognizable character
                    newNumber = definesDict[line[13:].strip()]
                    try:
                        newNumber = int(newNumber)
                    except ValueError:
                        newNumber = int(newNumber, 16)

                    if (newNumber >= 16777216): # 32 bits
                        #newNumber = str(hex(newNumber)).split('0x')[1]
                        newNumber = (str(hex(newNumber & 0xFF)).split('0x')[1] + " " + str(hex(newNumber >> 8 & 0xFF)).split('0x')[1] + " " + str(hex(newNumber >> 16 & 0xFF)).split('0x')[1] + " " + str(hex(newNumber >> 24 & 0xFF)).split('0x')[1])
                    elif (newNumber >= 65536): # 24 bits
                        #newNumber = str(hex(newNumber)).split('0x')[1]
                        newNumber = (str(hex(newNumber & 0xFF)).split('0x')[1] + " " + str(hex(newNumber >> 8 & 0xFF)).split('0x')[1] + " " + str(hex(newNumber >> 16 & 0xFF)).split('0x')[1])
                    elif (newNumber >= 256): # 16 bits
                        #newNumber = str(hex(newNumber)).split('0x')[1]
                        newNumber = (str(hex(newNumber & 0xFF)).split('0x')[1] + " " + str(hex(newNumber >> 8 & 0xFF)).split('0x')[1])
                    else:
                        newNumber = str(hex(newNumber)).split('0x')[1]
                    ReplaceBytes(rom2, offset, newNumber)
                rom2.close()


def hook():
    if os.path.isfile(HOOKS):
        table = GetSymbols()
        with open(HOOKS, 'r') as hookList:
            definesDict = {}
            conditionals = []
            for line in hookList:
                if TryProcessFileInclusion(line, definesDict):
                    continue
                if TryProcessConditionalCompilation(line, definesDict, conditionals):
                    continue
                if line.strip().startswith('#') or line.strip() == '':
                    continue

                if (len(line.split()) == 4):
                    files, symbol, address, register = line.split()
                else:
                    files, symbol, address = line.split()
                    register = "255"
                #offset = int(address, 16) - 0x08000000
                try:
                    code = table[symbol]
                except KeyError:
                    print('Symbol missing:', symbol)
                    continue
                if files == "arm9":
                    rom2 = open("base/arm9.bin", 'rb+')
                    offset = int(address, 16) - 0x02000000 if int(address, 16) & 0x02000000 else int(address, 16) - 0x08000000
                else:
                    rom2 = open("base/overlay/overlay_" + files + ".bin", 'rb+')
                    with open("base/overarm9.bin", 'rb+') as y9Table:
                        y9Table.seek((int(files)*0x20)+0x4) # read the overlay memory address for offset calculation
                        offset = int(address, 16) - struct.unpack_from("<I", y9Table.read(4))[0] if int(address, 16) & 0x02000000 else int(address, 16) - 0x08000000
                Hook(rom2, code, offset, int(register), int(address, 16))
                rom2.close()


    if os.path.isfile(ARM_HOOKS):
        table = GetSymbols()
        with open(ARM_HOOKS, 'r') as hookList:
            definesDict = {}
            conditionals = []
            for line in hookList:
                if TryProcessFileInclusion(line, definesDict):
                    continue
                if TryProcessConditionalCompilation(line, definesDict, conditionals):
                    continue
                if line.strip().startswith('#') or line.strip() == '':
                    continue

                files, symbol, address, register = line.split()
                #offset = int(address, 16) - 0x08000000
                try:
                    code = table[symbol]
                except KeyError:
                    print('Symbol missing:', symbol)
                    continue
                if files == "arm9":
                    rom2 = open("base/arm9.bin", 'rb+')
                    offset = int(address, 16) - 0x02000000 if int(address, 16) & 0x02000000 else int(address, 16) - 0x08000000
                else:
                    rom2 = open("base/overlay/overlay_" + files + ".bin", 'rb+')
                    with open("base/overarm9.bin", 'rb+') as y9Table:
                        y9Table.seek((int(files)*0x20)+0x4) # read the overlay memory address for offset calculation
                        offset = int(address, 16) - struct.unpack_from("<I", y9Table.read(4))[0] if int(address, 16) & 0x02000000 else int(address, 16) - 0x08000000
                HookARM(rom2, code, offset, int(register))
                rom2.close()

def writeall():
    OFFECTSFILES = "base/overlay/overlay_0129.bin"
    with open(OFFECTSFILES, 'wb+') as rom:
        print("Inserting code.")
        table = GetSymbols()
        with open(OUTPUT, 'rb') as binary:
            rom.seek(OFFSET_START_IN_129)
            rom.write(binary.read())
            binary.close()
        with open("base/overarm9.bin", "rb+") as y9Table:
            # update overlay 129 entry
            # determine insertion location
            with open(SOURCE + "/linker.ld") as linkerFile:
                for line in linkerFile:
                    if "ORIGIN" in line:
                        address = int(line.split()[4][len("0x"):], 0x10)
                        break
            rom.seek(0, 2)
            memSize = rom.tell()
            y9Table.seek(129*0x20) # seek address
            y9Table.write(struct.pack('<I', 129)) # id
            y9Table.write(struct.pack('<I', address)) # memaddress
            y9Table.write(struct.pack('<I', memSize)) # memsize
            y9Table.write(struct.pack('<I', 0)) # bsssize
            y9Table.write(struct.pack('<I', 0)) # initstart
            y9Table.write(struct.pack('<I', 0)) # initend
            y9Table.write(struct.pack('<I', 129)) # file id
            y9Table.write(struct.pack('<I', 0)) # uncompressed
        rom.close()

    # all of the conglomerated overlays
    for i in range(0, len(OVERLAYS)):
        with open(SOURCE + "/" + OVERLAYS[i] + "/linker.ld") as file:
            line = file.readline()
            # grab first line of format /* Overlay ### */, convert ### to a number
            newOverlay = int(line.split(" ")[2])
            # determine insertion location
            for line in file:
                if "ORIGIN" in line:
                    address = int(line.split()[4][len("0x"):-1], 0x10)
                    break
        with open(f"base/overlay/overlay_{newOverlay:04}.bin", 'wb+') as rom:
            with open(NEW_OVERLAYS[i], 'rb') as binary:
                rom.seek(0)
                rom.write(binary.read())
                binary.close()
            rom.close()
        with open("base/overarm9.bin", "rb+") as y9Table:
            y9Table.seek(newOverlay*0x20) # seek address
            y9Table.write(struct.pack('<I', newOverlay)) # id
            y9Table.write(struct.pack('<I', address)) # memaddress
            y9Table.write(struct.pack('<I', os.path.getsize(f"base/overlay/overlay_{newOverlay:04}.bin"))) # memsize
            y9Table.write(struct.pack('<I', 0)) # bsssize
            y9Table.write(struct.pack('<I', 0)) # initstart
            y9Table.write(struct.pack('<I', 0)) # initend
            y9Table.write(struct.pack('<I', newOverlay)) # file id
            y9Table.write(struct.pack('<I', 0)) # uncompressed
        #print(f"{OVERLAYS[i]} written to overlay {newOverlay}...")

    # all of the individual overlays
    for i in range(0, len(INDIVIDUAL_OVERLAYS)):
        with open(SOURCE + "/individual/linker/" + INDIVIDUAL_OVERLAYS[i] + ".ld") as file:
            line = file.readline()
            # grab first line of format /* Overlay ### */, convert ### to a number
            newOverlay = int(line.split(" ")[2])
            # determine insertion location
            for line in file:
                if "ORIGIN" in line:
                    address = int(line.split()[4][len("0x"):-1], 0x10)
                    break
        with open(f"base/overlay/overlay_{newOverlay:04}.bin", 'wb+') as rom:
            with open(NEW_INDIVIDUAL_OVERLAYS[i], 'rb') as binary:
                rom.seek(0)
                rom.write(binary.read())
                binary.close()
            rom.close()
        with open("base/overarm9.bin", "rb+") as y9Table:
            y9Table.seek(newOverlay*0x20) # seek address
            y9Table.write(struct.pack('<I', newOverlay)) # id
            y9Table.write(struct.pack('<I', address)) # memaddress
            y9Table.write(struct.pack('<I', os.path.getsize(f"base/overlay/overlay_{newOverlay:04}.bin"))) # memsize
            y9Table.write(struct.pack('<I', 0)) # bsssize
            y9Table.write(struct.pack('<I', 0)) # initstart
            y9Table.write(struct.pack('<I', 0)) # initend
            y9Table.write(struct.pack('<I', newOverlay)) # file id
            y9Table.write(struct.pack('<I', 0)) # uncompressed
        #print(f"{INDIVIDUAL_OVERLAYS[i]} written to overlay {newOverlay}...")

    width = max(map(len, table.keys())) + 1
    if os.path.isfile('offsets.ini'):
        offsetIni = open('offsets.ini', 'r+')
    else:
        offsetIni = open('offsets.ini', 'w')

    offsetIni.truncate()
    for key in sorted(table.keys()):
        fstr = ('{:' + str(width) + '} {:08X}')
        offsetIni.write(fstr.format(key + ':', table[key]) + '\n')
    offsetIni.close()


def repoint():
    if os.path.isfile(ROUTINE_POINTERS):
        table = GetSymbols()
        with open(ROUTINE_POINTERS, 'r') as pointerlist:
            definesDict = {}
            conditionals = []
            for line in pointerlist:
                if TryProcessFileInclusion(line, definesDict):
                    continue
                if TryProcessConditionalCompilation(line, definesDict, conditionals):
                    continue
                if line.strip().startswith('#') or line.strip() == '':
                    continue

                files, symbol, address = line.split()
                #offset = int(address, 16) - 0x08000000
                try:
                    code = table[symbol]
                except KeyError:
                    print('Symbol missing:', symbol)
                    continue
                if files == "arm9":
                    rom2 = open("base/arm9.bin", 'rb+')
                    offset = int(address, 16) - 0x02000000 if int(address, 16) & 0x02000000 else int(address, 16) - 0x08000000
                else:
                    rom2 = open("base/overlay/overlay_" + files + ".bin", 'rb+')
                    with open("base/overarm9.bin", 'rb+') as y9Table:
                        y9Table.seek((int(files)*0x20)+0x4) # read the overlay memory address for offset calculation
                        offset = int(address, 16) - struct.unpack_from("<I", y9Table.read(4))[0] if int(address, 16) & 0x02000000 else int(address, 16) - 0x08000000
                Repoint(rom2, code, offset, 1)
                rom2.close()


def offset():
    if os.path.isfile(REPOINTS):
        table = GetSymbols()
        with open(REPOINTS, 'r') as repointList:
            definesDict = {}
            conditionals = []
            for line in repointList:
                if TryProcessFileInclusion(line, definesDict):
                    continue
                if TryProcessConditionalCompilation(line, definesDict, conditionals):
                    continue
                if line.strip().startswith('#') or line.strip() == '':
                    continue

                files, symbol, address = line.split()
                #offset = int(address, 16) - 0x08000000
                try:
                    addOffset = 0
                    if '+' in symbol:
                        symbol, addOffsetStr = symbol.split('+')
                        addOffset = int(addOffsetStr, 16)
                    code = table[symbol]
                except KeyError:
                    print('Symbol missing:', symbol)
                    continue
                if files == "arm9":
                    rom = open("base/arm9.bin", 'rb+')
                    offset = int(address, 16) - 0x02000000 if int(address, 16) & 0x02000000 else int(address, 16) - 0x08000000
                else:
                    rom = open("base/overlay/overlay_" + files + ".bin", 'rb+')
                    with open("base/overarm9.bin", 'rb+') as y9Table:
                        y9Table.seek((int(files)*0x20)+0x4) # read the overlay memory address for offset calculation
                        offset = int(address, 16) - struct.unpack_from("<I", y9Table.read(4))[0] if int(address, 16) & 0x02000000 else int(address, 16) - 0x08000000
                Repoint(rom, code, offset, addOffset)
                rom.close()


OVERLAYS_TO_DECOMPRESS = [1, 2, 6, 7, 8, 10, 12, 14, 15, 18, 23, 61, 63, 64, 68, 94, 96, 112]


def decompress():
    if os.path.exists("build/arm9.bin"):
        os.remove("build/arm9.bin")
    shutil.copyfile("base/arm9.bin", "build/arm9.bin")
    arm9 = open("build/arm9.bin", "wb+")
    FNULL = open(os.devnull, 'w')
    with open("base/arm9.bin", 'rb') as rom:
        bin = rom.read()
        if len(bin) < 0xBC000:
            print("Decompress arm9.")
            dec = bytearray(ndspy.codeCompression.decompress(bin))
            dec[0xbb4] = 0
            dec[0xbb5] = 0
            dec[0xbb6] = 0
            dec[0xbb7] = 0
            arm9.write(dec)
            shutil.copyfile("build/arm9.bin", "base/arm9.bin")
        rom.close()
        arm9.close()
    with open("base/overarm9.bin", 'rb+') as rom:
        for n in OVERLAYS_TO_DECOMPRESS:
            rom.seek((n*0x20)+0x1C) #write 00 00 00 00 to (num*0x20)+0x1C to make game consider overlay num decompressed (and call decompress below)
            bunh = bytes([0x0, 0x0, 0x0, 0x0])
            rom.write(bytes(bunh))
        rom.close()
    for n in OVERLAYS_TO_DECOMPRESS:
        decompress_file("base/overlay/overlay_" + str(n).zfill(4) + ".bin")



def decompress_file(path):
    try:
        with open(path, 'rb') as f:
            dec = ndspy.codeCompression.decompress(f.read())
        with open(path, 'wb') as f:
            f.write(dec)
    except ValueError: # do nothing, file is already decompressed
        print("")



if __name__ == '__main__':
    decompress()
    writeall()
    install()
    hook()
    repoint()
    offset()
