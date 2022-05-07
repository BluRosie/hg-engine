# Makefile
ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro)
endif

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

TOOLCHAIN := $(DEVKITARM)

.PHONY: clean all

SYSTEM = $(shell grep -i -q 'microsoft' /proc/version; echo $$?)

ifeq ($(SYSTEM), 0)
EXE := .exe
SEP := \\
else
EXE := 
SEP := /
endif

default: all

ROMNAME = rom.nds
BUILDROM = test.nds
####################### Tools #########################
MSGENC = tools/msgenc
NITROGFX = tools/nitrogfx
NDSTOOL = tools/ndstool
JSONPROC = tools/jsonproc$(EXE)
O2NARC = tools/o2narc$(EXE)
KNARC = tools/knarc$(EXE)
BLZ = tools/blz$(EXE)
ARMIPS = tools/armips
POKEPICTOOL = tools/pokepic$(EXE)
NARCHIVE = tools/narcpy.py
####################### Seting ########################
PREFIX = bin/arm-none-eabi-
AS = $(DEVKITARM)/$(PREFIX)as
CC = $(DEVKITARM)/$(PREFIX)gcc
LD = $(DEVKITARM)/$(PREFIX)ld
OBJCOPY = $(DEVKITARM)/$(PREFIX)objcopy
CSC = csc$(EXE)

LDFLAGS = rom.ld -T linker.ld
ASFLAGS = -mthumb -I ./data
CFLAGS = -mthumb -mno-thumb-interwork -mcpu=arm7tdmi -mtune=arm7tdmi -mno-long-calls -march=armv4t -Wall -Wextra -Os -fira-loop-pressure -fipa-pta

PYTHON = python3
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
	@echo -e "Compiling"
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
	mkdir -p build/move build/a011
	mkdir -p build/move/battle_sub_seq build/move/battle_eff_seq build/move/battle_move_seq build/move/move_anim build/move/move_sub_anim
	mkdir -p build/move/move_anim
	###The line below is because of junk files that macOS can create which will interrupt the build process###
	find . -name '*.DS_Store' -execdir rm -f {} \;
	$(NDSTOOL) -x $(ROMNAME) -9 base/arm9.bin -7 base/arm7.bin -y9 base/overarm9.bin -y7 base/overarm7.bin -d base/root -y base/overlay -t base/banner.bin -h base/header.bin
	@echo -e "$(ROMNAME) Decompression successful!!"
	$(PYTHON) $(NARCHIVE) extract base/root/a/0/2/8 -o build/a028/ -nf
	$(PYTHON) scripts/make.py
	$(ARMIPS) armips/global.s
	$(PYTHON) scripts/build.py
	make move_narc
	$(PYTHON) $(NARCHIVE) create base/root/a/0/2/8 build/a028/ -nf
	@echo -e "Making ROM.."
	$(NDSTOOL) -c $(BUILDROM) -9 base/arm9.bin -7 base/arm7.bin -y9 base/overarm9.bin -y7 base/overarm7.bin -d base/root -y base/overlay -t base/banner.bin -h base/header.bin
	@echo -e "Done."


code_and_data_only: $(OUTPUT)
    ### solely rebuilding the code and moving the narcs ###
	#$(PYTHON) $(NARCHIVE) extract base/root/a/0/2/8 -o build/a028/ -nf
	$(PYTHON) scripts/make.py
	$(ARMIPS) armips/global.s
	make move_narc
	$(PYTHON) $(NARCHIVE) create base/root/a/0/2/8 build/a028/ -nf
	@echo -e "Making ROM.."
	$(NDSTOOL) -c $(BUILDROM) -9 base/arm9.bin -7 base/arm7.bin -y9 base/overarm9.bin -y7 base/overarm7.bin -d base/root -y base/overlay -t base/banner.bin -h base/header.bin
	@echo -e "Done."


