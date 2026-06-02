from dump_scripts.dump_tools import *

ENCOUNTER_AREA_NAMES = [
	"ENCDATA_T20_NEW_BARK_TOWN",
	"ENCDATA_R29_ROUTE_29",
	"ENCDATA_T21_CHERRYGROVE_CITY",
	"ENCDATA_R30_ROUTE_30",
	"ENCDATA_R31_ROUTE_31",
	"ENCDATA_T22_VIOLET_CITY",
	"ENCDATA_D15R0102_SPROUT_TOWER_2F",
	"ENCDATA_D15R0103_SPROUT_TOWER_3F",
	"ENCDATA_R32_ROUTE_32",
	"ENCDATA_D24R0101_RUINS_OF_ALPH_OUTSIDE",
	"ENCDATA_D24R0205_RUINS_OF_ALPH_INSIDE_MAIN_ROOM",
	"ENCDATA_D24R0216_RUINS_OF_ALPH_INSIDE_MAIN_ROOM_UNUSED",
	"ENCDATA_D24R0218_RUINS_OF_ALPH_INSIDE_MAIN_ROOM_UNUSED",
	"ENCDATA_D24R0217_RUINS_OF_ALPH_INSIDE_LADDER_ROOM",
	"ENCDATA_D25R0101_UNION_CAVE_1F",
	"ENCDATA_D25R0102_UNION_CAVE_B1F",
	"ENCDATA_D25R0103_UNION_CAVE_B2F",
	"ENCDATA_R33_ROUTE_33",
	"ENCDATA_D26R0102_SLOWPOKE_WELL_1F",
	"ENCDATA_D26R0103_SLOWPOKE_WELL_B2F",
	"ENCDATA_D36R0101_ILEX_FOREST",
	"ENCDATA_R34_ROUTE_34",
	"ENCDATA_R35_ROUTE_35",
	"ENCDATA_D22R0101_NATIONAL_PARK",
	"ENCDATA_D22R0102_NATIONAL_PARK_BUG_CATCHING_CONTEST",
	"ENCDATA_R36_ROUTE_36",
	"ENCDATA_R37_ROUTE_37",
	"ENCDATA_T27_ECRUTEAK_CITY",
	"ENCDATA_D18R0101_BURNED_TOWER_1F",
	"ENCDATA_D18R0102_BURNED_TOWER_B1F",
	"ENCDATA_D17R0102_BELL_TOWER_2F",
	"ENCDATA_D17R0103_BELL_TOWER_3F",
	"ENCDATA_D17R0104_BELL_TOWER_4F",
	"ENCDATA_D17R0105_BELL_TOWER_5F",
	"ENCDATA_D17R0106_BELL_TOWER_6F",
	"ENCDATA_D17R0107_BELL_TOWER_7F",
	"ENCDATA_D17R0108_BELL_TOWER_8F",
	"ENCDATA_D17R0109_BELL_TOWER_9F",
	"ENCDATA_R38_ROUTE_38",
	"ENCDATA_R39_ROUTE_39",
	"ENCDATA_T26_OLIVINE_CITY",
	"ENCDATA_W40_ROUTE_40",
	"ENCDATA_W41_ROUTE_41",
	"ENCDATA_D40R0101_WHIRL_ISLANDS_1F",
	"ENCDATA_D40R0102_WHIRL_ISLANDS_B1F",
	"ENCDATA_UNUSED_045_UNKNOWN_045",
	"ENCDATA_D40R0104_WHIRL_ISLANDS_B2F",
	"ENCDATA_UNUSED_047_UNKNOWN_047",
	"ENCDATA_D40R0106_WHIRL_ISLANDS_B3F_LEDGE_OVERLOOKING_LUGIA_ROOM",
	"ENCDATA_UNUSED_049_UNKNOWN_049",
	"ENCDATA_UNUSED_050_UNKNOWN_050",
	"ENCDATA_T24_CIANWOOD_CITY",
	"ENCDATA_R42_ROUTE_42",
	"ENCDATA_D38R0101_MT_MORTAR_WATERFALL_ROOM",
	"ENCDATA_D38R0102_MT_MORTAR_CENTRAL_ROOM",
	"ENCDATA_D38R0103_MT_MORTAR_ROOM_ABOVE_WATERFALL",
	"ENCDATA_D38R0104_MT_MORTAR_B1F",
	"ENCDATA_R43_ROUTE_43",
	"ENCDATA_T29_LAKE_OF_RAGE",
	"ENCDATA_R44_ROUTE_44",
	"ENCDATA_D39R0101_ICE_PATH_1F",
	"ENCDATA_D39R0102_ICE_PATH_B1F",
	"ENCDATA_D39R0103_ICE_PATH_B2F",
	"ENCDATA_D39R0104_ICE_PATH_B3F",
	"ENCDATA_UNUSED_064_UNKNOWN_064",
	"ENCDATA_T30_BLACKTHORN_CITY",
	"ENCDATA_D44R0102_DRAGONS_DEN",
	"ENCDATA_R45_ROUTE_45",
	"ENCDATA_R46_ROUTE_46",
	"ENCDATA_D42R0102_DARK_CAVE_ROUTE_31_ENTRANCE",
	"ENCDATA_D42R0101_DARK_CAVE_ROUTE_45_ENTRANCE",
	"ENCDATA_R47_ROUTE_47",
	"ENCDATA_D02R0103_MT_MOON_OUTSIDE_AREA",
	"ENCDATA_D02R0104_MT_MOON_OUTSIDE_CLEFAIRY_ACTIVE",
	"ENCDATA_D11R0101_SEAFOAM_ISLANDS_1F",
	"ENCDATA_D11R0102_SEAFOAM_ISLANDS_B1F",
	"ENCDATA_D11R0103_SEAFOAM_ISLANDS_B2F",
	"ENCDATA_D11R0104_SEAFOAM_ISLANDS_B3F",
	"ENCDATA_D11R0105_SEAFOAM_ISLANDS_B4F",
	"ENCDATA_D41R0105_MT_SILVER_MOLTRES_ROOM",
	"ENCDATA_D41R0106_MT_SILVER_3F",
	"ENCDATA_D41R0107_MT_SILVER_4F",
	"ENCDATA_D48R0101_CLIFF_EDGE_GATE",
	"ENCDATA_D50R0101_CLIFF_CAVE",
	"ENCDATA_D17R0112_BELL_TOWER_10F",
	"ENCDATA_T31_MT_SILVER_OUTSIDE_POKEMON_CENTER",
	"ENCDATA_D41R0101_MT_SILVER_1F",
	"ENCDATA_D41R0103_MT_SILVER_MOUNTAINSIDE",
	"ENCDATA_D41R0104_MT_SILVER_EXPERT_BELT_ROOM",
	"ENCDATA_D41R0102_MT_SILVER_TOP_SNOWY_AREA",
	"ENCDATA_UNUSED_090_UNKNOWN_090",
	"ENCDATA_D47R0102_SAFARI_ZONE_PLACEHOLDER_UNUSED",
	"ENCDATA_R12_ROUTE_12",
	"ENCDATA_W19_ROUTE_19",
	"ENCDATA_W20_ROUTE_20",
	"ENCDATA_T01_PALLET_TOWN",
	"ENCDATA_T02_VIRIDIAN_CITY",
	"ENCDATA_T04_CERULEAN_CITY",
	"ENCDATA_T06_VERMILION_CITY",
	"ENCDATA_T07_CELADON_CITY",
	"ENCDATA_T08_FUCHSIA_CITY",
	"ENCDATA_T09_CINNABAR_ISLAND",
	"ENCDATA_R48_ROUTE_48",
	"ENCDATA_R26_ROUTE_26",
	"ENCDATA_R27_ROUTE_27",
	"ENCDATA_R28_ROUTE_28",
	"ENCDATA_D02R0101_MT_MOON_1F",
	"ENCDATA_D02R0102_MT_MOON_2F",
	"ENCDATA_D05R0101_ROCK_TUNNEL_1F",
	"ENCDATA_D05R0102_ROCK_TUNNEL_B1F",
	"ENCDATA_D43R0101_VICTORY_ROAD_1F",
	"ENCDATA_R01_ROUTE_1",
	"ENCDATA_R02_ROUTE_2_SOUTH_BELOW_VIRIDIAN_FOREST",
	"ENCDATA_R03_ROUTE_3",
	"ENCDATA_R04_ROUTE_4",
	"ENCDATA_R05_ROUTE_5",
	"ENCDATA_R06_ROUTE_6",
	"ENCDATA_R07_ROUTE_7",
	"ENCDATA_R08_ROUTE_8",
	"ENCDATA_R09_ROUTE_9",
	"ENCDATA_R10_ROUTE_10",
	"ENCDATA_R11_ROUTE_11",
	"ENCDATA_R13_ROUTE_13",
	"ENCDATA_R14_ROUTE_14",
	"ENCDATA_R15_ROUTE_15",
	"ENCDATA_R16R0301_ROUTE_16",
	"ENCDATA_R17_ROUTE_17",
	"ENCDATA_R18_ROUTE_18",
	"ENCDATA_W21_ROUTE_21",
	"ENCDATA_R22_ROUTE_22",
	"ENCDATA_R24_ROUTE_24",
	"ENCDATA_R25_ROUTE_25",
	"ENCDATA_D45R0101_TOHJO_FALLS",
	"ENCDATA_D01R0101_DIGLETTS_CAVE",
	"ENCDATA_D43R0102_VICTORY_ROAD_2F",
	"ENCDATA_D43R0103_VICTORY_ROAD_3F",
	"ENCDATA_R02R0101_ROUTE_2_NORTH_ABOVE_VIRIDIAN_FOREST",
	"ENCDATA_D46R0101_VIRIDIAN_FOREST",
	"ENCDATA_UNUSED_138_UNKNOWN_138",
	"ENCDATA_D03R0101_CERULEAN_CAVE_1F",
	"ENCDATA_D03R0102_CERULEAN_CAVE_B1F",
	"ENCDATA_D03R0103_CERULEAN_CAVE_B2F",
]

