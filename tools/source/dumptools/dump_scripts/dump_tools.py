import re
import io
from typing import Dict, Set
import sys
from typing import Dict, DefaultDict
from collections import defaultdict
import ndspy
import ndspy.rom, ndspy.narc
import copy

PERSONAL_NARC_FORMAT = [[1, "base_hp"],
[1, "base_atk"],
[1, "base_def"],
[1, "base_speed"],
[1, "base_spatk"],
[1, "base_spdef"],
[1, "type_1"],
[1, "type_2"],
[1, "catchrate"],
[1, "base_exp"],
[2, "evs"],
[2, "item_1"],
[2, "item_2"],
[1, "gender"],
[1, "hatch_cycle"],
[1, "base_happy"],
[1, "exp_rate"],
[1, "egg_group_1"],
[1, "egg_group_2"],
[1, "ability_1"],
[1, "ability_2"],
[1, "flee"],
[3, "color"],
#[4, "tm_1-32"],
#[4, "tm_33-64"],
#[4, "tm_65-92+hm_1-4"],
#[4, "hm_5-8"]
]

MOVE_NARC_FORMAT = [
[2, "effect"],
[1, "category"],
[1, "power"],
[1, 'type'],
[1, "accuracy"],
[1, "pp"],
[1, "effect_chance"],
[2, "target"],
[1, "priority"],
[1, "properties"],
[1, "appeal"],
[1, "contest_type"]]

# if this is dumping from a vanilla rom, the data structure is much different
# new format for vanilla learnset len 4 = [bytes, bits for low field, low field, high field]
LEARNSET_NARC_FORMAT = []
for n in range(20):
    LEARNSET_NARC_FORMAT.append([2, 9, f'move_id_{n}', f'lvl_learned_{n}'])

EXPANDED_LEARNSET_NARC_FORMAT = []
for n in range(41):
    EXPANDED_LEARNSET_NARC_FORMAT.append([2, f'move_id_{n}'])
    EXPANDED_LEARNSET_NARC_FORMAT.append([2, f'lvl_learned_{n}'])


EVO_NARC_FORMAT = []
for n in range(0, 7):
    EVO_NARC_FORMAT.append([2, f'method_{n}'])
    EVO_NARC_FORMAT.append([2, f'param_{n}'])
    EVO_NARC_FORMAT.append([2, f'target_{n}'])

EXPANDED_EVO_NARC_FORMAT = []
for n in range(0, 9):
    EXPANDED_EVO_NARC_FORMAT.append([2, f'method_{n}'])
    EXPANDED_EVO_NARC_FORMAT.append([2, f'param_{n}'])
    EXPANDED_EVO_NARC_FORMAT.append([2, f'target_{n}'])

TRDATA_NARC_FORMAT = [[1, "flags"],
    [2, "class"], # now 2 bytes
    #[1, "battle_type"],
    [1, "num_pokemon"],
    [2, "item_1"],
    [2, "item_2"],
    [2, "item_3"],
    [2, "item_4"],
    [4, "ai"],
    [1, "battle_type"]]

TRPOK_NARC_FORMAT = [[1, "ivs"],
    [1, "ability"],
    [2, "level"],
    [2, "species_id"],
    [2, "item_id"],
    [2, "move_1"],
    [2, "move_2"],
    [2, "move_3"],
    [2, "move_4"],
    [2, "custom_ability"],
    [2, "ball"],
    [1, "hp_iv"],
    [1, "atk_iv"],
    [1, "def_iv"],
    [1, "spd_iv"],
    [1, "spatk_iv"],
    [1, "spdef_iv"],
    [1, "hp_ev"],
    [1, "atk_ev"],
    [1, "def_ev"],
    [1, "spd_ev"],
    [1, "spatk_ev"],
    [1, "spdef_ev"],
    [1, "nature"],
    [1, "shiny_lock"],
    [4, "additional_flags"],
    [4, "status"],
    [2, "hp"],
    [2, "atk"],
    [2, "def"],
    [2, "spd"],
    [2, "spatk"],
    [2, "spdef"],
    [1, "type_1"],
    [1, "type_2"],
    [1, "move_1_pp"],
    [1, "move_2_pp"],
    [1, "move_3_pp"],
    [1, "move_4_pp"],
    [2, "ballseal"],
]

ENCOUNTER_NARC_FORMAT = [
    [1, "walking_rate"],
    [1, "surf_rate"],
    [1, "rock_smash_rate"],
    [1, "old_rod_rate"],
    [1, "good_rod_rate"],
    [1, "super_rod_rate"],
    [2, "padding"]]

TRDATA_FLAGS =["has_moves", "has_items", "set_abilities", "set_ball", "set_iv_ev", "set_nature", "shiny_lock", "additional_flags"]

for n in range(0,12):
    ENCOUNTER_NARC_FORMAT.append([1, f'walking_{n}_level'])

