from dump_scripts.dump_tools import *


def dump_mondata(narc):
	DEX_ENTRIES = get_mon_dex_entries(MONS) # => [ "mondata SPECIES_BLASTOISE, "Blastoise"", DEX_ENTRY_INFO ]


	mondata_armip = ""
	mondata_armip += ".nds\n"
	mondata_armip += ".thumb\n\n"
	mondata_armip += ".include \"armips/include/macros.s\"\n"
	mondata_armip += ".include \"armips/include/constants.s\"\n"
	mondata_armip += ".include \"armips/include/config.s\"\n\n"
	mondata_armip += ".include \"asm/include/abilities.inc\"\n"
	mondata_armip += ".include \"asm/include/items.inc\"\n"
	mondata_armip += ".include \"asm/include/species.inc\"\n\n\n"
	mondata_armip += "// all the mon personal data.  all learnset data is in data/learnsets, including tm's\n"
	mondata_armip += "// basestats and evyields fields are formatted as such:  hp atk def speed spatk spdef\n\n\n"

	for idx, mon in enumerate(narc):
		ev_yields = ["hp_yield", "atk_yield", "def_yield", "speed_yield", "spatk_yield", "spdef_yield"]
		ev_value = mon["evs"]

		for i, ev in enumerate(ev_yields):
			mon[ev] = (ev_value >> (i * 2)) & 0b11
		
		mondata_armip += f"{DEX_ENTRIES[idx][0]}"
		mondata_armip += f'    basestats {mon["base_hp"]}, {mon["base_atk"]}, {mon["base_def"]}, {mon["base_speed"]}, {mon["base_spatk"]}, {mon["base_spdef"]}\n'
		mondata_armip += f'    types {CONSTANTS["TYPE"][mon["type_1"]]}, {CONSTANTS["TYPE"][mon["type_2"]]}\n'
		mondata_armip += f'    catchrate {mon["catchrate"]}\n'
		mondata_armip += f'    baseexp 0 // defined in baseexp.s\n'
		mondata_armip += f'    evyields {mon["hp_yield"]}, {mon["atk_yield"]}, {mon["def_yield"]}, {mon["speed_yield"]}, {mon["spatk_yield"]}, {mon["spdef_yield"]}\n'
		mondata_armip += f'    items {ITEMS["ITEM"][mon["item_1"]]}, {ITEMS["ITEM"][mon["item_2"]]}\n'
		mondata_armip += f'    genderratio {mon["gender"]}\n'
		mondata_armip += f'    eggcycles {mon["hatch_cycle"]}\n'
		mondata_armip += f'    basefriendship {mon["base_happy"]}\n'
		mondata_armip += f'    growthrate {CONSTANTS["GROWTH"][mon["exp_rate"]]}\n'
		mondata_armip += f'    egggroups {CONSTANTS["EGG"][mon["egg_group_1"]]}, {CONSTANTS["EGG"][mon["egg_group_2"]]}\n'
		mondata_armip += f'    abilities {ABILITIES["ABILITY"][mon["ability_1"]]}, {ABILITIES["ABILITY"][mon["ability_2"]]}\n'
		mondata_armip += f'    runchance {mon["flee"]}\n'
		mondata_armip += f'    colorflip {CONSTANTS["BODY"][mon["color"] & 0x7F]}, {(mon["color"] & 0x80) >> 7}\n'
		mondata_armip += DEX_ENTRIES[idx][1]
		mondata_armip += "\n\n"

	mondata_armip += get_remaining_lines("armips/data/mondata.s", len(narc), "mondata")

	return mondata_armip

def get_mon_dex_entries(indexed_mons):
	with open("armips/data/mondata.s", 'r', encoding="utf-8") as f:
		content = f.readlines()

	dex_entries = {}
	current_mon_index = 0	
	for index, line in enumerate(content):
		if "mondata" in line:
			

			species_name = line
			dex_entry = ""		
			# make sure mon has a dex entry
			if (len(content) > index + 15) and "mondexentry" in content[index + 15]:
				
				dex_entry += content[index + 15]
				dex_entry += content[index + 16]
				dex_entry += content[index + 17]
				dex_entry += content[index + 18]

			dex_entries[current_mon_index] = [species_name, dex_entry]

			current_mon_index += 1

	return dex_entries