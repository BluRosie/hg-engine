#!/usr/bin/env python3

import os
import subprocess
import shutil
import sys
from datetime import datetime
import _io

OFFSET_TO_PUT = 0
SOURCE_ROM = "rom.nds"
ROM_NAME = "test.nds"
OFFSET_START = 0x023C8000 + 0x3400 # 0x3400 is the offset in the synthetic overlay.  change to where you need it to be.

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
            print('Devkit not found.')
            sys.exit(1)

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
    NM = (PREFIX + 'nm')
    AS = (PREFIX + 'as')

OUTPUT = 'build/output.bin'
BYTE_REPLACEMENT = 'bytereplacement'
HOOKS = 'hooks'
REPOINTS = 'repoints'
GENERATED_REPOINTS = 'generatedrepoints'
REPOINT_ALL = 'repointall'
ROUTINE_POINTERS = 'routinepointers'
FUNCTION_REWRITES = 'functionrewrites'
EVENT_SCRIPTS = "eventscripts"
SONGS = "songs"
SPECIAL_INSERTS = 'special_inserts_12.s'
SPECIAL_INSERTS_OUT = 'build/special_inserts.bin'

def ExtractPointer(byteList: [bytes]):
    pointer = 0
    for a in range(len(byteList)):
        pointer += (int(byteList[a])) << (8 * a)

    return pointer

def GetTextSection() -> int:
    try:
        # Dump sections
        out = subprocess.check_output([OBJDUMP, '-t', 'build/linked.o'])
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


def GetSymbols(subtract=0) -> {str: int}:
    out = subprocess.check_output([NM, 'build/linked.o'])
    lines = out.decode().split('\n')

    ret = {}
    for line in lines:
        parts = line.strip().split()

        if len(parts) < 3:
            continue

        if parts[1].lower() not in {'t', 'd'}:
            continue

        offset = int(parts[0], 16)
        ret[parts[2]] = offset - subtract

    return ret


def Hook(rom: _io.BufferedReader, space: int, hookAt: int, register=0):
    # Align 2
    if hookAt & 1:
        hookAt -= 1

    rom.seek(hookAt)

    register &= 7

    if hookAt % 4:
        data = bytes([0x01, 0x48 | register, 0x00 | (register << 3), 0x47, 0x0, 0x0])
    else:
        data = bytes([0x00, 0x48 | register, 0x00 | (register << 3), 0x47])

    space +=  OFFSET_START + 1
    data += (space.to_bytes(4, 'little'))
    rom.write(bytes(data))


def FunctionWrap(rom: _io.BufferedReader, space: int, hookAt: int, numParams: int, isReturning: int):
    # Align 2
    if hookAt & 1:
        hookAt -= 1

    rom.seek(hookAt)
    numParams = numParams - 1

    if numParams < 4:
        data = bytes([0x10, 0xB5, 0x3, 0x4C, 0x0, 0xF0, 0x3, 0xF8, 0x10, 0xBC,
                      (isReturning + 1), 0xBC, (isReturning << 3), 0x47, 0x20, 0x47])
    else:
        k = numParams - 3
        data = bytes([0x10, 0xB5, 0x82, 0xB0])
        for i in range(k + 2):
            data += bytes([i + 2, 0x9C, i, 0x94])
        data += bytes([0x0, 0x9C, numParams - 1, 0x94, 0x1, 0x9C, numParams, 0x94, 0x2, 0xB0, k + 8, 0x4C,
                       0x0, 0xF0, (k << 1) + 13, 0xF8, 0x82, 0xB0, numParams, 0x9C, 0x1, 0x94, numParams - 1,
                       0x9C, 0x0, 0x94])

        for i in reversed(range(k + 2)):
            data += bytes([i, 0x9C, i+2, 0x94])
        data += bytes([0x2, 0xB0, 0x10, 0xBC, isReturning + 1, 0xBC, isReturning << 3, 0x47, 0x20, 0x47])

    space += 0x08000001
    data += (space.to_bytes(4, 'little'))
    rom.write(bytes(data))


def Repoint(rom: _io.BufferedReader, space: int, repointAt: int, slideFactor=0):
    rom.seek(repointAt)

    space += (OFFSET_START + slideFactor)
    data = (space.to_bytes(4, 'little'))
    rom.write(bytes(data))


# These offsets contain the word 0x8900000 - the attack data from
# Mr. DS's rombase. In order to maintain as much compatibility as
# possible, the data at these offsets is never modified.
IGNORED_OFFSETS = [0x3986C0, 0x3986EC, 0xDABDF0]


