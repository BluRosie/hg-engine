#!/usr/bin/env python3

from glob import glob
from pathlib import Path
import os
import shutil
import itertools
import hashlib
import subprocess
import sys
from datetime import datetime

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
            print('...\nDevkit not found.')
            sys.exit(1)

    PREFIX = '/arm-none-eabi-'
    AS = PATH + PREFIX + 'as'
    CC = PATH + PREFIX + 'gcc'
    LD = PATH + PREFIX + 'ld'
    GR = 'deps/grit.exe'
    WAV2AGB = 'deps/wav2agb.exe'
    MID2AGB = 'deps/mid2agb.exe'
    OBJCOPY = PATH + PREFIX + 'objcopy'

SRC = './src'
GRAPHICS = './graphics'
ASSEMBLY = './armips/script'
STRINGS = './strings'
AUDIO = './audio'
BUILD = './build'
IMAGES = './Images'
ASFLAGS = ['-mthumb', '-I', ASSEMBLY]
LDFLAGS = ['PLA.ld', '-T', 'linker.ld']
CFLAGS = ['-mthumb', '-mno-thumb-interwork', '-mcpu=arm7tdmi', '-mtune=arm7tdmi',
          '-mno-long-calls', '-march=armv4t', '-Wall', '-Wextra', '-Os', '-fira-loop-pressure', '-fipa-pta']

def RunCommand(cmd: [str]):
    """Runs the command line command."""
    try:
        subprocess.check_output(cmd)
    except subprocess.CalledProcessError as e:
        try:
            print(e.output.decode(), file=sys.stderr)
        except:
            print(e)
        sys.exit(1)


def build_sprite():
    DIR = "data/graphics/sprites"
    NARC = "build/pokemonpic.narc"
    BUILD = "build/pokemonpic"

    get_dir = os.listdir(DIR)
    fileExists = os.path.isfile(NARC)

    flag = 0
    if not os.path.exists(BUILD):
        os.makedirs(BUILD)

    for i in get_dir:
        flag = 0
        for s in os.listdir(DIR +"/" + i):
            if fileExists and os.path.getmtime(DIR + "/" + i) < os.path.getmtime(NARC):
                continue
            flag = 1
            break

    cmd = ["tools/gengfxnarc.exe"] + ["data/graphics/sprites",BUILD,str(len(get_dir) - 1)]
    print("generating gfx data for folder " + i + "...")
    RunCommand(cmd)

def build_icon():
    DIR = "data/graphics/icongfx"
    NARC = "build/pokemonicon.narc"

    get_dir = os.listdir(DIR)
    fileExists = os.path.isfile(NARC)

    flag = False

    for i in get_dir:
        if int(i.replace(".png","")) > 999:
            OBJ = "build/pokemonicon/2_" + i.replace(".png",".NCGR")
        else:
            OBJ = "build/pokemonicon/1_" + i.replace(".png",".NCGR")
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + "/" + i) < os.path.getmtime(OBJ):
            continue
        cmd = ["tools/nitrogfx.exe"] + ["data/graphics/icongfx/" + i, OBJ , "-clobbersize", "-version101"]
        flag = True
        RunCommand(cmd)
        
    if not fileExists or flag:
        for i in os.listdir("rawdata/first files from a020/"):
            shutil.copy("rawdata/first files from a020/" + i, "build/pokemonicon/" + i)

def build_anim_script():
    DIR = "armips/move/move_anim/"
    BUILD = "build/move/move_anim/"

    get_dir = os.listdir(DIR)
    if len(get_dir) == 0:
        return

    for i in get_dir:
        OBJ = BUILD + i.replace(".s","")
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + i) < os.path.getmtime(OBJ):
            continue
        cmd = ["tools/armips.exe"] + [DIR + i]
        print("script "+i)
        RunCommand(cmd)

def build_seq_script():
    DIR = "armips/move/move_seq/"
    BUILD = "build/move/move_seq/"

    get_dir = os.listdir(DIR)
    if len(get_dir) == 0:
        return

    for i in get_dir:
        OBJ = BUILD + i.replace(".s","")
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + i) < os.path.getmtime(OBJ):
            continue
        cmd = ["tools/armips.exe"] + [DIR + i]
        print("script "+i)
        RunCommand(cmd)
    
def build_item_sprite():
    DIR = "data/graphics/item/"
    BUILD = "build/a018/"

    get_dir = os.listdir(DIR)

    for i in get_dir:
        OBJ = BUILD + "8_" + i.replace(".png","") + ".NCGR"
        OBJ2 = BUILD + "8_" + str(int(i.replace(".png","")) + 1)
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + i) < os.path.getmtime(OBJ):
            continue
        cmd = ["tools/nitrogfx.exe"] + ["data/graphics/item/" + i, OBJ , "-clobbersize", "-version101"]
        print("item "+i)
        RunCommand(cmd)
        cmd = ["tools/nitrogfx.exe"] + ["data/graphics/item/" + i, OBJ2 + ".NCLR" , "-ir" ,"-bitdepth","4"]
        RunCommand(cmd)

def build_ow():
    DIR = "data/graphics/overworlds"
    NARC = "build/pokemonow.narc"

    get_dir = os.listdir(DIR)
    fileExists = os.path.isfile(NARC)

    flag = False
    file = []

    cmd_extract = ["tools/narchive.exe"] + ["extract", "base/root/a/0/8/1", "-o","build/pokemonow","-nf"]
    cmd_narc = ["tools/narchive.exe"] + ["create", "build/pokemonow.narc", "build/pokemonow","-nf"]

    for i in get_dir:
        if "_shiny" in i:
            continue
        if len(i) > 7:
            OBJ = "build/pokemonow/2_" + i.replace(".png","")
        else:
            OBJ = "build/pokemonow/1_" + i.replace(".png","")
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + "/" + i) < os.path.getmtime(OBJ):
            continue
        cmd = ["tools/pngtobtx0.exe"] + [DIR + "/" + i,OBJ]
        print("build " + i)
        file.append(i.replace(".png",''))
        flag = True
        RunCommand(cmd)
        
    if not fileExists or flag:
        RunCommand(cmd_extract)
        #for i in file:
        #    if len(i) > 3:
        #        shutil.copyfile("build/pokemonow/2_" + i, "build/pokemonow/2_" + i)
        #    else:
        #        shutil.copyfile("build/pokemonow/1_" + i, "build/pokemonow/1_" + i)
        RunCommand(cmd_narc)


if __name__ == '__main__':
    build_sprite()
    build_icon()
    build_anim_script()
    build_seq_script()
    build_item_sprite()
    build_ow()