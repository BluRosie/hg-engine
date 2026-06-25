import json
import struct
from pathlib import Path

import ndspy.narc

from dump_scripts.dump_tools import *
from dump_scripts.moves import decode_msg_bank

REPO_ROOT = Path(__file__).resolve().parents[4]

AI_FLAG_DEFINES = [
    "F_PRIORITIZE_SUPER_EFFECTIVE",
    "F_EVALUATE_ATTACKS",
    "F_EXPERT_ATTACKS",
    "F_PRIORITIZE_STATUS_MOVES",
    "F_RISKY_ATTACKS",
    "F_PRIORITIZE_DAMAGE",
    "F_MULTI_BATTLE_PARTNER",
    "F_DOUBLE_BATTLE",
    "F_PRIORITIZE_HEALING",
    "F_USE_WEATHER",
    "F_HARRASSMENT",
    "F_ROAMING_MON",
    "F_SAFARI_ZONE",
    "F_CATCHING_DEMO",
]

TRAINER_PARTY_MON_FLAG_DEFINES = [
    "TRAINER_DATA_TYPE_MOVES",
    "TRAINER_DATA_TYPE_ITEMS",
    "TRAINER_DATA_TYPE_ABILITY",
    "TRAINER_DATA_TYPE_BALL",
    "TRAINER_DATA_TYPE_IV_EV_SET",
    "TRAINER_DATA_TYPE_NATURE_SET",
    "TRAINER_DATA_TYPE_SHINY_LOCK",
]

TEXT_TYPE_NAMES = {
    0: "TRMSG_INTRO",
    1: "TRMSG_LOSE",
    2: "TRMSG_AFTER",
    3: "TRMSG_DBL_INTRO_1",
    4: "TRMSG_DBL_LOSE_1",
    5: "TRMSG_DBL_AFTER_1",
    6: "TRMSG_DBL_1POKE_1",
    7: "TRMSG_DBL_INTRO_2",
    8: "TRMSG_DBL_LOSE_2",
    9: "TRMSG_DBL_AFTER_2",
    10: "TRMSG_DBL_1POKE_2",
    13: "TRMSG_HIT_POKE_FIRST_TIME",
    14: "TRMSG_CURRENT_POKE_HALF",
    15: "TRMSG_LAST_POKE",
    16: "TRMSG_LAST_POKE_HALF",
    17: "TRMSG_PHONE_REMATCH_INTRO",
    18: "TRMSG_PHONE_REMATCH_DBL_INTRO_1",
    19: "TRMSG_PHONE_REMATCH_DBL_INTRO_2",
    20: "TRMSG_WIN",
}

ABILITY_SLOT_NAMES = {
    0: "TRAINER_POKEMON_ABILITY_1",
    2: "TRAINER_POKEMON_ABILITY_HIDDEN",
    32: "TRAINER_POKEMON_ABILITY_2",
}

TRAINER_EXTRA_FLAG_DEFINES = [
    "TRAINER_DATA_EXTRA_TYPE_STATUS",
    "TRAINER_DATA_EXTRA_TYPE_HP",
    "TRAINER_DATA_EXTRA_TYPE_ATK",
    "TRAINER_DATA_EXTRA_TYPE_DEF",
    "TRAINER_DATA_EXTRA_TYPE_SPEED",
    "TRAINER_DATA_EXTRA_TYPE_SP_ATK",
    "TRAINER_DATA_EXTRA_TYPE_SP_DEF",
    "TRAINER_DATA_EXTRA_TYPE_PP_COUNTS",
    "TRAINER_DATA_EXTRA_TYPE_NICKNAME",
]


def _parse_define_map(header_path, prefix):
    values = {}
    with open(REPO_ROOT / header_path, "r", encoding="utf-8") as header_file:
        for line in header_file:
            line = line.strip()
            if not line.startswith(f"#define {prefix}"):
                continue
            parts = line.split()
            if len(parts) < 3:
                continue
            name = parts[1]
            try:
                value = int(parts[2].strip("()"), 0)
            except ValueError:
                continue
            values[value] = name
    return values


NATURE_NAMES = _parse_define_map("include/constants/pokemon.h", "NATURE_")


