from dump_scripts.dump_tools import *

def dump_levelupdata(narc):
	levelupdata_armip = ""
	levelupdata_armip += ".nds\n"
	levelupdata_armip += ".thumb\n\n"
	levelupdata_armip += ".include \"armips/include/macros.s\"\n\n"
	levelupdata_armip += ".include \"asm/include/moves.inc\"\n"
	levelupdata_armip += ".include \"asm/include/species.inc\"\n\n"
	levelupdata_armip += "// the level up moves for each pokemon\n\n\n"

	is_expanded = True if ("move_id_29" in narc[0]) else False
	max_moves = 41 if is_expanded else 20

	for idx, levelup in enumerate(narc):
		levelupdata_armip += f'levelup {MONS["SPECIES"][idx]}\n'

		for n in range(0,max_moves):
			if levelup[f"move_id_{n}"] != 0xFFFF and levelup[f"move_id_{n}"] != 0 and levelup[f"lvl_learned_{n}"] <= 100:
				levelupdata_armip += f'    learnset {MOVES["MOVE"][levelup[f"move_id_{n}"]]}, {levelup[f"lvl_learned_{n}"]}\n'
			else:
				levelupdata_armip += "    terminatelearnset\n\n\n"
				break

	levelupdata_armip += get_remaining_lines("armips/data/levelupdata.s", len(narc), "levelup")

	return levelupdata_armip
