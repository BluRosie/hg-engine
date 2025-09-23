from dump_scripts.dump_tools import *

def dump_evodata(narc):
	evodata_armip = ""
	evodata_armip += ".nds\n"
	evodata_armip += ".thumb\n\n"
	evodata_armip += ".include \"armips/include/macros.s\"\n"
	evodata_armip += ".include \"armips/include/constants.s\"\n\n"
	evodata_armip += ".include \"asm/include/items.inc\"\n"
	evodata_armip += ".include \"asm/include/moves.inc\"\n"
	evodata_armip += ".include \"asm/include/species.inc\"\n\n"
	evodata_armip += "// the evolution data of each mon\n\n\n"

	is_expanded = True if ("target_7" in narc[0]) else False

	for idx, evo in enumerate(narc):
		evodata_armip += f'evodata {MONS["SPECIES"][idx]}\n'

		for i in range(0,9):
			if f"target_{i}" in evo:
				evodata_armip += get_evo_macro(evo[f"target_{i}"], evo[f"method_{i}"], evo[f"param_{i}"], is_expanded)
			else:
				evodata_armip += "    evolution EVO_NONE, 0, SPECIES_NONE\n"
		
		evodata_armip += "terminateevodata\n\n"

	evodata_armip += get_remaining_lines("armips/data/evodata.s", len(narc), "evodata")

	return evodata_armip




def get_param(evo_method, param):
	options = {}

	if "ITEM" in evo_method or evo_method == "EVO_STONE":
		return ITEMS["ITEM"][param]

	if evo_method == "EVO_KNOWS_MOVE":
		return MOVES["MOVE"][param]

	if evo_method == "EVO_HAS_MOVE_TYPE":
		return CONSTANTS["TYPE"][param]

	if "_MON" in evo_method:
		return MONS["SPECIES"][param]

	return param


def get_evo_macro(species_id, method_id, param_id, is_expanded):
	max_mons = 2048 if is_expanded else 1024

	method = CONSTANTS["EVO"][method_id]
	param = get_param(method, param_id)


	if species_id > max_mons:
		form_id = species_id // max_mons
		base_form_id = species_id - (max_mons * form_id)
		target = MONS["SPECIES"][base_form_id]
		return f"    evolutionwithform {method}, {param}, {target}, {form_id}\n"
	else:
		return f"    evolution {method}, {param}, {MONS['SPECIES'][species_id]}\n"






