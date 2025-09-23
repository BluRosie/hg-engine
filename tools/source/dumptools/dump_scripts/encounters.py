from dump_scripts.dump_tools import *

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

def get_enc_macro(species_id, enc_type, is_expanded):
	max_mons = 2048 if is_expanded else 1024

	if species_id > max_mons:
		form_id = species_id // max_mons
		base_form_id = species_id - (max_mons * form_id)
		species = MONS["SPECIES"][base_form_id]

		if enc_type == "pokemon":
			enc_type = "mon"

		return f"    {enc_type}withform {species}, {form_id}"
	else:
		species = MONS["SPECIES"][species_id]
		return f"    {enc_type} {species}"


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