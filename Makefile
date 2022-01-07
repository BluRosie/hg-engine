# Makefile
ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro)
endif

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

TOOLCHAIN := $(DEVKITARM)

.PHONY: clean all


ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE := .exe
endif

default: all

ROMNAME = rom.nds
BUILDROM = test.nds
####################### Tools #########################
MSGENC = tools/msgenc$(EXE)
NITROGFX = tools/nitrogfx$(EXE)
NDSTOOL = tools/ndstool$(EXE)
JSONPROC = tools/jsonproc$(EXE)
O2NARC = tools/o2narc$(EXE)
KNARC = tools/knarc$(EXE)
BLZ = tools/blz$(EXE)
ARMIPS = tools/armips$(EXE)
POKEPICTOOL = tools/pokepic$(EXE)
NARCHIVE = tools/narchive$(EXE)
####################### Seting ########################
PREFIX = bin/arm-none-eabi-
AS = $(DEVKITARM)/$(PREFIX)as
CC = $(DEVKITARM)/$(PREFIX)gcc
LD = $(DEVKITARM)/$(PREFIX)ld
OBJCOPY = $(DEVKITARM)/$(PREFIX)objcopy

LDFLAGS = rom.ld -T linker.ld
ASFLAGS = -mthumb -I ./data
CFLAGS = -mthumb -mno-thumb-interwork -mcpu=arm7tdmi -mtune=arm7tdmi -mno-long-calls -march=armv4t -Wall -Wextra -Os -fira-loop-pressure -fipa-pta

PYTHON = python3.7
LINK = build/linked.o
OUTPUT = build/output.bin
####################### output #########################
C_SUBDIR = src
ASM_SUBDIR = asm
INCLUDE_SUBDIR = include
BUILD = build

