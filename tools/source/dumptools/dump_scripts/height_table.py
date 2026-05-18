from pathlib import Path

from dump_scripts.dump_tools import lookup_species


def field_name(value):
    if len(value) == 0:
        return '"null"'
    return str(value[0])


def dump_heighttable(files):
    lines = [
        ".nds",
        ".thumb",
        "",
        '.include "armips/include/macros.s"',
        "",
        '.include "asm/include/species.inc"',
        "",
        "// format of heightentry:",
        "// heightentry species, female back height offset, male back height offset, female front height offset, male front height offset",
        '// "null" is specifically reserved for pokémon that do not have a specific gender:  i.e. the male entries for female nidoran are "null"',
        "",
        "",
    ]

    for species in range(len(files) // 4):
        values = files[species * 4:species * 4 + 4]
        lines.append(
            f'heightentry {lookup_species(species)}, {field_name(values[0])}, {field_name(values[1])}, {field_name(values[2])}, {field_name(values[3])}'
        )

    lines.append("")
    return "\n".join(lines)


def dump_heighttable_c(files, output_dir):
    output_path = Path(output_dir)
    output_path.parent.mkdir(parents=True, exist_ok=True)

    lines = [
        '#include "../include/types.h"',
        '#include "../include/config.h"',
        '#include "../include/constants/species.h"',
        "",
        "typedef struct PACKED HeightTableEntry {",
        "    s8 femaleBack;",
        "    s8 maleBack;",
        "    s8 femaleFront;",
        "    s8 maleFront;",
        "} HeightTableEntry;",
        "",
        "u32 __size = 1;",
        "u8 __nullval = 0xFF;",
        "",
        "const HeightTableEntry __data[] =",
        "{",
    ]

    for species in range(len(files) // 4):
        values = files[species * 4:species * 4 + 4]
        rendered = []
        for value in values:
            rendered.append("-1" if len(value) == 0 else str(value[0]))
        lines.append(
            f'    [{lookup_species(species)}] = {{ {", ".join(rendered)} }},'
        )

    lines.extend([
        "};",
        "",
    ])
    output_path.write_text("\n".join(lines), encoding="ascii")