def c_string(value):
    escaped = (
        value.replace("\n", "\\n")
        .replace("\r", "\\r")
    )
    return json.dumps(escaped, ensure_ascii=False)


def decode_trainer_names(msgdata_narc):
    names = []
    for line in decode_msg_bank(msgdata_narc, 729):
        names.append(line.removeprefix("{TRNAME}"))
    return names


def decode_trainer_text(msgdata_narc):
    return decode_msg_bank(msgdata_narc, 728)


def parse_text_archives(rom, decoded_text_lines):
    text_map = ndspy.narc.NARC(rom.files[rom.filenames["a/0/5/7"]]).files[0]
    text_offsets = ndspy.narc.NARC(rom.files[rom.filenames["a/1/3/1"]]).files[0]

    entries = []
    for offset in range(0, len(text_map), 4):
        trainer_id, text_type = struct.unpack_from("<HH", text_map, offset)
        entries.append((trainer_id, text_type))

    if len(entries) != len(decoded_text_lines):
        raise ValueError(
            f"trainer text row count mismatch: map has {len(entries)} rows, bank 728 has {len(decoded_text_lines)} lines"
        )

    trainer_text = {}
    text_order = []
    seen_trainers = set()
    for index, (trainer_id, text_type) in enumerate(entries):
        if trainer_id not in trainer_text:
            trainer_text[trainer_id] = []
        trainer_text[trainer_id].append({
            "type": TEXT_TYPE_NAMES.get(text_type, str(text_type)),
            "text": decoded_text_lines[index],
        })
        if trainer_id not in seen_trainers:
            seen_trainers.add(trainer_id)
            text_order.append(trainer_id)

    return trainer_text, text_order, len(text_offsets) // 2


def trainer_type_expr(flags):
    if flags == 0:
        return "TRAINER_DATA_TYPE_NOTHING"
    return flags_to_string(flags, TRAINER_PARTY_MON_FLAG_DEFINES)


def ai_flags_expr(flags):
    return flags_to_string(flags, AI_FLAG_DEFINES) if flags != 0 else "0"


def battle_type_expr(value):
    return "DOUBLE_BATTLE" if value != 0 else "SINGLE_BATTLE"


def party_size_expr(value):
    party_size = value & TRAINER_PARTY_SIZE_MASK
    if value & TRAINER_RANDOM_PARTY_ORDER_FLAG:
        return f"TRAINER_DATA_RANDOM_PARTY_ORDER | {party_size}"
    return str(party_size)


def ability_slot_expr(value):
    return ABILITY_SLOT_NAMES.get(value, str(value))


def ability_expr(value):
    return lookup_ability(value)


def nature_expr(value):
    return NATURE_NAMES.get(value, str(value))


def additional_flags_expr(value):
    return flags_to_string(value, TRAINER_EXTRA_FLAG_DEFINES) if value != 0 else "0"


def nickname_expr(values):
    return "{ " + ", ".join(str(value) for value in values) + " }"


def species_expr(mon, expanded):
    species_id = mon["species_id"]
    form = species_id // (2048 if expanded else 1024)
    base_species = species_id & ((2048 if expanded else 1024) - 1)
    species = lookup_species(base_species)
    if form == 0:
        return species
    return f"MON_WITH_FORM({species}, {form})"