for time in ["morning", "day", "night"]:
    for n in range(0,12):
        ENCOUNTER_NARC_FORMAT.append([2, f'{time}_{n}_species_id'])

for region in ["hoenn", "sinnoh"]:
    for n in range(0,2):
        ENCOUNTER_NARC_FORMAT.append([2, f'{region}_{n}_species_id'])

method_counts = [5,2,5,5,5]
for idx, method in enumerate(["surf", "rock_smash", "old_rod", "good_rod", "super_rod"]):
    for n in range(0, method_counts[idx]):
        ENCOUNTER_NARC_FORMAT.append([1, f'{method}_{n}_min_lvl'])
        ENCOUNTER_NARC_FORMAT.append([1, f'{method}_{n}_max_lvl'])
        ENCOUNTER_NARC_FORMAT.append([2, f'{method}_{n}_species_id'])

for n in range(0,4):
    ENCOUNTER_NARC_FORMAT.append([2, f'swarm_{n}_species_id'])





def read_narc_data(data, narc_format):
    stream = io.BytesIO(data)
    file = {}

    #USE THE FORMAT LIST TO PARSE BYTES
    for entry in narc_format:
        if (len(entry) == 4):
            work = read_bytes(stream, entry[0])
            file[entry[2]] = work & ((1 << entry[1])-1)
            file[entry[3]] = (work & (0xFFFFFFFF ^ ((1 << entry[1])-1))) >> entry[1]
        else:
            file[entry[1]] = read_bytes(stream, entry[0])

    return file

def read_bytes(stream, n):
    return int.from_bytes(stream.read(n), 'little')

def dump_narc(rom, narc_path, narc_format):
    parsed_narc_data = []

    # get narc from rom
    narc_data = rom.files[rom.filenames[narc_path]]
    narc = ndspy.narc.NARC(narc_data)

    # use supplied format to parse each file in narc
    for data in narc.files:
        parsed_narc_data.append(read_narc_data(data, narc_format))

    return parsed_narc_data

def dump_trpok_narc(rom, narc_path, trdata_narc):
    parsed_narc_data = {}

    # get narc from rom
    narc_data = rom.files[rom.filenames[narc_path]]
    narc = ndspy.narc.NARC(narc_data)

    # use supplied format to parse each file in narc
    for idx, data in enumerate(narc.files):
        flags = bin(trdata_narc[idx]["flags"])[2:].zfill(8)
        num_pokemon = trdata_narc[idx]["num_pokemon"]
        narc_format = copy.deepcopy(TRPOK_NARC_FORMAT)

        if flags[7] == '0':
            for n in range(1,5):
                narc_format.remove([2, f"move_{n}"])

        if flags[6] == '0':
            narc_format.remove([2, "item_id"])

        if flags[5] == '0':
            narc_format.remove([2, "custom_ability"])

        if flags[4] == '0':
            narc_format.remove([2, "ball"])

        if flags[3] == '0':
            for value_type in ["iv", "ev"]:
                for stat in ["hp", "atk", "def", "spd", "spatk", "spdef"]:
                    narc_format.remove([1, f'{stat}_{value_type}'])

        if flags[2] == '0':
            narc_format.remove([1, "nature"])

        if flags[1] == '0':
            narc_format.remove([1, "shiny_lock"])

        # for the moment, i do not care about any extra fields.
        if flags[0] == '0':
            narc_format.remove([4, "additional_flags"])
            narc_format.remove([4, "status"])
            narc_format.remove([2, "hp"])
            narc_format.remove([2, "atk"])
            narc_format.remove([2, "def"])
            narc_format.remove([2, "spd"])
            narc_format.remove([2, "spatk"])
            narc_format.remove([2, "spdef"])
            narc_format.remove([1, "type_1"])
            narc_format.remove([1, "type_2"])
            narc_format.remove([1, "move_1_pp"])
            narc_format.remove([1, "move_2_pp"])
            narc_format.remove([1, "move_3_pp"])
            narc_format.remove([1, "move_4_pp"])
        else:
            sys.exit("Additional flags not currently implemented in the dumper!  Quit.")

        #parsed_narc_data.append(read_narc_data(data, narc_format))
        totalSizePerMon = 0
        for i in range(0, len(narc_format)):
            totalSizePerMon += narc_format[i][0]
        parsed_narc_data[idx] = {}
        for i in range(0, num_pokemon):
            parsed_narc_data[idx][i] = read_narc_data(data, narc_format)
            data = data[totalSizePerMon:]
    return parsed_narc_data

def get_form(species_id, is_expanded):
    max_mons = 2048 if is_expanded else 1024

    return species_id // max_mons

