# Makefile
ifeq ($(strip $DEVKITPRO),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro)
endif

ifeq ($(strip $DEVKITARM),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

TOOLCHAIN := $(DEVKITARM)

.PHONY: clean all

SYSTEM = $(shell grep -i -q 'microsoft' /proc/version; echo $$?)

ifeq ($(SYSTEM), 0)
EXE := .exe
SEP := \\

SWAV2SWAR := tools/swav2swar.exe
BTX := tools/pngtobtx0.exe
else
EXE := 
SEP := /

SWAV2SWAR := mono tools/swav2swar.exe
BTX := mono tools/pngtobtx0.exe
endif

default: all

ROMNAME = rom.nds
BUILDROM = test.nds
####################### Tools #########################
PYTHON = python3
O2NARC = tools/o2narc
MSGENC = tools/msgenc
NDSTOOL = tools/ndstool
BLZ = tools/blz
ARMIPS = tools/armips
NARCHIVE = $(PYTHON) tools/narcpy.py
GFX = tools/nitrogfx
SDATTOOL = $(PYTHON) tools/SDATTool.py
ADPCMXQ = adpcm-xq
NTRWAVTOOL = $(PYTHON) tools/ntrWavTool.py
###################### Setting ########################
PREFIX = bin/arm-none-eabi-
AS = $(DEVKITARM)/$(PREFIX)as
CC = $(DEVKITARM)/$(PREFIX)gcc
LD = $(DEVKITARM)/$(PREFIX)ld
OBJCOPY = $(DEVKITARM)/$(PREFIX)objcopy
CSC = csc$(EXE)

LDFLAGS = rom.ld -T linker.ld
LDFLAGS_FIELD = rom_gen.ld -T linker_field.ld
LDFLAGS_BATTLE = rom_gen.ld -T linker_battle.ld
ASFLAGS = -mthumb -I ./data
CFLAGS = -mthumb -mno-thumb-interwork -mcpu=arm7tdmi -mtune=arm7tdmi -mno-long-calls -march=armv4t -Wall -Wextra -Os -fira-loop-pressure -fipa-pta

LINK = build/linked.o
OUTPUT = build/output.bin
BATTLE_LINK = build/battle_linked.o
BATTLE_OUTPUT = build/output_battle.bin
FIELD_LINK = build/field_linked.o
FIELD_OUTPUT = build/output_field.bin
####################### output ########################
C_SUBDIR = src
ASM_SUBDIR = asm
INCLUDE_SUBDIR = include
BUILD := build
BUILD_NARC := $(BUILD)/narc
BASE := base
FILESYS := $(BASE)/root


INCLUDE_SRCS := $(wildcard $(INCLUDE_SUBDIR)/*.h)

C_SRCS := $(wildcard $(C_SUBDIR)/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(BUILD)/%.d,$(ASM_SRCS))
OBJS     := $(C_OBJS) $(ASM_OBJS)

BATTLE_C_SRCS := $(wildcard $(C_SUBDIR)/battle/*.c)
BATTLE_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(BATTLE_C_SRCS))
BATTLE_ASM_SRCS := $(wildcard $(ASM_SUBDIR)/battle/*.s)
BATTLE_ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(BUILD)/%.d,$(BATTLE_ASM_SRCS))
BATTLE_OBJS   := $(BATTLE_C_OBJS) $(BATTLE_ASM_OBJS) build/thumb_help.d

FIELD_C_SRCS := $(wildcard $(C_SUBDIR)/field/*.c)
FIELD_C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(BUILD)/%.o,$(FIELD_C_SRCS))
FIELD_ASM_SRCS := $(wildcard $(ASM_SUBDIR)/field/*.s)
FIELD_ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(BUILD)/%.d,$(FIELD_ASM_SRCS))
FIELD_OBJS   := $(FIELD_C_OBJS) $(FIELD_ASM_OBJS) build/thumb_help.d

## includes
include data/graphics/pokegra.mk
include data/itemdata/itemdata.mk
include narcs.mk

####################### Build #########################
rom_gen.ld:$(LINK) $(OUTPUT) rom.ld
	cp rom.ld rom_gen.ld
	$(PYTHON) scripts/generate_ld.py

$(BUILD)/%.d:asm/%.s
	$(AS) $(ASFLAGS) -c $< -o $@

$(BUILD)/%.o:src/%.c
	mkdir -p $(BUILD) $(BUILD)/field $(BUILD)/battle
	@echo -e "Compiling"
	$(CC) $(CFLAGS) -c $< -o $@

$(LINK):$(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

$(OUTPUT):$(LINK)
	$(OBJCOPY) -O binary $< $@

$(FIELD_LINK):$(FIELD_OBJS) rom_gen.ld
	$(LD) $(LDFLAGS_FIELD) -o $@ $(FIELD_OBJS)

$(FIELD_OUTPUT):$(FIELD_LINK)
	$(OBJCOPY) -O binary $< $@

$(BATTLE_LINK):$(BATTLE_OBJS) rom_gen.ld
	$(LD) $(LDFLAGS_BATTLE) -o $@ $(BATTLE_OBJS)

$(BATTLE_OUTPUT):$(BATTLE_LINK)
	$(OBJCOPY) -O binary $< $@

all: $(OUTPUT) $(BATTLE_OUTPUT) $(FIELD_OUTPUT)
	rm -rf $(BASE)
	mkdir -p $(BASE)
	mkdir -p $(BUILD)
	mkdir -p $(BUILD)/pokemonow $(BUILD)/pokemonicon $(BUILD)/pokemonpic $(BUILD)/a018 $(BUILD)/narc $(BUILD)/text $(BUILD)/move $(BUILD)/a011  $(BUILD)/rawtext
	mkdir -p $(BUILD)/move/battle_sub_seq $(BUILD)/move/battle_eff_seq $(BUILD)/move/battle_move_seq $(BUILD)/move/move_anim $(BUILD)/move/move_sub_anim $(BUILD)/move/move_anim
	###The line below is because of junk files that macOS can create which will interrupt the build process###
	find . -name '*.DS_Store' -execdir rm -f {} \;
	$(NDSTOOL) -x $(ROMNAME) -9 $(BASE)/arm9.bin -7 $(BASE)/arm7.bin -y9 $(BASE)/overarm9.bin -y7 $(BASE)/overarm7.bin -d $(FILESYS) -y $(BASE)/overlay -t $(BASE)/banner.bin -h $(BASE)/header.bin
	@echo -e "$(ROMNAME) Decompression successful!!"
	$(NARCHIVE) extract $(FILESYS)/a/0/2/8 -o $(BUILD)/a028/ -nf
	$(PYTHON) scripts/make.py
	$(ARMIPS) armips/global.s
	$(MAKE) move_narc
	$(NARCHIVE) create $(FILESYS)/a/0/2/8 $(BUILD)/a028/ -nf
	@echo -e "Making ROM.."
	$(NDSTOOL) -c $(BUILDROM) -9 $(BASE)/arm9.bin -7 $(BASE)/arm7.bin -y9 $(BASE)/overarm9.bin -y7 $(BASE)/overarm7.bin -d $(FILESYS) -y $(BASE)/overlay -t $(BASE)/banner.bin -h $(BASE)/header.bin
	@echo -e "Done."


build_tools:
	cd tools/source/msgenc ; $(MAKE)
	mv tools/source/msgenc/msgenc tools/msgenc

	cd tools ; $(CSC) /target:exe /out:pngtobtx0.exe "source$(SEP)BTX Editor$(SEP)Program-P.cs" "source$(SEP)BTX Editor$(SEP)pngtobtx0.cs" "source$(SEP)BTX Editor$(SEP)BTX0.cs"

	cd tools ; $(CSC) /target:exe /out:swav2swar.exe "source$(SEP)swav2swar$(SEP)Principal.cs"

	rm -r -f tools/source/ndstool
	cd tools/source ; git clone https://github.com/devkitPro/ndstool.git
	cd tools/source/ndstool ; git checkout fa6b6d01881363eb2cd6e31d794f51440791f336
	cd tools/source/ndstool ; find . -name '*.sh' -execdir chmod +x {} \;
	cd tools/source/ndstool ; ./autogen.sh
	cd tools/source/ndstool ; ./configure && $(MAKE)
	mv tools/source/ndstool/ndstool tools/ndstool
	rm -r -f tools/source/ndstool

	rm -r -f tools/source/armips
	cd tools/source ; git clone --recursive https://github.com/Kingcom/armips.git
	cd tools/source/armips ; mkdir build
	cd tools/source/armips/build ; cmake -DCMAKE_BUILD_TYPE=Release ..
	cd tools/source/armips/build ; cmake --build .
	mv tools/source/armips/build/armips tools/armips
	rm -r -f tools/source/armips

	rm -r -f tools/source/adpcm-xq
	cd tools/source ; git clone https://github.com/dbry/adpcm-xq.git
	cd tools/source/adpcm-xq ; gcc -O2 *.c -o $(ADPCMXQ)
	mv tools/source/adpcm-xq/$(ADPCMXQ) tools/$(ADPCMXQ)
	rm -r -f tools/source/adpcm-xq

	rm -r -f tools/source/ntrWavTool
	cd tools/source ; git clone https://github.com/turtleisaac/ntrWavTool.git
	mv tools/source/ntrWavTool/ntrWavTool.py tools/ntrWavTool.py
	rm -r -f tools/source/ntrWavTool


build_nitrogfx:
	cd tools/source/nitrogfx ; $(MAKE)
	mv tools/source/nitrogfx/nitrogfx tools/nitrogfx
	cd tools/source/o2narc ; $(MAKE)
	mv tools/source/o2narc/o2narc tools/o2narc



clean:
	rm -rf $(BUILD)
	rm -rf $(BASE)
	rm -rf tools/source/ndstool
	rm -rf tools/source/armips



clean_tools:
	rm -f tools/msgenc
	rm -f tools/pngtobtx0.exe
	rm -f tools/swav2swar.exe
	rm -f tools/ndstool
	rm -f tools/armips
	rm -f tools/nitrogfx
	rm -f tools/adpcm-xq


print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true


# ideally this is all just copying and no building.
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

	@echo "font:"
	if [ $$(grep -i -c "//#define IMPLEMENT_TRANSPARENT_TEXTBOXES" include/config.h) -eq 0 ]; then cp $(FONT_NARC) $(FONT_TARGET); fi

	@echo "textbox:"
	if [ $$(grep -i -c "//#define IMPLEMENT_TRANSPARENT_TEXTBOXES" include/config.h) -eq 0 ]; then cp $(TEXTBOX_NARC) $(TEXTBOX_TARGET); fi


	@echo "baby mons:"
	$(ARMIPS) armips/data/babymons.s

	@echo "tutor data:"
	$(ARMIPS) armips/data/tutordata.s

# needed to keep the $(SDAT_OBJ_DIR)/WAVE_ARC_PV%/00.swav from being detected as an intermediate file
.SECONDARY:

# debug makefile print
print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
