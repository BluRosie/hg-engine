# Makefile

MAC = $(shell uname -s | grep -i -q 'darwin'; echo $$?)

ifneq ($(MAC), 0)
# see if on msys2, but only if not on mac because /proc/version doesn't exist there
MSYS2 = $(shell grep -i -q 'msys' /proc/version; echo $$?)
else
MSYS2 = 1
endif

# environment setting
# get rid of devkitpro:  if devkitpro is installed, can still use it.  otherwise, default to arm-none-eabi tools
ifeq ($(shell echo $$DEVKITARM),)
ifeq ($(MSYS2), 0)
PREFIX = /mingw64/bin/arm-none-eabi-
AS = $(PREFIX)as
CC = $(PREFIX)gcc
LD = $(PREFIX)ld
OBJCOPY = $(PREFIX)objcopy
else
PREFIX = arm-none-eabi-
AS = $(PREFIX)as
CC = $(PREFIX)gcc
LD = $(PREFIX)ld
OBJCOPY = $(PREFIX)objcopy
endif
else
# support legacy devkitpro instructions
PREFIX = bin/arm-none-eabi-
AS = $(DEVKITARM)/$(PREFIX)as
CC = $(DEVKITARM)/$(PREFIX)gcc
LD = $(DEVKITARM)/$(PREFIX)ld
OBJCOPY = $(DEVKITARM)/$(PREFIX)objcopy
endif
PYTHON = python3

.PHONY: clean all

ifeq ($(MSYS2), 0)
CSC := csc
else
CSC := mcs -pkg:dotnet
endif

default: all

ROMNAME = rom.nds
BUILDROM = test.nds

####################### Tools #######################
ADPCMXQ := tools/adpcm-xq
ARMIPS := tools/armips
BLZ := tools/blz
BTX := $(PYTHON) tools/overworld-btx.py
ENCODEPWIMG := tools/ENCODE_IMG
GFX := tools/nitrogfx
MSGENC := tools/msgenc
NARCHIVE := $(PYTHON) tools/narcpy.py
NDSTOOL := tools/ndstool
NTRWAVTOOL := $(PYTHON) tools/ntrWavTool.py
O2NARC := tools/o2narc
SDATTOOL := $(PYTHON) tools/SDATTool.py
SWAV2SWAR_EXE := tools/swav2swar.exe
SWAV2SWAR := mono $(SWAV2SWAR_EXE)

# Compiler/Assembler/Linker settings
LDFLAGS = rom.ld -T linker.ld
ASFLAGS = -mthumb -I ./data
CFLAGS = -mthumb -mno-thumb-interwork -mcpu=arm7tdmi -mtune=arm7tdmi -mno-long-calls -march=armv4t -Wall -Wextra -Wno-builtin-declaration-mismatch -Wno-sequence-point -Wno-address-of-packed-member -Os -fira-loop-pressure -fipa-pta

####################### Output #######################
C_SUBDIR = src
ASM_SUBDIR = asm
INCLUDE_SUBDIR = include
BUILD := build
BUILD_NARC := $(BUILD)/narc
BASE := base
FILESYS := $(BASE)/root

LINK = $(BUILD)/linked.o
OUTPUT = $(BUILD)/output.bin