code_only: $(OUTPUT)
    ### solely rebuilding the code and moving the narcs ###
	#$(PYTHON) $(NARCHIVE) extract base/root/a/0/2/8 -o build/a028/ -nf
	$(PYTHON) scripts/make.py
	$(ARMIPS) armips/global.s
	$(PYTHON) $(NARCHIVE) create base/root/a/0/2/8 build/a028/ -nf
	@echo -e "Making ROM.."
	$(NDSTOOL) -c $(BUILDROM) -9 base/arm9.bin -7 base/arm7.bin -y9 base/overarm9.bin -y7 base/overarm7.bin -d base/root -y base/overlay -t base/banner.bin -h base/header.bin
	@echo -e "Done."


build_tools:
	cd tools ; $(CSC) /target:exe /out:gengfxnarc.exe source$(SEP)gengfxnarc.cs

	cd tools/source/msgenc ; make
	mv tools/source/msgenc/msgenc tools/msgenc

	cd tools ; $(CSC) /target:exe /out:pngtobtx0.exe source$(SEP)BTX\ Editor$(SEP)Program-P.cs source$(SEP)BTX\ Editor$(SEP)pngtobtx0.cs source$(SEP)BTX\ Editor$(SEP)BTX0.cs

	rm -r -f tools/source/ndstool
	cd tools/source ; git clone https://github.com/devkitPro/ndstool.git
	cd tools/source/ndstool ; find . -name '*.sh' -execdir chmod +x {} \;
	cd tools/source/ndstool ; ./autogen.sh
	cd tools/source/ndstool ; ./configure && make
	mv tools/source/ndstool/ndstool tools/ndstool
	rm -r -f tools/source/ndstool

	rm -r -f tools/source/armips
	cd tools/source ; git clone --recursive https://github.com/Kingcom/armips.git
	cd tools/source/armips ; mkdir build
	cd tools/source/armips/build ; cmake -DCMAKE_BUILD_TYPE=Release ..
	cd tools/source/armips/build ; cmake --build .
	mv tools/source/armips/build/armips tools/armips
	rm -r -f tools/source/armips


build_nitrogfx:
	cd tools/source/nitrogfx ; make
	mv tools/source/nitrogfx/nitrogfx tools/nitrogfx



clean:
	rm -r -f build
	rm -r -f base
	rm -r -f tools/source/ndstool
	rm -r -f tools/source/armips



clean_tools:
	rm -f tools/genbabymondata$(EXE)
	rm -f tools/gendexsortlists$(EXE)
	rm -f tools/geneggmovedata$(EXE)
	rm -f tools/genevodatatxt$(EXE)
	rm -f tools/genheightdata$(EXE)
	rm -f tools/genleveldatatxt$(EXE)
	rm -f tools/genmonareadexdata$(EXE)
	rm -f tools/genmondatatxt$(EXE)
	rm -f tools/gentutormovedata$(EXE)
	rm -f tools/replacehexwithdec$(EXE)
	rm -f tools/sortmonareadexdata$(EXE)
	rm -f tools/gengfxdata.exe
	rm -f tools/gengfxicons.exe
	rm -f tools/gengfxnarc.exe
	rm -f tools/geniconnarc.exe
	rm -f tools/ncgrtopng.exe
	rm -f tools/pngtoncgr.exe
	rm -f tools/msgenc
	rm -f tools/btx0topng.exe
	rm -f tools/pngtobtx0.exe
	rm -f tools/ndstool
	rm -f tools/armips
	rm -f tools/ndstool