def RealRepoint(rom: _io.BufferedReader, offsetTuples: [(int, int, str)]):
    pointerList = []
    pointerDict = {}
    for tup in offsetTuples:  # Format is (Double Pointer, New Pointer, Symbol)
        offset = tup[0]
        rom.seek(offset)
        pointer = ExtractPointer(rom.read(4))
        pointerList.append(pointer)
        pointerDict[pointer] = (tup[1] + 0x08000000, tup[2])

    offset = 0
    offsetList = []

    while offset < 0xFFFFFD:
        if offset in IGNORED_OFFSETS:
            offset += 4
            continue

        rom.seek(offset)
        word = ExtractPointer(rom.read(4))
        rom.seek(offset)

        for pointer in pointerList:
            if word == pointer:
                offsetList.append((offset, pointerDict[pointer][1]))
                rom.write(bytes(pointerDict[pointer][0].to_bytes(4, 'little')))
                break

        offset += 4

    return offsetList


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
            with open(path, 'r',encoding="UTF-8") as file:
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
 
                    offset = int(line[4:13], 16) - 0x08000000
                    openbin = line[:4]
                    if (openbin == "arm9"):
                        rom2 = open("base/arm9.bin",'rb+')
                    else:
                        rom2 = open("base/overlay/overlay_"+openbin+".bin",'rb+')
                    try:
                        ReplaceBytes(rom2, offset, line[13:].strip())
                    except ValueError: #Try loading from the defines dict if unrecognizable character
                        newNumber = definesDict[line[13:].strip()]
                        try:
                            newNumber = int(newNumber)
                        except ValueError:
                            newNumber = int(newNumber, 16)

                        newNumber = str(hex(newNumber)).split('0x')[1]
                        ReplaceBytes(rom2, offset, newNumber) 
                    rom2.close()

def hook():
    if os.path.isfile(HOOKS):
        table = GetSymbols(GetTextSection())
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

                files, symbol, address, register = line.split()
                offset = int(address, 16) - 0x08000000
                try:
                    code = table[symbol]
                except KeyError:
                    print('Symbol missing:', symbol)
                    continue
                if(files == "arm9"):
                    rom2 = open("base/arm9.bin", 'rb+')
                else:
                    rom2 = open("base/overlay/overlay_"+files+".bin", 'rb+')
                Hook(rom2, code, offset, int(register))
                rom2.close()

def writeall():
    OFFECTSFILES = "build/a028/8_0"
    with open(OFFECTSFILES, 'rb+') as rom:
        print("Inserting code.")
        table = GetSymbols(GetTextSection())
        with open(OUTPUT, 'rb') as binary:
            rom.seek(OFFSET_START - 0x023c8000)
            rom.write(binary.read())
            binary.close()
        rom.close()

        for entry in table:
            table[entry] += OFFSET_START - 0x08000000
    width = max(map(len, table.keys())) + 1
    if os.path.isfile('offsets.ini'):
        offsetIni = open('offsets.ini', 'r+')
    else:
        offsetIni = open('offsets.ini', 'w')

    offsetIni.truncate()
    for key in sorted(table.keys()):
        fstr = ('{:' + str(width) + '} {:08X}')
        offsetIni.write(fstr.format(key + ':', table[key] + 0x08000000)  + " /" + fstr.format(key + ':', table[key] + 0x08000000 + 0x08000000 - OFFSET_START) + '\n')
    offsetIni.close()

def special():
    if os.path.isfile(SPECIAL_INSERTS) and os.path.isfile(SPECIAL_INSERTS_OUT):
        with open(SPECIAL_INSERTS, 'r') as file:
            offsetList = []
            for line in file:
                if line.strip().startswith('.org '):
                    offsetList.append(int(line.split('.org ')[1].split(',')[0], 16))

            offsetList.sort()

        with open(SPECIAL_INSERTS_OUT, 'rb') as binFile:
            for offset in offsetList:
                originalOffset = offset
                dataList = ""

                if offsetList.index(offset) == len(offsetList) - 1:
                    while True:
                        try:
                            binFile.seek(offset)
                            dataList += hex(binFile.read(1)[0]) + ' '
                        except IndexError:
                            break

                        offset += 1
                else:
                    binFile.seek(offset)
                    word = ExtractPointer(binFile.read(4))

                    while word != 0xFFFFFFFF:
                        binFile.seek(offset)
                        dataList += hex(binFile.read(1)[0]) + ' '
                        offset += 1

                        if offset in offsetList:  # Overlapping data
                            break

                        word = ExtractPointer(binFile.read(4))
                rom2 = open("base/overlay/overlay_0012.bin",'rb+')
                ReplaceBytes(rom2, originalOffset, dataList.strip())
                rom2.close()

