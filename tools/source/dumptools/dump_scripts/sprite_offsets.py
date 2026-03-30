from dump_scripts.dump_tools import *


RECORD_SIZE = 0x59


def signed(value):
    return value - 256 if value > 127 else value


def shadow_name(value):
    names = {
        0: "SHADOW_NO_SHADOW",
        1: "SHADOW_SIZE_SMALL",
        2: "SHADOW_SIZE_MEDIUM",
        3: "SHADOW_SIZE_LARGE",
    }
    return names.get(value, str(value))


def dump_spriteoffsets(data):
    lines = []
    lines.append(".nds")
    lines.append(".thumb")
    lines.append("")
    lines.append('.open "build/a180/0_0", 0')
    lines.append("")
    lines.append("// the in-battle sprite offsets for each pokemon.  also included are the shadow coords + mon animation constants")
    lines.append("")
    lines.append("")
    lines.append("          // species, monfrontanim, monbackanim, monoffy, shadowoffx, shadow size")

    count = len(data) // RECORD_SIZE
    for species in range(count):
        start = species * RECORD_SIZE
        front = data[start + 0x01]
        back = data[start + 0x2C]
        yoff = signed(data[start + 0x56])
        shadowx = signed(data[start + 0x57])
        shadowsize = data[start + 0x58]
        lines.append(
            f'dataentry {MONS["SPECIES"][species]}, {front}, {back}, {yoff}, {shadowx}, {shadow_name(shadowsize)}'
        )

    lines.append("")
    lines.append(".close")
    lines.append("")
    return "\n".join(lines)


def dump_spriteoffsets_c(data):
    lines = [
        '#include "../include/types.h"',
        '#include "../include/constants/species.h"',
        "",
        "typedef struct PACKED PokepicAnimScript {",
        "    s8 next;",
        "    u8 duration;",
        "    s8 xOffset;",
        "    s8 unk_03;",
        "} PokepicAnimScript;",
        "",
        "typedef struct PACKED SpriteOffsetSideData {",
        "    u8 unk_00;",
        "    u8 anim;",
        "    u8 unk_02;",
        "    PokepicAnimScript script[10];",
        "} SpriteOffsetSideData;",
        "",
        "typedef struct PACKED SpriteOffsetEntry {",
        "    SpriteOffsetSideData front;",
        "    SpriteOffsetSideData back;",
        "    s8 yOffset;",
        "    s8 shadowX;",
        "    u8 shadowSize;",
        "} SpriteOffsetEntry;",
        "",
        "const SpriteOffsetEntry __data[] = {",
    ]

    count = len(data) // RECORD_SIZE
    for species in range(count):
        start = species * RECORD_SIZE
        lines.append(f'    [{MONS["SPECIES"][species]}] = {{')
        for label, offset in (("front", 0x00), ("back", 0x2B)):
            lines.append(f"        .{label} = {{")
            lines.append(f"            .unk_00 = {data[start + offset + 0x00]},")
            lines.append(f"            .anim = {data[start + offset + 0x01]},")
            lines.append(f"            .unk_02 = {data[start + offset + 0x02]},")
            lines.append("            .script = {")
            script_base = start + offset + 0x03
            for i in range(10):
                entry = script_base + i * 4
                lines.append(
                    "                { .next = %d, .duration = %d, .xOffset = %d, .unk_03 = %d },"
                    % (
                        signed(data[entry + 0x00]),
                        data[entry + 0x01],
                        signed(data[entry + 0x02]),
                        signed(data[entry + 0x03]),
                    )
                )
            lines.append("            },")
            lines.append("        },")
        lines.append(f"        .yOffset = {signed(data[start + 0x56])},")
        lines.append(f"        .shadowX = {signed(data[start + 0x57])},")
        lines.append(f"        .shadowSize = {data[start + 0x58]},")
        lines.append("    },")

    lines.extend([
        "};",
        "",
        "u32 __size = sizeof(__data);",
        "",
    ])
    return "\n".join(lines)
