import sys
import os

# Helper methods for reading narcs and parsing .inc files
from dump_scripts.dump_tools import *

# Scripts for dumping parsed narcs to armips
from dump_scripts.mondata import dump_mondata
from dump_scripts.moves import dump_moves
from dump_scripts.encounters import dump_encounters_c
from dump_scripts.evodata import dump_evodata_c
from dump_scripts.baby_mons import dump_babymons_c
from dump_scripts.headbutt import dump_headbutt_c
from dump_scripts.height_table import dump_heighttable_c
from dump_scripts.levelupdata import dump_levelupdata
from dump_scripts.sprite_offsets import dump_spriteoffsets_c
from dump_scripts.trainerdata import dump_trainerdata
from dump_scripts.regional_dex import dump_regionaldex_c


if __name__ == "__main__":
	with open(sys.argv[1], 'rb') as f:
		rom = ndspy.rom.NintendoDSRom(f.read())

	os.makedirs("dumped_armips", exist_ok=True)
	os.makedirs("dumped_c", exist_ok=True)

	for stale_path in (
		"./dumped_armips/babymons.s",
		"./dumped_armips/encounters.s",
		"./dumped_armips/evodata.s",
		"./dumped_armips/heighttable.s",
		"./dumped_armips/spriteoffsets.s",
		"./dumped_armips/headbutt.s",
		"./dumped_armips/regionaldex.s",
	):
		if os.path.exists(stale_path):
			os.remove(stale_path)

	# Dump mondata

	mondata_narc = dump_narc(rom, "a/0/0/2", PERSONAL_NARC_FORMAT)
	EXPANDED = len(mondata_narc) > 508

	if EXPANDED:
		print("HG Engine Rom detected")


	with open('./dumped_armips/mondata.s', 'w', encoding="utf-8") as file:
		file.write(dump_mondata(mondata_narc))

	# Dump Moves

	moves_narc = dump_narc(rom, "a/0/1/1", MOVE_NARC_FORMAT)
	with open('./dumped_armips/moves.s', 'w', encoding="utf-8") as file:
		file.write(dump_moves(moves_narc))

	# Dump Encounters

	encounters_narc = dump_narc(rom, "a/0/3/7", ENCOUNTER_NARC_FORMAT)
	with open('./dumped_c/Encounters.c', 'w', encoding="utf-8") as file:
		file.write(dump_encounters_c(encounters_narc, EXPANDED))

	# Dump Evolutions

	evodata_narc = dump_narc(rom, 'a/0/3/4', (EXPANDED_EVO_NARC_FORMAT if EXPANDED else EVO_NARC_FORMAT))
	with open('./dumped_c/EvoData.c', 'w', encoding="utf-8") as file:
		file.write(dump_evodata_c(evodata_narc, EXPANDED))

	# Dump regional dex

	regionaldex_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/1/3/8"]])
	with open('./dumped_c/RegionalDex.c', 'w', encoding="utf-8") as file:
		file.write(dump_regionaldex_c(regionaldex_narc.files[0]))

	# Dump baby species mappings

	with open('./dumped_c/BabyMons.c', 'w', encoding="utf-8") as file:
		file.write(dump_babymons_c(rom.files[rom.filenames["poketool/personal/pms.narc"]]))

	# Dump height table

	heighttable_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/0/0/5"]])
	dump_heighttable_c(heighttable_narc.files, "./dumped_c/HeightTable.c")

	# Dump sprite offsets

	spriteoffsets_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/1/8/0"]])
	with open('./dumped_c/SpriteOffsets.c', 'w', encoding="utf-8") as file:
		file.write(dump_spriteoffsets_c(spriteoffsets_narc.files[0]))

	# Dump headbutt trees

	headbutt_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/2/5/2"]])
	dump_headbutt_c(headbutt_narc.files, "./dumped_c/headbutt")

	# Dump Learnsets

#	levelupdata_narc = dump_narc(rom, "a/0/3/3", (EXPANDED_LEARNSET_NARC_FORMAT if EXPANDED else LEARNSET_NARC_FORMAT))
#	with open('./dumped_armips/levelupdata.s', 'w', encoding="utf-8") as file:
#		file.write(dump_levelupdata(levelupdata_narc))

	# Dump Trainers

	trdata_narc = dump_narc(rom, "a/0/5/5", TRDATA_NARC_FORMAT)
	trpok_narc = dump_trpok_narc(rom, "a/0/5/6", trdata_narc)
	with open('./dumped_armips/trainers.s', 'w', encoding="utf-8") as file:
		file.write(dump_trainerdata(trdata_narc, trpok_narc, EXPANDED))




# HGSS_NARCS =

# ['a/0/5/5', 'trdata'],
# ['a/0/5/6', 'trpok'],