def write_party_mon_c(lines, mon, flags, expanded, indent):
    pad = " " * indent
    species = species_expr(mon, expanded)

    lines.append(f"{pad}{{")
    lines.append(f"{pad}    .ivs = {mon['ivs']},")
    lines.append(f"{pad}    .abilitySlot = {ability_slot_expr(mon['ability'])},")
    lines.append(f"{pad}    .level = {mon['level']},")
    lines.append(f"{pad}    .species = {species},")

    if flags & 0x02:
        lines.append(f"{pad}    .item = {lookup_item(mon['item_id'])},")
    if flags & 0x01:
        lines.append(
            f"{pad}    .moves = {{ {lookup_move(mon['move_1'])}, {lookup_move(mon['move_2'])}, "
            f"{lookup_move(mon['move_3'])}, {lookup_move(mon['move_4'])} }},"
        )
    if flags & 0x04:
        lines.append(f"{pad}    .ability = {ability_expr(mon['custom_ability'])},")
    if flags & 0x08:
        lines.append(f"{pad}    .ball = {lookup_item(mon['ball'])},")
    if flags & 0x10:
        lines.append(
            f"{pad}    .setIvs = {{ {mon['hp_iv']}, {mon['atk_iv']}, {mon['def_iv']}, "
            f"{mon['spd_iv']}, {mon['spatk_iv']}, {mon['spdef_iv']} }},"
        )
        lines.append(
            f"{pad}    .setEvs = {{ {mon['hp_ev']}, {mon['atk_ev']}, {mon['def_ev']}, "
            f"{mon['spd_ev']}, {mon['spatk_ev']}, {mon['spdef_ev']} }},"
        )
    if flags & 0x20:
        lines.append(f"{pad}    .nature = {nature_expr(mon['nature'])},")
    if flags & 0x40:
        lines.append(f"{pad}    .shinyLock = {mon['shiny_lock']},")
    if flags & 0x80:
        lines.append(f"{pad}    .additionalFlags = {additional_flags_expr(mon['additional_flags'])},")
        if mon["additional_flags"] & 0x01:
            lines.append(f"{pad}    .status = {mon['status']},")
        if mon["additional_flags"] & 0x02:
            lines.append(f"{pad}    .hp = {mon['hp']},")
        if mon["additional_flags"] & 0x04:
            lines.append(f"{pad}    .attack = {mon['atk']},")
        if mon["additional_flags"] & 0x08:
            lines.append(f"{pad}    .defense = {mon['def']},")
        if mon["additional_flags"] & 0x10:
            lines.append(f"{pad}    .speed = {mon['spd']},")
        if mon["additional_flags"] & 0x20:
            lines.append(f"{pad}    .spAttack = {mon['spatk']},")
        if mon["additional_flags"] & 0x40:
            lines.append(f"{pad}    .spDefense = {mon['spdef']},")
        if mon["additional_flags"] & 0x80:
            lines.append(
                f"{pad}    .ppCounts = {{ {mon['move_1_pp']}, {mon['move_2_pp']}, "
                f"{mon['move_3_pp']}, {mon['move_4_pp']} }},"
            )
        if mon["additional_flags"] & 0x100:
            lines.append(f"{pad}    .nickname = {nickname_expr(mon['nickname'])},")

    lines.append(f"{pad}    .ballSeal = {mon['ballseal']},")
    lines.append(f"{pad}}},")


def dump_trainerdata_c(rom, msgdata_narc, expanded):
    trdata_narc = dump_narc(rom, "a/0/5/5", TRDATA_NARC_FORMAT)
    trpok_narc = dump_trpok_narc(rom, "a/0/5/6", trdata_narc)
    trainer_names = decode_trainer_names(msgdata_narc)
    trainer_text, text_order, _text_offset_count = parse_text_archives(rom, decode_trainer_text(msgdata_narc))

    lines = [
        '#include "../include/trainer_data.h"',
        "",
        "const TrainerData sTrainerData[] = {",
    ]

    for trainer_id, trainer in enumerate(trdata_narc):
        party = trpok_narc[trainer_id]
        lines.append(f"    [{trainer_id}] = {{")
        lines.append(f"        .name = {c_string(trainer_names[trainer_id])},")
        lines.append("        .data = {")
        lines.append(f"            .trainerType = {trainer_type_expr(trainer['flags'])},")
        lines.append(f"            .trainerClass = {lookup_const('TRAINERCLASS', trainer['class'])},")
        if trainer["num_pokemon"] & TRAINER_RANDOM_PARTY_ORDER_FLAG:
            lines.append(f"            .partySize = {party_size_expr(trainer['num_pokemon'])},")
        lines.append(
            "            .items = { "
            + ", ".join(
                [
                    lookup_item(trainer["item_1"]),
                    lookup_item(trainer["item_2"]),
                    lookup_item(trainer["item_3"]),
                    lookup_item(trainer["item_4"]),
                ]
            )
            + " },"
        )
        lines.append(f"            .aiFlags = {ai_flags_expr(trainer['ai'])},")
        lines.append(f"            .battleType = {battle_type_expr(trainer['battle_type'])},")
        lines.append("        },")

        if party:
            lines.append("        .party = {")
            for mon_index in range(len(party)):
                write_party_mon_c(lines, party[mon_index], trainer["flags"], expanded, 12)
            lines.append("        },")

        if trainer_text.get(trainer_id):
            lines.append("        .text = {")
            for entry in trainer_text[trainer_id]:
                lines.append("            {")
                lines.append(f"                .type = {entry['type']},")
                lines.append(f"                .text = {c_string(entry['text'])},")
                lines.append("            },")
            lines.append("        },")

        lines.append("    },")
        lines.append("")

    lines.extend([
        "};",
        "",
        "const u16 sTrainerTextOrder[] = {",
    ])
    for trainer_id in text_order:
        lines.append(f"    {trainer_id},")
    lines.extend([
        "};",
        "",
        "const u32 sTrainerDataCount = sizeof(sTrainerData) / sizeof(sTrainerData[0]);",
        "const u32 sTrainerTextOrderCount = sizeof(sTrainerTextOrder) / sizeof(sTrainerTextOrder[0]);",
    ])
    return "\n".join(lines)