move_narc:
	@echo "battle hud layout:"
	$(PYTHON) $(NARCHIVE) extract base/root/a/0/0/7 -o build/a007/ -nf
	cp -r rawdata/battle_sprite/. build/a007
	$(PYTHON) $(NARCHIVE) create base/root/a/0/0/7 build/a007/ -nf
	rm -rf build/a007/
	
	@echo "move data:"
	$(ARMIPS) armips/data/moves.s
	$(PYTHON) $(NARCHIVE) create base/root/a/0/1/1 build/a011/ -nf

	@echo "move particles:"
	$(PYTHON) $(NARCHIVE) extract base/root/a/0/2/9 -o build/a029/ -nf
	cp -r rawdata/move_spa/. build/a029
	$(PYTHON) $(NARCHIVE) create base/root/a/0/2/9 build/a029/ -nf
	rm -rf build/a029/

	@echo "move animations:"
	$(PYTHON) $(NARCHIVE) create base/root/a/0/1/0 build/move/move_anim -nf

	@echo "move sub animations:"
	$(PYTHON) $(NARCHIVE) create base/root/a/0/6/1 build/move/move_sub_anim -nf

	@echo "battle move scripts:"
	$(PYTHON) $(NARCHIVE) create base/root/a/0/0/0 build/move/battle_move_seq -nf

	@echo "battle effect scripts:"
	$(PYTHON) $(NARCHIVE) create base/root/a/0/3/0 build/move/battle_eff_seq -nf

	@echo "battle sub effects:"
	$(PYTHON) $(NARCHIVE) create base/root/a/0/0/1 build/move/battle_sub_seq -nf

	@echo "item gfx:"
	$(PYTHON) $(NARCHIVE) extract base/root/a/0/1/8 -o build/a018/ -nf
	$(PYTHON) $(NARCHIVE) create base/root/a/0/1/8 build/a018/ -nf

	@echo "scripts:"
	$(PYTHON) $(NARCHIVE) extract base/root/a/0/1/2 -o build/a012/ -nf
	cp -r data/script/. build/a012
	$(PYTHON) $(NARCHIVE) create base/root/a/0/1/2 build/a012/ -nf
	rm -rf build/a012/

	@echo "text data:"
	$(PYTHON) $(NARCHIVE) extract base/root/a/0/2/7 -o build/text/ -nf
	$(MSGENC) -e -c charmap.txt data/text/003.txt build/text/7_003
	$(MSGENC) -e -c charmap.txt data/text/197.txt build/text/7_197
	$(MSGENC) -e -c charmap.txt data/text/221.txt build/text/7_221
	$(MSGENC) -e -c charmap.txt data/text/222.txt build/text/7_222
	$(MSGENC) -e -c charmap.txt data/text/223.txt build/text/7_223
	$(MSGENC) -e -c charmap.txt data/text/237.txt build/text/7_237
	$(MSGENC) -e -c charmap.txt data/text/720.txt build/text/7_720
	$(MSGENC) -e -c charmap.txt data/text/721.txt build/text/7_721
	$(MSGENC) -e -c charmap.txt data/text/722.txt build/text/7_722
	$(MSGENC) -e -c charmap.txt data/text/749.txt build/text/7_749
	$(MSGENC) -e -c charmap.txt data/text/750.txt build/text/7_750
	$(MSGENC) -e -c charmap.txt data/text/751.txt build/text/7_751
	$(MSGENC) -e -c charmap.txt data/text/803.txt build/text/7_803
	$(MSGENC) -e -c charmap.txt data/text/811.txt build/text/7_811
	$(MSGENC) -e -c charmap.txt data/text/812.txt build/text/7_812
	$(MSGENC) -e -c charmap.txt data/text/813.txt build/text/7_813
	$(MSGENC) -e -c charmap.txt data/text/814.txt build/text/7_814
	$(MSGENC) -e -c charmap.txt data/text/815.txt build/text/7_815
	$(MSGENC) -e -c charmap.txt data/text/816.txt build/text/7_816
	$(PYTHON) $(NARCHIVE) create base/root/a/0/2/7 build/text/ -nf

	@echo "item data files:"
	$(PYTHON) $(NARCHIVE) extract base/root/a/0/1/7 -o build/itemdata -nf
	cp -r rawdata/itemdata/. build/itemdata/
	$(PYTHON) $(NARCHIVE) create base/root/a/0/1/7 build/itemdata -nf


	@echo "opening demo files"
	$(PYTHON) $(NARCHIVE) extract base/root/a/2/6/2 -o build/a262 -nf
	cp -r rawdata/op_demo/. build/a262
	$(PYTHON) $(NARCHIVE) create base/root/a/2/6/2 build/a262 -nf



	@echo "mon data:"
	mkdir -p build/a002
	$(ARMIPS) armips/data/mondata.s
	$(PYTHON) $(NARCHIVE) create base/root/a/0/0/2 build/a002 -nf

	@echo "mon sprite data:"
	$(PYTHON) $(NARCHIVE) create base/root/a/0/0/4 build/pokemonpic -nf
	$(PYTHON) $(NARCHIVE) create base/root/pbr/pokegra.narc build/pokemonpic -nf

	@echo "mon sprite offsets (a180):"
	$(PYTHON) $(NARCHIVE) extract base/root/a/1/8/0 -o build/a180/ -nf
	$(ARMIPS) armips/data/spriteoffsets.s
	$(PYTHON) $(NARCHIVE) create base/root/a/1/8/0 build/a180/ -nf

	@echo "mon height offsets (a005):"
	mkdir -p build/a005
	#$(PYTHON) $(NARCHIVE) extract base/root/a/0/0/5 -o build/a005/ -nf
	$(ARMIPS) armips/data/heighttable.s
	$(PYTHON) $(NARCHIVE) create base/root/a/0/0/5 build/a005/ -nf

	@echo "pokemon icons:"
	$(ARMIPS) armips/data/iconpalettetable.s
	$(PYTHON) $(NARCHIVE) create base/root/a/0/2/0 build/pokemonicon -nf

	@echo "pokemon overworlds:"
	mkdir -p build/a141
	$(ARMIPS) armips/data/monoverworlds.s
	cp build/pokemonow.narc base/root/a/0/8/1
	$(PYTHON) $(NARCHIVE) create base/root/a/1/4/1 build/a141 -nf

	@echo "baby mons:"
	$(ARMIPS) armips/data/babymons.s

	@echo "move an updated gs_sound_data.sdat:"
	cp rawdata/gs_sound_data.sdat base/root/data/sound/gs_sound_data.sdat

	@echo "dex area data:"
	$(PYTHON) $(NARCHIVE) extract base/root/a/1/3/3 -o build/a133 -nf
	$(ARMIPS) armips/data/pokedex/areadata.s
	$(PYTHON) $(NARCHIVE) create base/root/a/1/3/3 build/a133 -nf

	@echo "pokedex sort lists:"
	mkdir -p a214
	$(ARMIPS) armips/data/pokedex/pokedexdata.s
	$(PYTHON) $(NARCHIVE) create base/root/a/2/1/4 a214 -nf
	rm -r a214

	@echo "egg moves:"
	mkdir -p build/kowaza
	$(ARMIPS) armips/data/eggmoves.s
	$(PYTHON) $(NARCHIVE) create base/root/kowaza.narc build/kowaza -nf
	cp base/root/kowaza.narc base/root/a/2/2/9

	@echo "evolution data:"
	mkdir -p build/a034
	$(ARMIPS) armips/data/evodata.s
	$(PYTHON) $(NARCHIVE) create base/root/a/0/3/4 build/a034 -nf

	@echo "make footprints:"
	$(PYTHON) $(NARCHIVE) create base/root/a/0/6/9 rawdata/footprints -nf

	@echo "mon learnset data:"
	mkdir -p build/a033
	$(ARMIPS) armips/data/levelupdata.s
	$(PYTHON) $(NARCHIVE) create base/root/a/0/3/3 build/a033 -nf

	@echo "regional dex order:"
	mkdir -p build/a138
	$(ARMIPS) armips/data/regionaldex.s
	$(PYTHON) $(NARCHIVE) create base/root/a/1/3/8 build/a138 -nf

	@echo "tutor data:"
	$(ARMIPS) armips/data/tutordata.s
	
	@echo "trainer data:"
	mkdir -p build/a055 build/a056
	$(ARMIPS) armips/data/trainers/trainers.s
	$(PYTHON) $(NARCHIVE) create base/root/a/0/5/5 build/a055 -nf
	$(PYTHON) $(NARCHIVE) create base/root/a/0/5/6 build/a056 -nf
