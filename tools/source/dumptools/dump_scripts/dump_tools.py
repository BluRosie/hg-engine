import re
import io
from pathlib import Path
from typing import Dict, Set
import sys
from typing import Dict, DefaultDict
from collections import defaultdict
import ndspy
import ndspy.rom, ndspy.narc
import ndspy.codeCompression
import copy

REPO_ROOT = Path(__file__).resolve().parents[4]

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
[1, "contest_type"],
[2, "contest_padding"]]

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
TRAINER_RANDOM_PARTY_ORDER_FLAG = 0x80
TRAINER_PARTY_SIZE_MASK = 0x7F

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

def read_arm9_table(arm9_data, offset, size):
    table_end = offset + size
    if len(arm9_data) < table_end:
        arm9_data = ndspy.codeCompression.decompress(arm9_data)
    if len(arm9_data) < table_end:
        raise ValueError(f"arm9.bin is too small for table at 0x{offset:X}")
    return arm9_data[offset:table_end]

def dump_narc(rom, narc_path, narc_format):
    parsed_narc_data = []

    # get narc from rom
    narc_data = rom.files[rom.filenames[narc_path]]
    narc = ndspy.narc.NARC(narc_data)

    # use supplied format to parse each file in narc
    for data in narc.files:
        parsed_narc_data.append(read_narc_data(data, narc_format))

    return parsed_narc_data

def signed_byte(value):
    retVal = value
    if (value > 255):
        print("Value not valid for bytes!")
    if (value > 127):
        retVal = (value - 256)
    return retVal

def dump_trpok_narc(rom, narc_path, trdata_narc):
    parsed_narc_data = {}

    # get narc from rom
    narc_data = rom.files[rom.filenames[narc_path]]
    narc = ndspy.narc.NARC(narc_data)

    # use supplied format to parse each file in narc
    for idx, data in enumerate(narc.files):
        flags = bin(trdata_narc[idx]["flags"])[2:].zfill(8)
        num_pokemon = trdata_narc[idx]["num_pokemon"] & TRAINER_PARTY_SIZE_MASK
        parsed_narc_data[idx] = {}
        stream = io.BytesIO(data)
        for i in range(0, num_pokemon):
            mon = {
                "ivs": read_bytes(stream, 1),
                "ability": read_bytes(stream, 1),
                "level": read_bytes(stream, 2),
                "species_id": read_bytes(stream, 2),
            }

            if flags[6] == '1':
                mon["item_id"] = read_bytes(stream, 2)

            if flags[7] == '1':
                for n in range(1, 5):
                    mon[f"move_{n}"] = read_bytes(stream, 2)

            if flags[5] == '1':
                mon["custom_ability"] = read_bytes(stream, 2)

            if flags[4] == '1':
                mon["ball"] = read_bytes(stream, 2)

            if flags[3] == '1':
                for stat in ["hp", "atk", "def", "spd", "spatk", "spdef"]:
                    mon[f"{stat}_iv"] = read_bytes(stream, 1)
                for stat in ["hp", "atk", "def", "spd", "spatk", "spdef"]:
                    mon[f"{stat}_ev"] = read_bytes(stream, 1)

            if flags[2] == '1':
                mon["nature"] = read_bytes(stream, 1)

            if flags[1] == '1':
                mon["shiny_lock"] = read_bytes(stream, 1)

            if flags[0] == '1':
                mon["additional_flags"] = read_bytes(stream, 4)
                additional_flags = mon["additional_flags"]

                if additional_flags & 0x01:
                    mon["status"] = read_bytes(stream, 4)
                if additional_flags & 0x02:
                    mon["hp"] = read_bytes(stream, 2)
                if additional_flags & 0x04:
                    mon["atk"] = read_bytes(stream, 2)
                if additional_flags & 0x08:
                    mon["def"] = read_bytes(stream, 2)
                if additional_flags & 0x10:
                    mon["spd"] = read_bytes(stream, 2)
                if additional_flags & 0x20:
                    mon["spatk"] = read_bytes(stream, 2)
                if additional_flags & 0x40:
                    mon["spdef"] = read_bytes(stream, 2)
                if additional_flags & 0x80:
                    for n in range(1, 5):
                        mon[f"move_{n}_pp"] = read_bytes(stream, 1)
                if additional_flags & 0x100:
                    mon["nickname"] = [read_bytes(stream, 2) for _ in range(11)]

            mon["ballseal"] = read_bytes(stream, 2)
            parsed_narc_data[idx][i] = mon
    return parsed_narc_data

def get_form(species_id, is_expanded):
    max_mons = 2048 if is_expanded else 1024

    return species_id // max_mons

def get_base_species(species_id, is_expanded):
    max_mons = 2048 if is_expanded else 1024

    return (species_id & (max_mons - 1))

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


