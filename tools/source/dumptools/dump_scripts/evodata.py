from dump_scripts.dump_tools import *

MAX_EVOS_PER_POKE = 9

EVO_METHOD_C_NAMES = {
	"EVO_LEVEL_ELECTRIC_FIELD": "EVO_CORONET",
	"EVO_LEVEL_MOSSY_STONE": "EVO_ETERNA",
	"EVO_LEVEL_ICY_STONE": "EVO_ROUTE217",
}


def get_method_expr(method_id):
	method = lookup_const("EVO", method_id)
	return EVO_METHOD_C_NAMES.get(method, method)

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
		evodata_armip += f'evodata {lookup_species(idx)}\n'

		for i in range(0,9):
			if f"target_{i}" in evo:
				evodata_armip += get_evo_macro(evo[f"target_{i}"], evo[f"method_{i}"], evo[f"param_{i}"], is_expanded)
			else:
				evodata_armip += "    evolution EVO_NONE, 0, SPECIES_NONE\n"
		
		evodata_armip += "terminateevodata\n\n"

	evodata_armip += get_remaining_lines("armips/data/evodata.s", len(narc), "evodata")

	return evodata_armip


def dump_evodata_c(narc, is_expanded):
	lines = [
		'#include "../include/types.h"',
		'#include "../include/pokemon.h"',
		'#include "../include/battle.h"',
		'#include "../include/constants/item.h"',
		'#include "../include/constants/moves.h"',
		'#include "../include/constants/species.h"',
		"",
		"typedef struct EvolutionTable {",
		"    struct Evolution entries[MAX_EVOS_PER_POKE];",
		"    u16 terminator;",
		"} EvolutionTable;",
		"",
		"u32 __size = sizeof(EvolutionTable);",
		"",
		"const EvolutionTable __data[MAX_SPECIES_INCLUDING_FORMS + 1] =",
		"{",
	]

	for idx, evo in enumerate(narc):
		lines.append(f"    [{lookup_species(idx)}] = {{")
		lines.append("        .entries = {")
		for i in range(0, MAX_EVOS_PER_POKE):
			if f"target_{i}" in evo:
				method = get_method_expr(evo[f"method_{i}"])
				param = get_param(method, evo[f"param_{i}"])
				target = get_target_expr(evo[f"target_{i}"], is_expanded)
				lines.append(f"            {{ {method}, {param}, {target} }},")
			else:
				lines.append("            { EVO_NONE, 0, SPECIES_NONE },")
		lines.append("        },")
		lines.append("        .terminator = 0,")
		lines.append("    },")
		lines.append("")

	lines.extend([
		"};",
		"",
	])
	return "\n".join(lines)




def get_param(evo_method, param):
	options = {}

	if "ITEM" in evo_method or evo_method == "EVO_STONE":
		return lookup_item(param)

	if evo_method == "EVO_KNOWS_MOVE" or evo_method == "EVO_HAS_MOVE":
		return lookup_move(param)

	if evo_method == "EVO_HAS_MOVE_TYPE":
		return lookup_const("TYPE", param)

	if "_MON" in evo_method:
		return lookup_species(param)

	return param


def get_target_expr(species_id, is_expanded):
	max_mons = 2048 if is_expanded else 1024

	if species_id > max_mons:
		form_id = species_id // max_mons
		base_form_id = species_id - (max_mons * form_id)
		target = lookup_species(base_form_id)
		return f"MON_WITH_FORM({target}, {form_id})"

	return lookup_species(species_id)


def get_evo_macro(species_id, method_id, param_id, is_expanded):
	max_mons = 2048 if is_expanded else 1024

	method = get_method_expr(method_id)
	param = get_param(method, param_id)


	if species_id > max_mons:
		form_id = species_id // max_mons
		base_form_id = species_id - (max_mons * form_id)
		target = lookup_species(base_form_id)
		return f"    evolutionwithform {method}, {param}, {target}, {form_id}\n"
	else:
		return f"    evolution {method}, {param}, {lookup_species(species_id)}\n"