def dump_encounters(narc, is_expanded):
	ENC_ENTRIES = get_enc_entries()

	encs_armip = ""
	encs_armip += ".nds\n"
	encs_armip += ".thumb\n\n"
	encs_armip += ".include \"armips/include/macros.s\"\n\n"
	encs_armip += ".include \"asm/include/species.inc\"\n\n"

	encs_armip += "// Each encounter data has been labeled with the area it gets used.\n"
	encs_armip += "// Some are labeled ???, these are most likely not used.\n\n"

	for idx, enc in enumerate(narc):
		if idx >= len(ENC_ENTRIES):
			# if more encounter data files than expected?
			encs_armip += f"encounterdata {idx}\n"
		else:
			encs_armip += f"{ENC_ENTRIES[idx]}\n"

		encs_armip += f'walkrate {enc["walking_rate"]}\n'
		encs_armip += f'surfrate {enc["surf_rate"]}\n'
		encs_armip += f'rocksmashrate {enc["rock_smash_rate"]}\n'
		encs_armip += f'oldrodrate {enc["old_rod_rate"]}\n'
		encs_armip += f'goodrodrate {enc["good_rod_rate"]}\n'
		encs_armip += f'superrodrate {enc["super_rod_rate"]}\n'
		encs_armip += f"walklevels {', '.join(str(value) for key, value in enc.items() if key.startswith('walking_') and key.endswith('_level'))}\n\n"
		
		encs_armip += "// morning encounter slots\n"
		for i in range(0,12):
			encs_armip += f'{get_enc_macro(enc[f"morning_{i}_species_id"], "pokemon", is_expanded)}\n'

		encs_armip += "\n// day encounter slots\n"
		for i in range(0,12):
			encs_armip += f'{get_enc_macro(enc[f"day_{i}_species_id"], "pokemon", is_expanded)}\n'

		encs_armip += "\n// night encounter slots\n"
		for i in range(0,12):
			encs_armip += f'{get_enc_macro(enc[f"night_{i}_species_id"], "pokemon", is_expanded)}\n'

		encs_armip += "\n// hoenn encounter slots\n"
		for i in range(0,2):
			encs_armip += f'{get_enc_macro(enc[f"hoenn_{i}_species_id"], "pokemon", is_expanded)}\n'

		encs_armip += "\n// sinnoh encounter slots\n"
		for i in range(0,2):
			encs_armip += f'{get_enc_macro(enc[f"sinnoh_{i}_species_id"], "pokemon", is_expanded)}\n'

		encs_armip += "\n// surf encounters\n"
		for i in range(0,5):
			encs_armip += f'{get_enc_macro(enc[f"surf_{i}_species_id"], "encounter", is_expanded )}, {enc[f"surf_{i}_min_lvl"]}, {enc[f"surf_{i}_max_lvl"]}\n'


		encs_armip += "\n// rock smash encounters\n"
		for i in range(0,2):
			encs_armip += f'{get_enc_macro(enc[f"rock_smash_{i}_species_id"], "encounter", is_expanded )}, {enc[f"rock_smash_{i}_min_lvl"]}, {enc[f"rock_smash_{i}_max_lvl"]}\n'

		encs_armip += "\n// old rod encounters\n"
		for i in range(0,5):
			encs_armip += f'{get_enc_macro(enc[f"old_rod_{i}_species_id"], "encounter", is_expanded )}, {enc[f"old_rod_{i}_min_lvl"]}, {enc[f"old_rod_{i}_max_lvl"]}\n'

		encs_armip += "\n// good rod encounters\n"
		for i in range(0,5):
			encs_armip += f'{get_enc_macro(enc[f"good_rod_{i}_species_id"], "encounter", is_expanded )}, {enc[f"good_rod_{i}_min_lvl"]}, {enc[f"good_rod_{i}_max_lvl"]}\n'

		encs_armip += "\n// super rod encounters\n"
		for i in range(0,5):
			encs_armip += f'{get_enc_macro(enc[f"super_rod_{i}_species_id"], "encounter", is_expanded )}, {enc[f"super_rod_{i}_min_lvl"]}, {enc[f"super_rod_{i}_max_lvl"]}\n'

		encs_armip += "\n// swarm grass\n"
		encs_armip += f'{get_enc_macro(enc[f"swarm_0_species_id"], "pokemon", is_expanded)}\n'
		encs_armip += "// swarm surf\n"
		encs_armip += f'{get_enc_macro(enc[f"swarm_1_species_id"], "pokemon", is_expanded)}\n'
		encs_armip += "// swarm good rod\n"
		encs_armip += f'{get_enc_macro(enc[f"swarm_2_species_id"], "pokemon", is_expanded)}\n'
		encs_armip += "// swarm super rod\n"
		encs_armip += f'{get_enc_macro(enc[f"swarm_3_species_id"], "pokemon", is_expanded)}\n\n'
		encs_armip += ".close\n\n\n"

	return encs_armip


