#!/usr/bin/env python3

from glob import glob
from pathlib import Path
from platform import uname
import os
import shutil
import itertools
import hashlib
import subprocess
import sys
from datetime import datetime

EXE_PREFIX = ''

if sys.platform.startswith('win'):
    EXE_SUFFIX = '.exe'
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
else:
    EXE_SUFFIX = ''
    EXE_PREFIX = 'mono'
    PATH = ''


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
        cmd = ["tools/nitrogfx" + EXE_SUFFIX] + ["data/graphics/icongfx/" + i, OBJ , "-clobbersize", "-version101"]
        flag = True
        RunCommand(cmd)
        
    if not fileExists or flag:
        for i in os.listdir("rawdata/first files from a020/"):
            shutil.copy("rawdata/first files from a020/" + i, "build/pokemonicon/" + i)

def build_anim_script():
    DIR = "armips/move/move_anim/"
    BUILD = "build/move/move_anim/0_"

    get_dir = os.listdir(DIR)
    if len(get_dir) == 0:
        return

    for i in get_dir:
        OBJ = BUILD + i.replace(".s","")
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + i) < os.path.getmtime(OBJ):
            continue
        cmd = ["tools/armips" + EXE_SUFFIX] + [DIR + i]
        print("battle anim script "+i)
        RunCommand(cmd)

def build_anim_sub_script():
    DIR = "armips/move/move_sub_anim/"
    BUILD = "build/move/move_sub_anim/1_"

    get_dir = os.listdir(DIR)
    if len(get_dir) == 0:
        return

    for i in get_dir:
        OBJ = BUILD + i.replace(".s","")
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + i) < os.path.getmtime(OBJ):
            continue
        cmd = ["tools/armips" + EXE_SUFFIX] + [DIR + i]
        print("anim sub script "+i)
        RunCommand(cmd)
    
def build_battle_sub_seq_script():
    DIR = "armips/move/battle_sub_seq/"
    BUILD = "build/move/battle_sub_seq/1_"

    get_dir = os.listdir(DIR)
    if len(get_dir) == 0:
        return

    for i in get_dir:
        OBJ = BUILD + i.replace(".s","")
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + i) < os.path.getmtime(OBJ):
            continue
        cmd = ["tools/armips" + EXE_SUFFIX] + [DIR + i]
        print("battle sub script "+i)
        RunCommand(cmd)
    
def build_battle_move_seq_script():
    DIR = "armips/move/battle_move_seq/"
    BUILD = "build/move/battle_move_seq/0_"

    get_dir = os.listdir(DIR)
    if len(get_dir) == 0:
        return

    for i in get_dir:
        OBJ = BUILD + i.replace(".s","")
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + i) < os.path.getmtime(OBJ):
            continue
        cmd = ["tools/armips" + EXE_SUFFIX] + [DIR + i]
        print("battle move script "+i)
        RunCommand(cmd)
    
def build_battle_eff_seq_script():
    DIR = "armips/move/battle_eff_seq/"
    BUILD = "build/move/battle_eff_seq/0_"

    get_dir = os.listdir(DIR)
    if len(get_dir) == 0:
        return

    for i in get_dir:
        OBJ = BUILD + i.replace(".s","")
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + i) < os.path.getmtime(OBJ):
            continue
        cmd = ["tools/armips" + EXE_SUFFIX] + [DIR + i]
        print("battle eff script "+i)
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
        cmd = ["tools/nitrogfx" + EXE_SUFFIX] + ["data/graphics/item/" + i, OBJ , "-clobbersize", "-version101"]
        print("item "+i)
        RunCommand(cmd)
        cmd = ["tools/nitrogfx" + EXE_SUFFIX] + ["data/graphics/item/" + i, OBJ2 + ".NCLR" , "-ir" ,"-bitdepth","4"]
        RunCommand(cmd)

def build_ow():
    DIR = "data/graphics/overworlds"
    OUTPUTDIR = "build/pokemonow"
    NARC = "build/pokemonow.narc"

    get_dir = os.listdir(DIR)
    fileExists = os.path.isfile(NARC)
    get_out = os.listdir(OUTPUTDIR)

    flag = False
    file = []

    cmd_extract = ["python3"] + ["tools/narcpy.py"] + ["extract", "base/root/a/0/8/1", "-o","build/pokemonow","-nf"]
    cmd_narc = ["python3"] + ["tools/narcpy.py"] + ["create", "build/pokemonow.narc", "build/pokemonow","-nf"]
    
    RunCommand(cmd_extract)
    
    for i in get_dir:
        if "_shiny" in i:
            continue
        if os.path.isfile(OUTPUTDIR + "/1_0000"):
            OBJ = "build/pokemonow/1_" + i.replace(".png","")        
        else:
            OBJ = "build/pokemonow/2_" + i.replace(".png","")
            flag = True
        if os.path.isfile(OBJ) and os.path.getmtime(DIR + "/" + i) < os.path.getmtime(OBJ):
            continue
        if 'icrosoft' in uname().release:
            cmd = ["tools/pngtobtx0.exe"] + [DIR + "/" + i,OBJ]
        else:
            cmd = ["mono"] + ["tools/pngtobtx0.exe"] + [DIR + "/" + i,OBJ]
        print("build " + i)
        file.append(i.replace(".png",''))
        RunCommand(cmd)
        
    if flag == True:
        for i in range(297, 863):
            if os.path.isfile(OUTPUTDIR + "/1_" + str(i)):
                os.remove(OUTPUTDIR + "/1_" + str(i))

        #for i in file:
        #    if len(i) > 3:
        #        shutil.copyfile("build/pokemonow/2_" + i, "build/pokemonow/2_" + i)
        #    else:
        #        shutil.copyfile("build/pokemonow/1_" + i, "build/pokemonow/1_" + i)
    
    RunCommand(cmd_narc)


if __name__ == '__main__':
    #build_icon()
    build_anim_script()
    build_anim_sub_script()
    build_battle_eff_seq_script()
    build_battle_move_seq_script()
    build_battle_sub_seq_script()
    build_item_sprite()
    build_ow()