def repoint():
    if os.path.isfile(ROUTINE_POINTERS):
        table = GetSymbols(GetTextSection())
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

                symbol, address = line.split()
                offset = int(address, 16) - 0x08000000
                try:
                    code = table[symbol]
                except KeyError:
                    print('Symbol missing:', symbol)
                    continue
                rom2 = open("base/arm9.bin",'rb+')
                Repoint(rom2, code, offset, 1)
                rom2.close()

def offset():
    if os.path.isfile(REPOINTS):
        table = GetSymbols(GetTextSection())
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
                offset = int(address, 16) - 0x08000000
                try:
                    code = table[symbol]
                except KeyError:
                    print('Symbol missing:', symbol)
                    continue
                rom = open("base/overlay/overlay_"+files+".bin",'rb+')
                Repoint(rom, code, offset)
                rom.close()

def decompress():
    if os.path.exists("build/arm9.bin"):
        os.remove("build/arm9.bin")
    shutil.copyfile("base/arm9.bin","build/arm9.bin")
    arm9 = open("build/arm9.bin","wb+")
    FNULL = open(os.devnull, 'w')
    with open("base/arm9.bin", 'rb') as rom:
        bin = rom.read()
        if len(bin) < 0xBC000:
            print("Decompress arm9.")
            rom.seek(0)
            bin2 = rom.read(len(bin) - 12)
            arm9.write(bin2)
            subprocess.run(["tools/blz.exe"] + ["-d", "build/arm9.bin"],stdout=FNULL)
            shutil.copyfile("build/arm9.bin","base/arm9.bin")
        rom.close()
        arm9.close()
    with open("base/overarm9.bin", 'rb+') as rom:
        rom.seek(0x19f)
        bunh=bytes([0x0])
        rom.write(bytes(bunh))
        rom.seek(0x1ff)
        rom.write(bytes(bunh))
        rom.seek(0x3f)
        rom.write(bytes(bunh))
        rom.seek(0xdf)
        rom.write(bytes(bunh))
        rom.seek(0x5f)
        rom.write(bytes(bunh))
        rom.seek(0x25f)
        rom.write(bytes(bunh))
        rom.seek(0x15f)
        rom.write(bytes(bunh))
        rom.seek(0xff)
        rom.write(bytes(bunh))
        rom.seek(0x7ff)
        rom.write(bytes(bunh))
        rom.seek(0xC1F)
        rom.write(bytes(bunh))
        rom.close()
    subprocess.run(["tools/blz.exe"] + ["-d", "base/overlay/overlay_0001.bin"],stdout=FNULL)
    subprocess.run(["tools/blz.exe"] + ["-d", "base/overlay/overlay_0002.bin"],stdout=FNULL)
    subprocess.run(["tools/blz.exe"] + ["-d", "base/overlay/overlay_0006.bin"],stdout=FNULL) 
    subprocess.run(["tools/blz.exe"] + ["-d", "base/overlay/overlay_0007.bin"],stdout=FNULL) 
    subprocess.run(["tools/blz.exe"] + ["-d", "base/overlay/overlay_0010.bin"],stdout=FNULL)
    subprocess.run(["tools/blz.exe"] + ["-d", "base/overlay/overlay_0012.bin"],stdout=FNULL)
    subprocess.run(["tools/blz.exe"] + ["-d", "base/overlay/overlay_0015.bin"],stdout=FNULL)
    subprocess.run(["tools/blz.exe"] + ["-d", "base/overlay/overlay_0018.bin"],stdout=FNULL)
    subprocess.run(["tools/blz.exe"] + ["-d", "base/overlay/overlay_0063.bin"],stdout=FNULL) 
    subprocess.run(["tools/blz.exe"] + ["-d", "base/overlay/overlay_0096.bin"],stdout=FNULL) 

def changeoffset():
    txt = open('offsets.ini', 'r',encoding="utf-8")
    p = txt.readlines()
    txt.close()

    word = ""
    for i in p:
        if "PokeIconPalNumGet:" in i:
            word = i.replace(" ",'').split('/')[0].split(":")[1]
            break
    
    txt = open("armips/asm/offset.s", 'r',encoding="utf-8")
    p = txt.readlines()
    txt.close()

    f = 0
    for i in p:
        if "PokeIconPalNumGet" in i:
            p[f] = "PokeIconPalNumGet equ 0x" + word + "\n"
            break
        f +=1
    txt = open("armips/asm/offset.s", 'w',encoding="utf-8")
    txt.writelines(p)
    txt.close()

if __name__ == '__main__':
    #decompress()
    writeall()
    install()
    hook()
    repoint()
    offset()
    changeoffset()