def dump_encounters_c(narc, is_expanded):
	lines = [
		'#include "../include/constants/encounter_tables.h"',
		'#include "../include/constants/species.h"',
		'#include "../include/encounter.h"',
		"",
		"u32 __size = sizeof(EncounterData);",
		"",
		"const EncounterData __data[] =",
		"{",
	]

	for idx, enc in enumerate(narc):
		lines.append(f"    [{get_encounter_area_name(idx)}] = {{")
		lines.append(f"        .rateWalk = {enc['walking_rate']},")
		lines.append(f"        .rateSurf = {enc['surf_rate']},")
		lines.append(f"        .rateRockSmash = {enc['rock_smash_rate']},")
		lines.append(f"        .rateOldRod = {enc['old_rod_rate']},")
		lines.append(f"        .rateGoodRod = {enc['good_rod_rate']},")
		lines.append(f"        .rateSuperRod = {enc['super_rod_rate']},")
		lines.append("        .landSlots = {")
		lines.append("            .levels = {")
		lines.append("                " + ", ".join(str(enc[f"walking_{n}_level"]) for n in range(12)))
		lines.append("            },")
		for field_name, prefix, count in (
			("speciesMorning", "morning", 12),
			("speciesDay", "day", 12),
			("speciesNight", "night", 12),
		):
			lines.append(f"            .{field_name} = {{")
			for n in range(count):
				lines.append(f"                {get_species_expr(enc[f'{prefix}_{n}_species_id'], is_expanded)},")
			lines.append("            },")
		lines.append("        },")
		for field_name, prefix, count in (("hoennSoundSpecies", "hoenn", 2), ("sinnohSoundSpecies", "sinnoh", 2)):
			lines.append(f"        .{field_name} = {{")
			for n in range(count):
				lines.append(f"            {get_species_expr(enc[f'{prefix}_{n}_species_id'], is_expanded)},")
			lines.append("        },")
		for field_name, prefix, count in (
			("surfSlots", "surf", 5),
			("rockSmashSlots", "rock_smash", 2),
			("oldRodSlots", "old_rod", 5),
			("goodRodSlots", "good_rod", 5),
			("superRodSlots", "super_rod", 5),
		):
			lines.append(f"        .{field_name} = {{")
			for n in range(count):
				lines.append(f"            {{ {enc[f'{prefix}_{n}_min_lvl']}, {enc[f'{prefix}_{n}_max_lvl']}, {get_species_expr(enc[f'{prefix}_{n}_species_id'], is_expanded)} }},")
			lines.append("        },")
		lines.append(f"        .landSwarm = {get_species_expr(enc['swarm_0_species_id'], is_expanded)},")
		lines.append(f"        .surfSwarm = {get_species_expr(enc['swarm_1_species_id'], is_expanded)},")
		lines.append(f"        .nightFish = {get_species_expr(enc['swarm_2_species_id'], is_expanded)},")
		lines.append(f"        .fishSwarm = {get_species_expr(enc['swarm_3_species_id'], is_expanded)},")
		lines.append("    },")
		lines.append("")

	lines.extend([
		"};",
		"",
	])
	return "\n".join(lines)


