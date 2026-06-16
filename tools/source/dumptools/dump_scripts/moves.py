import subprocess
import tempfile
from pathlib import Path

from dump_scripts.dump_tools import *


RANGE_FLAG_DEFINES = [
    "RANGE_SINGLE_TARGET_SPECIAL",
    "RANGE_RANDOM_OPPONENT",
    "RANGE_ADJACENT_OPPONENTS",
    "RANGE_ALL_ADJACENT",
    "RANGE_USER",
    "RANGE_USER_SIDE",
    "RANGE_FIELD",
    "RANGE_OPPONENT_SIDE",
    "RANGE_ALLY",
    "RANGE_SINGLE_TARGET_USER_SIDE",
    "RANGE_FRONT",
]


def get_flags(value):
    flags = {
        0x40: "FLAG_KEEP_HP_BAR",
        0x10: "FLAG_MIRROR_MOVE",
        0x20: "FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED",
        0x02: "FLAG_PROTECT",
        0x01: "FLAG_CONTACT",
        0x04: "FLAG_MAGIC_COAT",
        0x08: "FLAG_SNATCH",
        0x80: "FLAG_HIDE_SHADOW",
    }

    active_flags = []
    for flag_value, flag_name in flags.items():
        if value & flag_value:
            active_flags.append(flag_name)

    return " | ".join(active_flags) if active_flags else "0x00"


def decode_msg_bank(msgdata_narc, bank_id):
    with tempfile.TemporaryDirectory() as tmpdir:
        tmpdir = Path(tmpdir)
        encoded_path = tmpdir / f"{bank_id:04d}.bin"
        decoded_path = tmpdir / f"{bank_id:04d}.txt"
        encoded_path.write_bytes(msgdata_narc.files[bank_id])
        subprocess.run(
            ["./tools/msgenc", "-d", "-c", "charmap.txt", str(encoded_path), str(decoded_path)],
            check=True,
        )
        return decoded_path.read_text(encoding="utf-8").splitlines()


def escape_c_string(text):
    return (
        text.replace("\\", "\\\\")
        .replace('"', '\\"')
        .replace("\n", "\\n")
        .replace("\r", "\\r")
    )


def get_full_name(used_move_text):
    prefixes = [
        "{STRVAR_1 1, 0, 0} used\\n",
        "The wild {STRVAR_1 1, 0, 0} used\\n",
        "The opposing {STRVAR_1 1, 0, 0} used\\n",
    ]
    for prefix in prefixes:
        if used_move_text.startswith(prefix) and used_move_text.endswith("!"):
            return used_move_text[len(prefix) : -1]
    return used_move_text


def dump_moves_c(moves_narc, msgdata_narc):
    move_names = decode_msg_bank(msgdata_narc, 750)
    move_caps_names = decode_msg_bank(msgdata_narc, 751)
    move_used_names = decode_msg_bank(msgdata_narc, 3)
    move_descriptions = decode_msg_bank(msgdata_narc, 749)

    lines = [
        '#include "../include/move_data.h"',
        "",
        "const MoveSourceEntry sMoveSource[NUM_OF_MOVES + 1] = {",
    ]

    for idx, move in enumerate(moves_narc[:-1]):
        range_num = move["target"]
        range_string = "RANGE_SINGLE_TARGET" if range_num == 0 else flags_to_string(move["target"], RANGE_FLAG_DEFINES)
        full_name = get_full_name(move_used_names[idx * 3])
        lines.extend(
            [
                f"    [{lookup_move(idx)}] = {{",
                "        .names = {",
                f'            .name = "{escape_c_string(move_names[idx])}",',
                f'            .capsName = "{escape_c_string(move_caps_names[idx])}",',
                f'            .fullName = "{escape_c_string(full_name)}",',
                "        },",
                "        .data = {",
                f"            .effect = {MOVE_EFFECTS['MOVE'].get(move['effect'], str(move['effect']))},",
                f"            .split = {MOVE_MACROS['SPLIT'][move['category']]},",
                f"            .power = {move['power']},",
                f"            .type = {lookup_const('TYPE', move['type'])},",
                f"            .accuracy = {move['accuracy']},",
                f"            .pp = {move['pp']},",
                f"            .effectChance = {move['effect_chance']},",
                "        },",
                "        .battle = {",
                f"            .target = {range_string},",
                f"            .priority = {signed_byte(move['priority'])},",
                f"            .flags = {get_flags(move['properties'])},",
                "        },",
                "        .contest = {",
                f"            .appeal = {MOVE_MACROS['APPEAL'].get(move['appeal'], str(move['appeal']))},",
                f"            .contestType = {MOVE_MACROS['CONTEST'].get(move['contest_type'], str(move['contest_type']))},",
                "        },",
                f'        .description = "{escape_c_string(move_descriptions[idx])}",',
                "    },",
                "",
            ]
        )

    move = moves_narc[-1]
    range_num = move["target"]
    range_string = "RANGE_SINGLE_TARGET" if range_num == 0 else flags_to_string(move["target"], RANGE_FLAG_DEFINES)
    lines.extend(
        [
            "    [NUM_OF_MOVES] = {",
            "        .names = {",
            '            .name = "",',
            '            .capsName = "",',
            '            .fullName = "",',
            "        },",
            "        .data = {",
            f"            .effect = {MOVE_EFFECTS['MOVE'].get(move['effect'], str(move['effect']))},",
            f"            .split = {MOVE_MACROS['SPLIT'][move['category']]},",
            f"            .power = {move['power']},",
            f"            .type = {lookup_const('TYPE', move['type'])},",
            f"            .accuracy = {move['accuracy']},",
            f"            .pp = {move['pp']},",
            f"            .effectChance = {move['effect_chance']},",
            "        },",
            "        .battle = {",
            f"            .target = {range_string},",
            f"            .priority = {signed_byte(move['priority'])},",
            f"            .flags = {get_flags(move['properties'])},",
            "        },",
            "        .contest = {",
            f"            .appeal = {MOVE_MACROS['APPEAL'].get(move['appeal'], str(move['appeal']))},",
            f"            .contestType = {MOVE_MACROS['CONTEST'].get(move['contest_type'], str(move['contest_type']))},",
            f"            .padding02 = {{ {move['contest_padding'] & 0xFF}, {(move['contest_padding'] >> 8) & 0xFF} }},",
            "        },",
            '        .description = "",',
            "    },",
            "};",
        ]
    )

    return "\n".join(lines)