INCLUDE_SRCS := $(wildcard $(INCLUDE_SUBDIR)/*.h)

C_SRCS := $(wildcard $(C_SUBDIR)/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(BUILD)/%.d,$(ASM_SRCS))
OBJS     := $(C_OBJS) $(ASM_OBJS)

OW_SPRITES_SRC := $(wildcard data/graphics/overworlds/*.png)
OW_SPRITES_OBJS := $(patsubst data/graphics/overworlds/*.png,build/data/graphics/overworlds/%.swav,$(OW_SPRITES_SRC))

####################### Build #########################
build/%.d:asm/%.s
	$(AS) $(ASFLAGS) -c $< -o $@

build/%.o:src/%.c
	mkdir -p build
	@echo -e "\e[32;1mCompiling $<\e[37;1m"
	$(CC) $(CFLAGS) -c $< -o $@

$(LINK):$(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(C_OBJS) $(ASM_OBJS)

$(OUTPUT):$(LINK)
	$(OBJCOPY) -O binary $< $@

all: $(OUTPUT)
	rm -rf base
	mkdir -p base
	mkdir -p build/pokemonow
	mkdir -p build/pokemonicon
	mkdir -p build/a018
	mkdir -p build/text
	mkdir -p build/move
	mkdir -p build/move/move_seq
	mkdir -p build/move/move_anim
	$(NDSTOOL) -x $(ROMNAME) -9 base/arm9.bin -7 base/arm7.bin -y9 base/overarm9.bin -y7 base/overarm7.bin -d base/root -y base/overlay -t base/banner.bin -h base/header.bin
	@echo -e "\e[32;1m$(ROMNAME) Decompression successful!!\e[37;1m"
	$(NARCHIVE) extract base/root/a/0/2/8 -o build/a028/ -nf
	$(PYTHON) scripts/make.py
	$(ARMIPS) armips/global.s
	$(NARCHIVE) extract base/root/a/0/2/7 -o build/text -nf
	$(PYTHON) scripts/build.py
	make move_narc
	$(NARCHIVE) create base/root/a/0/2/8 build/a028/ -nf
	@echo -e "\e[32;1mMaking ROM..\e[37;1m"
	$(NDSTOOL) -c $(BUILDROM) -9 base/arm9.bin -7 base/arm7.bin -y9 base/overarm9.bin -y7 base/overarm7.bin -d base/root -y base/overlay -t base/banner.bin -h base/header.bin
	@echo -e "\e[32;1mDone.\e[37;1m"

clean:
	rm -r build
	rm -r base

move_narc:
	@echo "battle hud layout:"
	$(NARCHIVE) extract base/root/a/0/0/7 -o build/a007/ -nf
	cp -r rawdata/battle_sprite/. build/a007
	$(NARCHIVE) create base/root/a/0/0/7 build/a007/ -nf
	rm -rf build/a007/
	
	@echo "move particles:"
	$(NARCHIVE) extract base/root/a/0/2/9 -o build/a029/ -nf
	cp -r rawdata/move_spa/. build/a029
	$(NARCHIVE) create base/root/a/0/2/9 build/a029/ -nf
	rm -rf build/a029/

	@echo "move animations:"
	$(NARCHIVE) extract base/root/a/0/1/0 -o build/a010/ -nf
	cp -r build/move/move_anim/. build/a010
	$(NARCHIVE) create base/root/a/0/1/0 build/a010/ -nf
	#rm -rf build/a010/

	@echo "move subeffects:"
	$(NARCHIVE) extract base/root/a/0/0/1 -o build/a001/ -nf
	cp -r build/move/move_seq/. build/a001
	$(NARCHIVE) create base/root/a/0/0/1 build/a001/ -nf
	rm -rf build/a001/

	@echo "item gfx:"
	$(NARCHIVE) extract base/root/a/0/1/8 -o build/a018/ -nf
	$(NARCHIVE) create base/root/a/0/1/8 build/a018/ -nf

	@echo "scripts:"
	$(NARCHIVE) extract base/root/a/0/1/2 -o build/a012/ -nf
	cp -r data/script/. build/a012
	$(NARCHIVE) create base/root/a/0/1/2 build/a012/ -nf
	rm -rf build/a012/

	@echo "text data:"
	$(NARCHIVE) extract base/root/a/0/2/7 -o build/text/ -nf
	$(MSGENC) -e -c charmap.txt data/text/197.txt build/text/7_197
	$(MSGENC) -e -c charmap.txt data/text/221.txt build/text/7_221
	$(MSGENC) -e -c charmap.txt data/text/222.txt build/text/7_222
	$(MSGENC) -e -c charmap.txt data/text/223.txt build/text/7_223
	$(MSGENC) -e -c charmap.txt data/text/237.txt build/text/7_237
	$(MSGENC) -e -c charmap.txt data/text/803.txt build/text/7_803
	$(MSGENC) -e -c charmap.txt data/text/811.txt build/text/7_811
	$(MSGENC) -e -c charmap.txt data/text/812.txt build/text/7_812
	$(MSGENC) -e -c charmap.txt data/text/813.txt build/text/7_813
	$(MSGENC) -e -c charmap.txt data/text/814.txt build/text/7_814
	$(MSGENC) -e -c charmap.txt data/text/815.txt build/text/7_815
	$(MSGENC) -e -c charmap.txt data/text/816.txt build/text/7_816
	$(NARCHIVE) create base/root/a/0/2/7 build/text/ -nf
	
	@echo "item data files:"
	$(NARCHIVE) extract base/root/a/0/1/7 -o build/itemdata -nf
	cp -r rawdata/itemdata/. build/itemdata/
	$(NARCHIVE) create base/root/a/0/1/7 build/itemdata -nf
	
	
	
	@echo "mon data:"
	mkdir -p build/a002
	$(ARMIPS) armips/data/mondata.s
	$(NARCHIVE) create base/root/a/0/0/2 build/a002 -nf
	
	@echo "mon sprite data:"
	$(NARCHIVE) create base/root/a/0/0/4 build/pokemonpic -nf
	$(NARCHIVE) create base/root/pbr/pokegra.narc build/pokemonpic -nf

	@echo "mon sprite offsets (a180):"
	$(NARCHIVE) extract base/root/a/1/8/0 -o build/a180/ -nf
	$(ARMIPS) armips/data/spriteoffsets.s
	$(NARCHIVE) create base/root/a/1/8/0 build/a180/ -nf

	@echo "mon height offsets (a005):"
	mkdir -p build/a005
	#$(NARCHIVE) extract base/root/a/0/0/5 -o build/a005/ -nf
	$(ARMIPS) armips/data/heighttable.s
	$(NARCHIVE) create base/root/a/0/0/5 build/a005/ -nf
	
	@echo "pokemon icons:"
	$(ARMIPS) armips/data/iconpalettetable.s
	$(NARCHIVE) create base/root/a/0/2/0 build/pokemonicon -nf
	
	@echo "pokemon overworlds:"
	mkdir -p build/a141
	$(ARMIPS) armips/data/monoverworlds.s
	cp build/pokemonow.narc base/root/a/0/8/1
	$(NARCHIVE) create base/root/a/1/4/1 build/a141 -nf
	
	@echo "baby mons:"
	$(ARMIPS) armips/data/babymons.s
	
	@echo "move an updated gs_sound_data.sdat:"
	cp rawdata/gs_sound_data.sdat base/root/data/sound/gs_sound_data.sdat

	@echo "dex area data:"
	$(NARCHIVE) extract base/root/a/1/3/3 -o build/a133 -nf
	$(ARMIPS) armips/data/pokedex/areadata.s
	$(NARCHIVE) create base/root/a/1/3/3 build/a133 -nf

	@echo "pokedex sort lists:"
	mkdir -p a214
	$(ARMIPS) armips/data/pokedex/pokedexdata.s
	$(NARCHIVE) create base/root/a/2/1/4 a214 -nf
	rm -r a214
	
	@echo "egg moves:"
	mkdir -p build/kowaza
	$(ARMIPS) armips/data/eggmoves.s
	$(NARCHIVE) create base/root/kowaza.narc build/kowaza -nf
	cp base/root/kowaza.narc base/root/a/2/2/9
	
	@echo "evolution data:"
	mkdir -p build/a034
	$(ARMIPS) armips/data/evodata.s
	$(NARCHIVE) create base/root/a/0/3/4 build/a034 -nf
	
	@echo "make footprints:"
	$(NARCHIVE) create base/root/a/0/6/9 rawdata/footprints -nf
	
	@echo "mon learnset data:"
	$(NARCHIVE) extract base/root/a/0/3/3 -o build/a033 -nf
	$(ARMIPS) armips/data/levelupdata.s
	$(NARCHIVE) create base/root/a/0/3/3 build/a033 -nf

	@echo "regional dex order:"
	mkdir -p build/a138
	$(ARMIPS) armips/data/regionaldex.s
	$(NARCHIVE) create base/root/a/1/3/8 build/a138 -nf
	
	@echo "tutor data:"
	$(ARMIPS) armips/data/tutordata.s