def parse_c_header_defines(header_path: str, prefix: str) -> Dict[int, str]:
    values: Dict[int, str] = {}
    known_values: Dict[str, int] = {}
    with open(REPO_ROOT / header_path, "r", encoding="utf-8") as f:
        for raw_line in f:
            line = raw_line.split("//", 1)[0].strip()
            if not line.startswith("#define "):
                continue
            parts = line.split(maxsplit=2)
            if len(parts) < 3:
                continue
            name = parts[1]
            if "(" in name:
                continue
            expr = parts[2].strip()
            while expr.startswith("(") and expr.endswith(")"):
                expr = expr[1:-1].strip()
            try:
                resolved_expr = expr
                for identifier in set(re.findall(r"\b[A-Za-z_][A-Za-z0-9_]*\b", expr)):
                    if identifier in known_values:
                        resolved_expr = re.sub(rf"\b{re.escape(identifier)}\b", str(known_values[identifier]), resolved_expr)
                value = int(eval(resolved_expr, {"__builtins__": None}, {}))
            except Exception:
                continue
            known_values[name] = value
            if name.startswith(prefix):
                values[value] = name
    return values


def parse_c_enum(header_path: str, enum_name: str, prefix: str) -> Dict[int, str]:
    values: Dict[int, str] = {}
    with open(REPO_ROOT / header_path, "r", encoding="utf-8") as f:
        content = remove_comments(f.read())

    match = re.search(rf"typedef\s+enum\s+{re.escape(enum_name)}\s*\{{(.*?)\}}\s*{re.escape(enum_name)}\s*;", content, re.S)
    if match is None:
        return values

    current_value = 0
    for raw_entry in match.group(1).split(","):
        entry = raw_entry.strip()
        if not entry:
            continue
        if "=" in entry:
            name, expr = [part.strip() for part in entry.split("=", 1)]
            try:
                current_value = int(expr, 0)
            except ValueError:
                continue
        else:
            name = entry
        if name.startswith(prefix):
            values[current_value] = name
        current_value += 1
    return values

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
            print(variables)
            raise ValueError("Unable to resolve all variable dependencies")

    return dict(result)

def flags_to_string(flags, defines):
    retStr = []
    for i in range(0, len(defines)):
        if (flags & 1 << i):
            retStr.append(defines[i])
    if len(retStr) == 0:
        return "0"
    return " | ".join(retStr)

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

    def get(self, key, default=None):
        return self.dict.get(key, default)

MONS = parse_inc_file("asm/include/species.inc")
ITEMS = parse_inc_file("asm/include/items.inc")
MOVES = parse_inc_file("asm/include/moves.inc")
MOVE_EFFECTS = parse_inc_file("asm/include/move_effects.inc")
ABILITIES = parse_inc_file("asm/include/abilities.inc")
CONSTANTS = parse_inc_file("armips/include/constants.s")
MOVE_MACROS = DictWrapper(parse_inc_file("armips/include/movemacros.s"))

C_CONSTANT_GROUPS = {
    "SPECIES": parse_c_header_defines("include/constants/species.h", "SPECIES_"),
    "ITEM": parse_c_header_defines("include/constants/item.h", "ITEM_"),
    "MOVE": parse_c_header_defines("include/constants/moves.h", "MOVE_"),
    "ABILITY": parse_c_header_defines("include/constants/ability.h", "ABILITY_"),
    "TYPE": parse_c_header_defines("include/constants/pokemon.h", "TYPE_"),
    "GROWTH": parse_c_header_defines("include/constants/pokemon.h", "GROWTH_"),
    "EGG": parse_c_header_defines("include/constants/pokemon.h", "EGG_GROUP_"),
    "BODY": parse_c_header_defines("include/constants/pokemon.h", "BODY_COLOR_"),
    "NATURE": parse_c_header_defines("include/constants/pokemon.h", "NATURE_"),
    "TRAINERCLASS": parse_c_header_defines("include/constants/trainerclass.h", "TRAINERCLASS_"),
    "EVO": parse_c_enum("include/pokemon.h", "EvoMethod", "EVO_"),
}


def lookup_const(group, value):
    if group in C_CONSTANT_GROUPS:
        return C_CONSTANT_GROUPS[group].get(value, str(value))
    return CONSTANTS[group].get(value, str(value))


def lookup_species(value):
    return C_CONSTANT_GROUPS["SPECIES"].get(value, str(value))


def lookup_move(value):
    return C_CONSTANT_GROUPS["MOVE"].get(value, str(value))


def lookup_item(value):
    return C_CONSTANT_GROUPS["ITEM"].get(value, str(value))


def lookup_ability(value):
    return C_CONSTANT_GROUPS["ABILITY"].get(value, str(value))