def get_encounter_area_name(idx):
	if idx < len(ENCOUNTER_AREA_NAMES):
		return ENCOUNTER_AREA_NAMES[idx]
	return f"{idx}"


def get_enc_macro(species_id, enc_type, is_expanded):
	max_mons = 2048 if is_expanded else 1024

	if species_id > max_mons:
		form_id = species_id // max_mons
		base_form_id = species_id - (max_mons * form_id)
		species = lookup_species(base_form_id)

		if enc_type == "pokemon":
			enc_type = "mon"

		return f"    {enc_type}withform {species}, {form_id}"
	else:
		species = lookup_species(species_id)
		return f"    {enc_type} {species}"


def get_species_expr(species_id, is_expanded):
	max_mons = 2048 if is_expanded else 1024

	if species_id > max_mons:
		form_id = species_id // max_mons
		base_form_id = species_id - (max_mons * form_id)
		return f"MON_WITH_FORM({lookup_species(base_form_id)}, {form_id})"

	return lookup_species(species_id)


def get_enc_entries():
	with open("armips/data/encounters.s", 'r') as f:
		content = f.readlines()

	enc_entries = []
	current_enc_index = 0

	for index, line in enumerate(content):
		if "encounterdata" in line:
			enc_entries.append(line)
			current_enc_index += 1

	return enc_entries