def get_remaining_lines(file_path, original_rom_mon_count, keyword):
    with open(file_path, 'r', encoding="utf-8") as f:
        content = f.readlines()

    mon_count = 0

    for index, line in enumerate(content):
        if keyword in line and not "terminate" in line:
            mon_count += 1

            if (original_rom_mon_count + 1) == mon_count:
                return "".join(content[index:])

    return ""


def remove_comments(content: str) -> str:
    """
    Remove both single-line and multi-line comments from the content.
    Handles nested comments and preserves newlines for accurate line counting.
    """
    # First remove single-line comments, preserving newlines
    lines = []
    for line in content.splitlines():
        if '//' in line:
            line = line[:line.index('//')]
        lines.append(line)
    content = '\n'.join(lines)

    # Remove multi-line comments
    in_comment = False
    result = []
    i = 0
    while i < len(content):
        if not in_comment:
            if content[i:i+2] == '/*':
                in_comment = True
                i += 2
                continue
            result.append(content[i])
        else:
            if content[i:i+2] == '*/':
                in_comment = False
                i += 2
                continue
        i += 1

    return ''.join(result)

def parse_inc_file(file_path: str) -> Dict[str, Dict[int, str]]:
    """
    Parse an assembly include file and create a hierarchical dictionary of variables.
    Variables are grouped by their prefix (text before first underscore).

    Returns:
        Dictionary with structure:
        {
            "PREFIX": {
                integer_value: variable_name,
                ...
            },
            ...
        }
    """

    with open(file_path, 'r') as f:
        file_content = f.read()
    # Store all variable definitions and their raw values
    variables: Dict[str, str] = {}
    # Store the final hierarchical mapping
    result: Dict[str, Dict[int, str]] = defaultdict(dict)

    def get_prefix(var_name: str) -> str:
        """Extract prefix before first underscore, or whole name if no underscore"""
        parts = var_name.split('_')
        return parts[0] if len(parts) > 1 else var_name

    # Remove comments and empty lines
    content = remove_comments(file_content)
    lines = [line.strip() for line in content.splitlines()]
    lines = [line for line in lines if line]

    def evaluate_expression(expr: str) -> int:
        """Evaluate an expression containing variables and basic arithmetic"""
        # Replace all known variables with their values
        for var_name, var_value in evaluated_vars.items():
            if var_name in expr:
                expr = expr.replace(var_name, str(var_value))

        try:
            # Evaluate the resulting expression
            return int(eval(expr))
        except:
            raise ValueError(f"Unable to evaluate expression: {expr}")

    # First pass: collect ALL variable definitions
    for line in lines:
        # Handle both .equ prefix and infix equ formats
        if line.startswith('.equ'):
            # .equ PREFIX format
            parts = line.split(',', 1) if ',' in line else line.split(None, 2)
            if len(parts) >= 2:
                var_name = parts[0].replace('.equ', '').strip()
                var_value = parts[1].strip().strip('()')
                variables[var_name] = var_value
        elif 'equ' in line:
            # infix equ format
            parts = line.split('equ', 1)
            if len(parts) == 2:
                var_name = parts[0].strip()
                var_value = parts[1].strip().strip('()')
                variables[var_name] = var_value

    # Second pass: evaluate all expressions
    evaluated_vars: Dict[str, int] = {}
    while variables:
        progress = False
        remaining_vars = variables.copy()

        for var_name, var_value in remaining_vars.items():
            try:
                # Try to evaluate the expression
                value = evaluate_expression(var_value)
                evaluated_vars[var_name] = value

                # Add to result dictionary under appropriate prefix

                # if file_path == "../asm/include/species.inc":
                #     print(var_value, value, var_name)

                # special case for species.inc
                if "_START" not in var_name or file_path != "../asm/include/species.inc":
                    prefix = get_prefix(var_name)
                    result[prefix][value] = var_name

                del variables[var_name]
                progress = True
            except:
                continue

        if not progress and variables:
            raise ValueError("Unable to resolve all variable dependencies")

    return dict(result)

class DictWrapper:
    def __init__(self, dictionary):
        self.dict = {}
        # Convert all first-level dictionaries
        for key, value in dictionary.items():
            if isinstance(value, dict):
                self.dict[key] = DictWrapper(value)
            else:
                self.dict[key] = value

    def __getitem__(self, key):
        try:
            return self.dict[key]
        except KeyError:
            print(f"{key} not found in dict, returning {key} as value")
            return key

MONS = parse_inc_file("asm/include/species.inc")
ITEMS = parse_inc_file("asm/include/items.inc")
MOVES = parse_inc_file("asm/include/moves.inc")
MOVE_EFFECTS = parse_inc_file("asm/include/move_effects.inc")
ABILITIES = parse_inc_file("asm/include/abilities.inc")
CONSTANTS = parse_inc_file("armips/include/constants.s")
MOVE_MACROS = DictWrapper(parse_inc_file("armips/include/movemacros.s"))
