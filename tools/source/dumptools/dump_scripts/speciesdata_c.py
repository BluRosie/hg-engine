import io

from dump_scripts.dump_tools import *
from dump_scripts.moves import decode_msg_bank, escape_c_string


def lookup_ability(value):
    return ABILITIES["ABILITY"].get(value, str(value))


def decode_mon_text_banks(msgdata_narc):
    return {
        "names": decode_msg_bank(msgdata_narc, 237),
        "pokedex_entries": decode_msg_bank(msgdata_narc, 803),
        "classifications": decode_msg_bank(msgdata_narc, 816),
        "heights": [text.lstrip() for text in decode_msg_bank(msgdata_narc, 814)],
        "weights": [text.lstrip() for text in decode_msg_bank(msgdata_narc, 812)],
    }


def parse_mondata_files(mondata_files):
    parsed = []

    for data in mondata_files:
        stream = io.BytesIO(data)
        mon = {
            "base_hp": read_bytes(stream, 1),
            "base_atk": read_bytes(stream, 1),
            "base_def": read_bytes(stream, 1),
            "base_speed": read_bytes(stream, 1),
            "base_spatk": read_bytes(stream, 1),
            "base_spdef": read_bytes(stream, 1),
            "type_1": read_bytes(stream, 1),
            "type_2": read_bytes(stream, 1),
            "catchrate": read_bytes(stream, 1),
            "base_exp": read_bytes(stream, 1),
            "evs": read_bytes(stream, 2),
            "item_1": read_bytes(stream, 2),
            "item_2": read_bytes(stream, 2),
            "gender": read_bytes(stream, 1),
            "hatch_cycle": read_bytes(stream, 1),
            "base_happy": read_bytes(stream, 1),
            "exp_rate": read_bytes(stream, 1),
            "egg_group_1": read_bytes(stream, 1),
            "egg_group_2": read_bytes(stream, 1),
            "ability_1": read_bytes(stream, 2),
            "flee": read_bytes(stream, 1),
            "color": read_bytes(stream, 1),
            "ability_2": read_bytes(stream, 2),
            "tmhm_1": read_bytes(stream, 4),
            "tmhm_2": read_bytes(stream, 4),
            "tmhm_3": read_bytes(stream, 4),
            "tmhm_4": read_bytes(stream, 4),
        }
        parsed.append(mon)

    return parsed


def get_text_or_default(lines, index, default):
    if index < len(lines):
        return lines[index]
    return default


def dump_species_data_c(mondata_narc, msgdata_narc):
    if hasattr(mondata_narc, "files"):
        mondata_narc = parse_mondata_files(mondata_narc.files)

    text_banks = decode_mon_text_banks(msgdata_narc)

    lines = [
        '#include "../include/species_data.h"',
        "",
        "const SpeciesDataEntry sSpeciesData[MAX_SPECIES_INCLUDING_FORMS + 1] = {",
    ]

    for idx, mon in enumerate(mondata_narc):
        ev_yields = {
            "hp": (mon["evs"] >> 0) & 0b11,
            "attack": (mon["evs"] >> 2) & 0b11,
            "defense": (mon["evs"] >> 4) & 0b11,
            "speed": (mon["evs"] >> 6) & 0b11,
            "spAttack": (mon["evs"] >> 8) & 0b11,
            "spDefense": (mon["evs"] >> 10) & 0b11,
        }
        body_color = mon["color"] & 0x7F
        flip_sprite = (mon["color"] >> 7) & 0x1
        species_name = lookup_species(idx)
        name = get_text_or_default(text_banks["names"], idx, "-----")
        pokedex_entry = get_text_or_default(text_banks["pokedex_entries"], idx, "")
        classification = get_text_or_default(text_banks["classifications"], idx, "????? Pokémon")
        height = get_text_or_default(text_banks["heights"], idx, "???’??”")
        weight = get_text_or_default(text_banks["weights"], idx, "????.? lbs.")

        lines.extend(
            [
                f"    [{species_name}] = {{",
                "        .speciesData = {",
                "            .baseStats = {",
                f"                .hp = {mon['base_hp']},",
                f"                .attack = {mon['base_atk']},",
                f"                .defense = {mon['base_def']},",
                f"                .spAttack = {mon['base_spatk']},",
                f"                .spDefense = {mon['base_spdef']},",
                f"                .speed = {mon['base_speed']},",
                "            },",
                f"            .types = {{ {lookup_const('TYPE', mon['type_1'])}, {lookup_const('TYPE', mon['type_2'])} }},",
                f"            .catchRate = {mon['catchrate']},",
                f"            .baseExpRewardPadding = {mon['base_exp']},",
                "            .evYields = {",
                f"                .hp = {ev_yields['hp']},",
                f"                .attack = {ev_yields['attack']},",
                f"                .defense = {ev_yields['defense']},",
                f"                .spAttack = {ev_yields['spAttack']},",
                f"                .spDefense = {ev_yields['spDefense']},",
                f"                .speed = {ev_yields['speed']},",
                "            },",
                "            .wildHeldItems = {",
                f"                .common = {lookup_item(mon['item_1'])},",
                f"                .rare = {lookup_item(mon['item_2'])},",
                "            },",
                f"            .genderRatio = {mon['gender']},",
                f"            .hatchCycles = {mon['hatch_cycle']},",
                f"            .baseFriendship = {mon['base_happy']},",
                f"            .expRate = {lookup_const('GROWTH', mon['exp_rate'])},",
                f"            .eggGroups = {{ {lookup_const('EGG', mon['egg_group_1'])}, {lookup_const('EGG', mon['egg_group_2'])} }},",
                f"            .abilities = {{ {lookup_ability(mon['ability_1'])}, {lookup_ability(mon['ability_2'])} }},",
                f"            .safariFleeRate = {mon['flee']},",
                f"            .bodyColor = {lookup_const('BODY', body_color)},",
                f"            .flipSprite = {flip_sprite},",
                "        },",
                "        .textData = {",
                f'            .name = "{escape_c_string(name)}",',
                f'            .pokedexEntry = "{escape_c_string(pokedex_entry)}",',
                f'            .classification = "{escape_c_string(classification)}",',
                f'            .height = "{escape_c_string(height)}",',
                f'            .weight = "{escape_c_string(weight)}",',
                "        },",
                "    },",
                "",
            ]
        )

    lines.extend(
        [
            "};",
            "",
            "// clang-format on",
        ]
    )

    return "\n".join(lines)
