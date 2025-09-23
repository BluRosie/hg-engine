from dump_scripts.dump_tools import *



def dump_moves(narc):
	MOVE_ENTRIES = get_move_entries(MOVES)

	MOVE_ENTRIES[923][0] = "movedatanoname NUM_OF_MOVES"
	MOVE_ENTRIES[923][1] = ""


	moves_armip = ""
	moves_armip += ".nds\n"
	moves_armip += ".thumb\n\n"
	moves_armip += ".include \"armips/include/macros.s\"\n"
	moves_armip += ".include \"armips/include/constants.s\"\n"
	moves_armip += ".include \"armips/include/config.s\"\n"
	moves_armip += ".include \"armips/include/movemacros.s\"\n\n"
	moves_armip += ".include \"asm/include/moves.inc\"\n"
	moves_armip += ".include \"asm/include/move_effects.inc\"\n\n"


	for idx, move in enumerate(narc):
		# print(MOVE_ENTRIES[idx][0])

		if idx > 923:
			break

		moves_armip += f"{MOVE_ENTRIES[idx][0]}"
		moves_armip += f'    battleeffect {MOVE_EFFECTS["MOVE"][move["effect"]]}\n'
		moves_armip += f'    pss {MOVE_MACROS["SPLIT"][move["category"]]}\n'
		moves_armip += f'    basepower {move["power"]}\n'
		moves_armip += f'    type {CONSTANTS["TYPE"][move["type"]]}\n'
		moves_armip += f'    accuracy {move["accuracy"]}\n'
		moves_armip += f'    pp {move["pp"]}\n'
		moves_armip += f'    effectchance {move["effect_chance"]}\n'
		moves_armip += f'    target {MOVE_MACROS["MOVEDATA"][move["target"]]}\n'
		moves_armip += f'    priority {move["priority"]}\n'
		moves_armip += f'    flags {get_flags(move["properties"])}\n'
		moves_armip += f'    appeal 0x{move["appeal"]:02x}\n'
		moves_armip += f'    contesttype {MOVE_MACROS["CONTEST"][move["contest_type"]]}\n'
		moves_armip += f'    terminatedata\n'
		moves_armip += MOVE_ENTRIES[idx][1]
		moves_armip += "\n"
	moves_armip += get_remaining_lines("armips/data/moves.s", len(narc), "movedata")

	return moves_armip


# gets move data not present in narc from armips/data/moves.s
def get_move_entries(indexed_moves):
	with open("armips/data/moves.s", 'r') as f:
		content = f.readlines()

	move_entries = {}
	current_move_index = 0

	for index, line in enumerate(content):
		if "movedata" in line:
			# make sure entry matches
			move_name = ""
			move_entry = ""
			
	
			if (len(content) > index + 14) and "movedescription" in content[index + 14]:
				move_name = line
				move_entry += content[index + 14]

			move_entries[current_move_index] = [move_name, move_entry]
			current_move_index += 1

	return move_entries

def get_flags(value):
    flags = {
        0x01: "FLAG_CONTACT",
        0x02: "FLAG_PROTECT", 
        0x04: "FLAG_MAGIC_COAT",
        0x08: "FLAG_SNATCH",
        0x10: "FLAG_MIRROR_MOVE",
        0x20: "FLAG_KINGS_ROCK",
        0x40: "FLAG_KEEP_HP_BAR",
        0x80: "FLAG_HIDE_SHADOW"
    }
    
    active_flags = []
    for flag_value, flag_name in flags.items():
        if value & flag_value:
            active_flags.append(flag_name)
            
    return " | ".join(active_flags) if active_flags else "0x00"

