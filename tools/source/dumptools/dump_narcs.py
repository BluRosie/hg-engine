import sys
import os
import pprint

# Helper methods for reading narcs and parsing .inc files
from dump_scripts.dump_tools import *

# Scripts for dumping parsed narcs to armips
from dump_scripts.mondata import dump_mondata
from dump_scripts.moves import dump_moves
from dump_scripts.encounters import dump_encounters
from dump_scripts.evodata import dump_evodata
from dump_scripts.levelupdata import dump_levelupdata
from dump_scripts.trainerdata import dump_trainerdata


if __name__ == "__main__":
	with open(sys.argv[1], 'rb') as f:
		rom = ndspy.rom.NintendoDSRom(f.read())

	os.makedirs("dumped_armips", exist_ok=True)

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
	with open('./dumped_armips/encounters.s', 'w', encoding="utf-8") as file:
		file.write(dump_encounters(encounters_narc, EXPANDED))

	# Dump Evolutions

	evodata_narc = dump_narc(rom, 'a/0/3/4', (EXPANDED_EVO_NARC_FORMAT if EXPANDED else EVO_NARC_FORMAT))
	with open('./dumped_armips/evodata.s', 'w', encoding="utf-8") as file:
		file.write(dump_evodata(evodata_narc))

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