def dump_trainerdata(trdata_narc, trpok_narc, is_expanded):
    trainerdata_armips = ""
    trainerdata_armips += ".nds\n"
    trainerdata_armips += ".thumb\n\n"
    trainerdata_armips += ".include \"armips/include/constants.s\"\n"
    trainerdata_armips += ".include \"armips/include/macros.s\"\n\n"
    trainerdata_armips += ".include \"asm/include/abilities.inc\"\n"
    trainerdata_armips += ".include \"asm/include/items.inc\"\n"
    trainerdata_armips += ".include \"asm/include/moves.inc\"\n"
    trainerdata_armips += ".include \"asm/include/species.inc\"\n\n\n"

    names = get_trainer_names()
    for idx, trainer in enumerate(trdata_narc):
        flags = trdata_narc[idx]["flags"]
        trMonTypeFlags = "TRAINER_DATA_TYPE_NOTHING" if flags == 0 else flags_to_string(flags, TRAINER_PARTY_MON_FLAG_DEFINES)
        try:
            trainerdata_armips += f'trainerdata {idx}, "{names[int(idx)]}"\n'
        except KeyError:
            trainerdata_armips += f'trainerdata {idx}, "NoName"\n'
        trainerdata_armips += f'    trainermontype {trMonTypeFlags}\n'
        try:
            trainerdata_armips += f'    trainerclass {CONSTANTS["TRAINERCLASS"][trdata_narc[idx]["class"]]}\n'
        except KeyError:
            trainerdata_armips += f'    trainerclass {trdata_narc[idx]["class"]}\n'
        trainerdata_armips += f'    nummons {trdata_narc[idx]["num_pokemon"]}\n'
        trainerdata_armips += f'    item {ITEMS["ITEM"][trdata_narc[idx]["item_1"]]}\n'
        trainerdata_armips += f'    item {ITEMS["ITEM"][trdata_narc[idx]["item_2"]]}\n'
        trainerdata_armips += f'    item {ITEMS["ITEM"][trdata_narc[idx]["item_3"]]}\n'
        trainerdata_armips += f'    item {ITEMS["ITEM"][trdata_narc[idx]["item_4"]]}\n'
        trainerdata_armips += f'    aiflags {flags_to_string(trdata_narc[idx]["ai"], AI_FLAG_DEFINES)}\n'
        trainerdata_armips += f'    battletype {"DOUBLE_BATTLE" if trdata_narc[idx]["battle_type"] != 0 else "SINGLE_BATTLE"}\n'
        trainerdata_armips += f'    endentry\n\n'
        trainerdata_armips += f'    party {idx}\n'
        # can't just use nummons i don't think
        for monPartyIdx in range(0, len(trpok_narc[idx])):
            trainerdata_armips += f'        // mon {monPartyIdx}\n'
            trainerdata_armips += f'        ivs {trpok_narc[idx][monPartyIdx]["ivs"]}\n'
            trainerdata_armips += f'        abilityslot {trpok_narc[idx][monPartyIdx]["ability"]}\n'
            trainerdata_armips += f'        level {trpok_narc[idx][monPartyIdx]["level"]}\n'
            if get_form(trpok_narc[idx][monPartyIdx]["species_id"], is_expanded):
                trainerdata_armips += f'        monwithform {MONS["SPECIES"][get_base_species(trpok_narc[idx][monPartyIdx]["species_id"], is_expanded)]}, {get_form(trpok_narc[idx][monPartyIdx]["species_id"], is_expanded)}\n'
            else:
                trainerdata_armips += f'        pokemon {MONS["SPECIES"][trpok_narc[idx][monPartyIdx]["species_id"]]}\n'
            # item
            if flags & 0x2:
                trainerdata_armips += f'        item {ITEMS["ITEM"][trpok_narc[idx][monPartyIdx]["item_id"]]}\n'
            # toggled fields!  moves
            if flags & 0x1:
                trainerdata_armips += f'        move {MOVES["MOVE"][trpok_narc[idx][monPartyIdx]["move_1"]]}\n'
                trainerdata_armips += f'        move {MOVES["MOVE"][trpok_narc[idx][monPartyIdx]["move_2"]]}\n'
                trainerdata_armips += f'        move {MOVES["MOVE"][trpok_narc[idx][monPartyIdx]["move_3"]]}\n'
                trainerdata_armips += f'        move {MOVES["MOVE"][trpok_narc[idx][monPartyIdx]["move_4"]]}\n'
            # custom ability
            if flags & 0x4:
                trainerdata_armips += f'        ability {ABILITIES["ABILITY"][trpok_narc[idx][monPartyIdx]["custom_ability"]]}\n'
            # ball
            if flags & 0x8:
                trainerdata_armips += f'        ball {ITEMS["ITEM"][trpok_narc[idx][monPartyIdx]["ball"]]}\n'
            # set ev's and iv's
            if flags & 0x10:
                trainerdata_armips += f'        setivs {trpok_narc[idx][monPartyIdx]["iv_hp"]}, {trpok_narc[idx][monPartyIdx]["iv_atk"]}, {trpok_narc[idx][monPartyIdx]["iv_def"]}, {trpok_narc[idx][monPartyIdx]["iv_spd"]}, {trpok_narc[idx][monPartyIdx]["iv_spatk"]}, {trpok_narc[idx][monPartyIdx]["iv_spdef"]}\n'
                trainerdata_armips += f'        setevs {trpok_narc[idx][monPartyIdx]["ev_hp"]}, {trpok_narc[idx][monPartyIdx]["ev_atk"]}, {trpok_narc[idx][monPartyIdx]["ev_def"]}, {trpok_narc[idx][monPartyIdx]["ev_spd"]}, {trpok_narc[idx][monPartyIdx]["ev_spatk"]}, {trpok_narc[idx][monPartyIdx]["ev_spdef"]}\n'
            # nature
            if flags & 0x20:
                trainerdata_armips += f'        nature {trpok_narc[idx][monPartyIdx]["nature"]}\n'
            # shiny lock
            if flags & 0x40:
                trainerdata_armips += f'        shinylock {trpok_narc[idx][monPartyIdx]["shiny_lock"]}\n'
            if flags & 0x80:
                print("Additional flags not currently implemented in the dumper!  Quit.")
                sys.exit(0)
            trainerdata_armips += f'        ballseal {trpok_narc[idx][monPartyIdx]["ballseal"]}\n'
            if monPartyIdx != len(trpok_narc[idx])-1:
                trainerdata_armips += '\n'
        trainerdata_armips += f'    endparty\n\n'

    return trainerdata_armips

def get_trainer_names():
    # proper way to get trainer names is to dump them from the rom.  handler extracts everything from the rom to a build/trainernames.txt
    with open("build/trainernames.txt", 'r', encoding="utf-8") as f:
        content = f.readlines()
    names = {}
    current_trainer_index = 0
    for index, line in enumerate(content):
        names[current_trainer_index] = line.replace("{TRNAME}", "").replace("\n", "")
        current_trainer_index += 1
    return names
