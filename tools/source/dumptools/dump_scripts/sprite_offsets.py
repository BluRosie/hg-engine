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
            f'dataentry {lookup_species(species)}, {front}, {back}, {yoff}, {shadowx}, {shadow_name(shadowsize)}'
        )

    lines.append("")
    lines.append(".close")
    lines.append("")
    return "\n".join(lines)


def dump_spriteoffsets_c(data):
    lines = [
        '#include "../include/sprite.h"',
        '#include "../include/constants/species.h"',
        "",
        "const SpriteFrameData __data[] = {",
    ]

    count = len(data) // RECORD_SIZE
    for species in range(count):
        start = species * RECORD_SIZE
        lines.append(f'    [{lookup_species(species)}] = {{')
        for header_name, frames_name, offset in (
            ("frontHeader", "frontFrames", 0x00),
            ("backHeader", "backFrames", 0x2B),
        ):
            lines.append(f"        .{header_name} = {{")
            lines.append(f"            .cryDelay = {data[start + offset + 0x00]},")
            lines.append(f"            .animation = {data[start + offset + 0x01]},")
            lines.append(f"            .animationDelay = {data[start + offset + 0x02]},")
            lines.append("        },")
            lines.append(f"        .{frames_name} = {{")
            script_base = start + offset + 0x03
            for i in range(10):
                entry = script_base + i * 4
                lines.append(
                    "                { .frameNo = %d, .duration = %d, .horizontalShift = %d, .verticalShift = %d },"
                    % (
                        signed(data[entry + 0x00]),
                        data[entry + 0x01],
                        signed(data[entry + 0x02]),
                        signed(data[entry + 0x03]),
                    )
                )
            lines.append("        },")
        lines.append(f"        .spriteYOffset = {signed(data[start + 0x56])},")
        lines.append(f"        .shadowXOffset = {signed(data[start + 0x57])},")
        lines.append(f"        .shadowSize = {data[start + 0x58]},")
        lines.append("    },")

    lines.extend([
        "};",
        "",
        "u32 __size = sizeof(__data);",
        "",
    ])
    return "\n".join(lines)