INCLUDE_SRCS := $(wildcard $(INCLUDE_SUBDIR)/*.h)

C_SRCS := $(wildcard $(C_SUBDIR)/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(BUILD)/%.d,$(ASM_SRCS))
OBJS     := $(C_OBJS) $(ASM_OBJS)

## includes
include data/graphics/pokegra.mk
include data/itemdata/itemdata.mk
include data/codetables.mk
include narcs.mk
include overlays.mk

####################### Build Tools #######################
MSGENC_SOURCES := $(wildcard tools/source/msgenc/*.cpp) $(wildcard tools/source/msgenc/*.h)
$(MSGENC): tools/source/msgenc/*
	cd tools/source/msgenc ; $(MAKE)
	mv tools/source/msgenc/msgenc tools/msgenc

TOOLS += $(MSGENC)

$(SWAV2SWAR_EXE): tools/source/swav2swar/Principal.cs
	cd tools ; $(CSC) /target:exe /out:swav2swar.exe "source/swav2swar/Principal.cs"

TOOLS += $(SWAV2SWAR_EXE)

$(NDSTOOL):
ifeq (,$(wildcard $(NDSTOOL)))
	rm -r -f tools/source/ndstool
	cd tools/source ; git clone https://github.com/devkitPro/ndstool.git
	cd tools/source/ndstool ; git checkout fa6b6d01881363eb2cd6e31d794f51440791f336
	cd tools/source/ndstool ; find . -name '*.sh' -execdir chmod +x {} \;
	cd tools/source/ndstool ; ./autogen.sh
	cd tools/source/ndstool ; ./configure && $(MAKE)
	mv tools/source/ndstool/ndstool tools/ndstool
	rm -r -f tools/source/ndstool
endif

TOOLS += $(NDSTOOL)

$(ARMIPS):
ifeq (,$(wildcard $(ARMIPS)))
	rm -r -f tools/source/armips
	cd tools/source ; git clone --recursive https://github.com/BluRosie/armips.git
	#cd tools/source ; cp -r ~/git/armips armips
	cd tools/source/armips ; mkdir build
	cd tools/source/armips/build ; cmake -DCMAKE_BUILD_TYPE=Release ..
	cd tools/source/armips/build ; cmake --build .
	mv tools/source/armips/build/armips tools/armips
	rm -r -f tools/source/armips
endif

TOOLS += $(ARMIPS)

$(ADPCMXQ):
ifeq (,$(wildcard $(ADPCMXQ)))
	rm -r -f tools/source/adpcm-xq
	cd tools/source ; git clone https://github.com/dbry/adpcm-xq.git
	cd tools/source/adpcm-xq ; gcc -O2 *.c -o adpcm-xq -lm
	mv tools/source/adpcm-xq/adpcm-xq $(ADPCMXQ)
	rm -r -f tools/source/adpcm-xq
endif

TOOLS += $(ADPCMXQ)

tools/ntrWavTool.py:
ifeq (,$(wildcard tools/ntrWavTool.py))
	rm -r -f tools/source/ntrWavTool
	cd tools/source ; git clone https://github.com/turtleisaac/ntrWavTool.git
	mv tools/source/ntrWavTool/ntrWavTool.py tools/ntrWavTool.py
	rm -r -f tools/source/ntrWavTool
endif

TOOLS += tools/ntrWavTool.py

NITROGFX_SOURCES := $(wildcard tools/source/nitrogfx/*.c) $(wildcard tools/source/nitrogfx/*.h)
$(GFX): $(NITROGFX_SOURCES)
	cd tools/source/nitrogfx ; $(MAKE)
	mv tools/source/nitrogfx/nitrogfx $(GFX)

TOOLS += $(GFX)

$(O2NARC): $(wildcard tools/source/o2narc/*.cpp) $(wildcard tools/source/o2narc/*.h)
	cd tools/source/o2narc ; $(MAKE)
	mv tools/source/o2narc/o2narc $(O2NARC)

TOOLS += $(O2NARC)

$(ENCODEPWIMG):
	cd tools/source/DECODEIMG ; $(MAKE)
	mv tools/source/DECODEIMG/ENCODE_IMG $(ENCODEPWIMG)

TOOLS += $(ENCODEPWIMG)

####################### Build #######################
rom_gen.ld:$(LINK) $(OUTPUT) rom.ld
	cp rom.ld rom_gen.ld
	$(PYTHON) scripts/generate_ld.py

$(BUILD)/%.d:asm/%.s
	$(AS) $(ASFLAGS) -c $< -o $@

$(BUILD)/%.o:src/%.c
	@mkdir -p $(BUILD) $(BUILD)/field $(BUILD)/battle $(BUILD)/pokedex $(BUILD)/individual
	@echo -e "Compiling"
	$(CC) $(CFLAGS) -c $< -o $@

$(LINK):$(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

$(OUTPUT):$(LINK)
	$(OBJCOPY) -O binary $< $@

all: $(TOOLS) $(OUTPUT) $(OVERLAY_OUTPUTS)
	rm -rf $(BASE)
	@mkdir -p $(BASE) $(BUILD) $(BUILD)/move $(BUILD)/objects $(MOVE_SEQ_DIR) $(MOVE_SEQ_OBJ_DIR) $(BATTLE_EFF_DIR) $(BATTLE_EFF_OBJ_DIR) $(BATTLE_SUB_DIR) $(BATTLE_SUB_OBJ_DIR)
	mkdir -p $(BUILD)/pokemonow $(BUILD)/pokemonicon $(BUILD)/pokemonpic $(BUILD)/a018 $(BUILD)/narc $(BUILD)/text $(BUILD)/move $(BUILD)/a011  $(BUILD)/rawtext
	mkdir -p $(BUILD)/move/move_anim $(BUILD)/move/move_sub_anim $(BUILD)/move/move_anim $(BUILD)/pw_pokegra $(BUILD)/pw_pokeicon $(BUILD)/pw_pokegra_int $(BUILD)/pw_pokeicon_int
	###The line below is because of junk files that macOS can create which will interrupt the build process###
	find . -name '*.DS_Store' -execdir rm -f {} \;
	$(NDSTOOL) -x $(ROMNAME) -9 $(BASE)/arm9.bin -7 $(BASE)/arm7.bin -y9 $(BASE)/overarm9.bin -y7 $(BASE)/overarm7.bin -d $(FILESYS) -y $(BASE)/overlay -t $(BASE)/banner.bin -h $(BASE)/header.bin
	@echo "$(ROMNAME) Decompression successful!!"
	$(NARCHIVE) extract $(FILESYS)/a/0/2/8 -o $(BUILD)/a028/ -nf
	$(PYTHON) scripts/make.py
	$(MAKE) move_narc
	$(ARMIPS) armips/global.s
	$(NARCHIVE) create $(FILESYS)/a/0/2/8 $(BUILD)/a028/ -nf
	@echo "Making ROM..."
	$(NDSTOOL) -c $(BUILDROM) -9 $(BASE)/arm9.bin -7 $(BASE)/arm7.bin -y9 $(BASE)/overarm9.bin -y7 $(BASE)/overarm7.bin -d $(FILESYS) -y $(BASE)/overlay -t $(BASE)/banner.bin -h $(BASE)/header.bin
	@echo "Done.  See output $(BUILDROM)."


####################### Restore clean base ################
NEWFILE = romOld-`date +%d%b%y`.nds
CLEANROM = romClean.nds
restore:
	mv $(ROMNAME) $(NEWFILE)
	cp $(CLEANROM) $(ROMNAME)

####################### Restore and build ################
restore_build: | restore all

####################### Clean #######################
clean:
	rm -rf $(BUILD)
	rm -rf $(BASE)
	rm -rf rom_gen.ld rom_gen_battle.ld

clean_tools:
	rm -f $(TOOLS)

clean_code:
	rm -f $(OBJS) $(OVERLAY_OBJS) $(LINKED_OUTPUTS) $(OUTPUT) $(OVERLAY_OUTPUTS) rom_gen.ld rom_gen_battle.ld

####################### Debug #######################
print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

####################### Final ROM Build #######################
CODE_ADDON_ARTIFACTS := $(wildcard build/a028/9_*) $(wildcard build/a028/8_1*) $(wildcard build/a028/8_2*) build/a028/8_07 build/a028/8_08 build/a028/8_09
CODE_ADDON_ARTIFACTS := $(filter-out build/a028/8_1 build/a028/8_2 build/a028/8_3 build/a028/8_4 build/a028/8_5 build/a028/8_6, $(CODE_ADDON_ARTIFACTS))

move_narc: $(NARC_FILES)
	@echo "battle hud layout:"
	cp $(BATTLEHUD_NARC) $(BATTLEHUD_TARGET)

	@echo "move data:"
	cp $(MOVEDATA_NARC) $(MOVEDATA_TARGET)

	@echo "move particles:"
	cp $(MOVEPARTICLES_NARC) $(MOVEPARTICLES_TARGET)

	@echo "item data files:"
	cp $(ITEMDATA_NARC) $(ITEMDATA_TARGET)

	@echo "mon sprite data:"
	cp $(POKEGRA_NARC) $(POKEGRA_TARGET)
	cp $(POKEGRA_NARC) $(PBR_POKEGRA_TARGET)

	@echo "opening demo files:"
	cp $(OPENDEMO_NARC) $(OPENDEMO_TARGET)

	@echo "mon data properties:"
	cp $(MONDATA_NARC) $(MONDATA_TARGET)

	@echo "sprite offsets:"
	cp $(SPRITEOFFSETS_NARC) $(SPRITEOFFSETS_TARGET)

	@echo "mon height offsets (a005):"
	cp $(HEIGHT_NARC) $(HEIGHT_TARGET)

	@echo "dex area data:"
	cp $(DEXAREA_NARC) $(DEXAREA_TARGET)

	@echo "pokedex sort lists:"
	cp $(DEXSORT_NARC) $(DEXSORT_TARGET)

	@echo "egg moves:"
	cp $(EGGMOVES_NARC) $(EGGMOVES_TARGET)
	cp $(EGGMOVES_NARC) $(EGGMOVES_TARGET_2)

	@echo "evolution data:"
	cp $(EVOS_NARC) $(EVOS_TARGET)

	@echo "mon learnset data:"
	cp $(LEARNSET_NARC) $(LEARNSET_TARGET)

	@echo "regional dex order:"
	cp $(REGIONALDEX_NARC) $(REGIONALDEX_TARGET)

	@echo "trainer data:"
	cp $(TRAINERDATA_NARC) $(TRAINERDATA_TARGET)
	cp $(TRAINERDATA_NARC_2) $(TRAINERDATA_TARGET_2)

	@echo "trainer text:"
	cp $(TRAINERTEXT_NARC) $(TRAINERTEXT_TARGET)
	cp $(TRAINERTEXT_NARC_2) $(TRAINERTEXT_TARGET_2)

	@echo "footprints:"
	cp $(FOOTPRINTS_NARC) $(FOOTPRINTS_TARGET)

	@echo "move anims:"
	cp $(MOVEANIM_NARC) $(MOVEANIM_TARGET)

	@echo "move sub animations:"
	cp $(MOVESUBANIM_NARC) $(MOVESUBANIM_TARGET)

	@echo "move battle scripts:"
	cp $(MOVE_SEQ_NARC) $(MOVE_SEQ_TARGET)

	@echo "move battle scripts:"
	cp $(BATTLE_EFF_NARC) $(BATTLE_EFF_TARGET)

	@echo "battle sub effects:"
	cp $(BATTLE_SUB_NARC) $(BATTLE_SUB_TARGET)

	@echo "item gfx:"
	cp $(ITEMGFX_NARC) $(ITEMGFX_TARGET)

	@echo "dex gfx for fairy:"
	cp $(DEXGFX_NARC) $(DEXGFX_TARGET)

	@echo "battle gfx for fairy:"
	cp $(BATTLEGFX_NARC) $(BATTLEGFX_TARGET)

	@echo "otherpoke gfx for fairy:"
	cp $(OTHERPOKE_NARC) $(OTHERPOKE_TARGET)

	@echo "pokemon icons:"
	$(ARMIPS) armips/data/iconpalettetable.s
	cp $(ICONGFX_NARC) $(ICONGFX_TARGET)

	@echo "wild encounters:"
	cp $(ENCOUNTER_NARC) $(ENCOUNTER_TARGET)

	@echo "pokemon overworlds:"
	cp $(OVERWORLDS_NARC) $(OVERWORLDS_TARGET)

	@echo "pokemon overworld data:"
	cp $(OVERWORLD_DATA_NARC) $(OVERWORLD_DATA_TARGET)

	@echo "move an updated gs_sound_data.sdat:"
	cp $(SDAT_BUILD) $(SDAT_TARGET)

	@echo "text data:"
	cp $(MSGDATA_NARC) $(MSGDATA_TARGET)

	@echo "ball spa files:"
	cp $(BALL_SPA_NARC) $(BALL_SPA_TARGET)

	@echo "pokewalker sprites:"
	cp $(PW_POKEGRA_NARC) $(PW_POKEGRA_TARGET)

	@echo "pokewalker icons:"
	cp $(PW_POKEICON_NARC) $(PW_POKEICON_TARGET)

	@echo "font:"
	if [ $$(grep -i -c "//#define IMPLEMENT_TRANSPARENT_TEXTBOXES" include/config.h) -eq 0 ]; then cp $(FONT_NARC) $(FONT_TARGET); fi

	@echo "textbox:"
	if [ $$(grep -i -c "//#define IMPLEMENT_TRANSPARENT_TEXTBOXES" include/config.h) -eq 0 ]; then cp $(TEXTBOX_NARC) $(TEXTBOX_TARGET); fi

	@echo "scripts:"
	cp $(SCR_SEQ_NARC) $(SCR_SEQ_TARGET)

	@echo "headbutt trees:"
	cp $(HEADBUTT_NARC) $(HEADBUTT_TARGET)


	@echo "baby mons:"
	$(ARMIPS) armips/data/babymons.s

	@echo "tutor moves and tm moves:"
	$(PYTHON) scripts/tm_learnset.py --writetmlist armips/data/tmlearnset.txt
	$(PYTHON) scripts/tutor_learnset.py --writemovecostlist armips/data/tutordata.txt
	$(PYTHON) scripts/tutor_learnset.py armips/data/tutordata.txt

	@if test -s build/a028/8_00; then \
		rm -rf build/a028/8_0 build/a028/8_1 build/a028/8_2 build/a028/8_3 build/a028/8_4 build/a028/8_5 build/a028/8_6 build/a028/8_7 build/a028/8_8 build/a028/8_9; \
	fi
	@if test -s build/a028/8_7; then \
		rm -rf build/a028/8_7 build/a028/8_8 build/a028/8_9; \
	fi
	@rm -rf $(CODE_ADDON_ARTIFACTS)

	@echo "hidden ability table:"
	cp $(HIDDEN_ABILITY_TABLE_BIN) $(HIDDEN_ABILITY_TABLE_TARGET)

	@echo "base experience table:"
	cp $(BASE_EXPERIENCE_TABLE_BIN) $(BASE_EXPERIENCE_TABLE_TARGET)

	@echo "mon overworld data:"
	$(ARMIPS) $(OVERWORLD_DATA_DEPENDENCIES)

	@echo "species to ow gfx table:"
	cp $(SPECIES_TO_OW_GFX_BIN) $(SPECIES_TO_OW_GFX_TARGET)

	@echo "form data table:"
	cp $(POKEFORMDATATBL_BIN) $(POKEFORMDATATBL_TARGET)

# needed to keep the $(SDAT_OBJ_DIR)/WAVE_ARC_PV%/00.swav from being detected as an intermediate file
.SECONDARY:

# debug makefile print
print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
