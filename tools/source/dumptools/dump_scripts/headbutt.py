from pathlib import Path

from dump_scripts.dump_tools import lookup_species


def _species_name(species):
    return lookup_species(species)


def dump_headbutt(files):
    lines = [
        '.include "armips/include/constants.s"',
        '.include "armips/include/macros.s"',
        "",
        '.include "asm/include/species.inc"',
        "",
        ".nds",
        ".thumb",
        "",
        "// headbutt trees",
        "// headbuttheader header, numberOfNormalTrees, numberOfSpecialTrees",
        "// treecoords requires 6 pairs of x/y coordinates per tree.  fill the remaining pairs with -1's",
        "",
    ]

    for index, data in enumerate(files):
        normal_trees = int.from_bytes(data[0:2], "little")
        special_trees = int.from_bytes(data[2:4], "little")
        lines.append(f"headbuttheader {index:3d}, {normal_trees:3d}, {special_trees:3d}")
        if normal_trees or special_trees:
            offset = 4
            lines.append("    // normal slots")
            for _ in range(12):
                species = int.from_bytes(data[offset:offset + 2], "little")
                min_level = data[offset + 2]
                max_level = data[offset + 3]
                offset += 4
                lines.append(f"    headbuttencounter {_species_name(species)}, {min_level}, {max_level}")

            lines.append("    // special slots")
            for _ in range(6):
                species = int.from_bytes(data[offset:offset + 2], "little")
                min_level = data[offset + 2]
                max_level = data[offset + 3]
                offset += 4
                lines.append(f"    headbuttencounter {_species_name(species)}, {min_level}, {max_level}")

            normal_bytes = normal_trees * 24
            special_bytes = special_trees * 24
            remaining = len(data) - offset
            normal_row_bytes = min(normal_bytes, remaining)
            special_row_bytes = max(0, remaining - normal_row_bytes)

            if normal_row_bytes:
                lines.append("    // normal trees")
                for row_offset in range(0, normal_row_bytes, 24):
                    coords = [
                        int.from_bytes(
                            data[offset + row_offset + pair_offset:offset + row_offset + pair_offset + 2],
                            "little",
                            signed=True,
                        )
                        for pair_offset in range(0, 24, 2)
                    ]
                    lines.append("    treecoords " + ", ".join(str(value) for value in coords))

            if special_row_bytes:
                lines.append("    // special trees")
                special_base = offset + normal_row_bytes
                for row_offset in range(0, special_row_bytes, 24):
                    coords = [
                        int.from_bytes(
                            data[special_base + row_offset + pair_offset:special_base + row_offset + pair_offset + 2],
                            "little",
                            signed=True,
                        )
                        for pair_offset in range(0, 24, 2)
                    ]
                    lines.append("    treecoords " + ", ".join(str(value) for value in coords))

        lines.append(".close")
        lines.append("")

    return "\n".join(lines)


def _write_headbutt_header(output_dir):
    header = """#ifndef HEADBUTT_DATA_H
#define HEADBUTT_DATA_H

#include "../../include/types.h"
#include "../../include/constants/species.h"

typedef struct PACKED HeadbuttEncounterSlot {
    u16 species;
    u8 minLevel;
    u8 maxLevel;
} HeadbuttEncounterSlot;

typedef struct PACKED HeadbuttTreeCoord {
    s16 x;
    s16 y;
} HeadbuttTreeCoord;

#define HEADBUTT_DECLARE_FILE(name, row_count) \\
    typedef struct PACKED name { \\
        u16 normalTreeCount; \\
        u16 specialTreeCount; \\
        HeadbuttEncounterSlot normalSlots[12]; \\
        HeadbuttEncounterSlot specialSlots[6]; \\
        HeadbuttTreeCoord treeCoords[(row_count)][6]; \\
    } name

#define HEADBUTT_DECLARE_EMPTY_FILE(name) \\
    typedef struct PACKED name { \\
        u16 normalTreeCount; \\
        u16 specialTreeCount; \\
    } name

#endif
"""
    (output_dir / "headbutt.h").write_text(header, encoding="ascii")


def _write_headbutt_makefile(output_dir, file_names):
    lines = []
    lines.append("HEADBUTT_SOURCES := \\\n" + " \\\n".join(f"\t$(HEADBUTT_DEPENDENCIES_DIR)/{name}" for name in file_names))
    lines.append("")
    lines.append("HEADBUTT_OBJS := \\\n" + " \\\n".join(f"\t$(HEADBUTT_OBJ_DIR)/{name[:-2]}.o" for name in file_names))
    lines.append("")
    lines.append("HEADBUTT_BINS := \\\n" + " \\\n".join(f"\t$(HEADBUTT_DIR)/{name[:3]}" for name in file_names))
    lines.append("")

    for name in file_names:
        stem = name[:-2]
        index = name[:3]
        lines.append(f"$(HEADBUTT_OBJ_DIR)/{stem}.o: $(HEADBUTT_DEPENDENCIES_DIR)/{name} $(HEADBUTT_DEPENDENCIES_DIR)/headbutt.h | $(HEADBUTT_OBJ_DIR)")
        lines.append("\t$(CC) $(CFLAGS) -c $< -o $@")
        lines.append("")
        lines.append(f"$(HEADBUTT_DIR)/{index}: $(HEADBUTT_OBJ_DIR)/{stem}.o | $(HEADBUTT_DIR)")
        lines.append("\t$(OBJCOPY) -O binary $< $@")
        lines.append("")

    (output_dir / "headbutt.mk").write_text("\n".join(lines), encoding="ascii")


def dump_headbutt_c(files, output_dir):
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    file_names = []

    for old_file in output_dir.glob("[0-9][0-9][0-9]*.c"):
        old_file.unlink()

    for index, data in enumerate(files):
        file_name = f"{index:03d}.c"
        type_name = f"HeadbuttFile_{index:03d}"
        file_names.append(file_name)

        normal_trees = int.from_bytes(data[0:2], "little")
        special_trees = int.from_bytes(data[2:4], "little")
        offset = 4
        normal_slots = []
        special_slots = []
        rows = []

        if normal_trees or special_trees:
            for _ in range(12):
                species = int.from_bytes(data[offset:offset + 2], "little")
                min_level = data[offset + 2]
                max_level = data[offset + 3]
                normal_slots.append((species, min_level, max_level))
                offset += 4

            for _ in range(6):
                species = int.from_bytes(data[offset:offset + 2], "little")
                min_level = data[offset + 2]
                max_level = data[offset + 3]
                special_slots.append((species, min_level, max_level))
                offset += 4

            while offset < len(data):
                row = []
                for _ in range(6):
                    x = int.from_bytes(data[offset:offset + 2], "little", signed=True)
                    y = int.from_bytes(data[offset + 2:offset + 4], "little", signed=True)
                    row.append((x, y))
                    offset += 4
                rows.append(row)

        lines = [
            '#include "headbutt.h"',
            '#include "../../include/config.h"',
            "",
        ]
        if rows:
            lines.append(f"HEADBUTT_DECLARE_FILE({type_name}, {len(rows)});")
        else:
            lines.append(f"HEADBUTT_DECLARE_EMPTY_FILE({type_name});")
        lines.extend([
            "",
            f"const {type_name} UNUSED s{type_name} =",
            "{",
            f"    .normalTreeCount = {normal_trees},",
            f"    .specialTreeCount = {special_trees},",
        ])

        if normal_slots:
            lines.extend([
                "    .normalSlots =",
                "    {",
            ])
            for species, min_level, max_level in normal_slots:
                lines.append(f"        {{ {lookup_species(species)}, {min_level}, {max_level} }},")
            lines.extend([
                "    },",
                "    .specialSlots =",
                "    {",
            ])
            for species, min_level, max_level in special_slots:
                lines.append(f"        {{ {lookup_species(species)}, {min_level}, {max_level} }},")
            lines.extend([
                "    },",
            ])

        if rows:
            lines.extend([
                "    .treeCoords =",
                "    {",
            ])
            for row in rows:
                coords = ", ".join(f"{{ {x}, {y} }}" for x, y in row)
                lines.append(f"        {{ {coords} }},")
            lines.extend([
                "    },",
            ])

        lines.extend([
            "};",
            "",
        ])
        (output_dir / file_name).write_text("\n".join(lines), encoding="ascii")

    _write_headbutt_header(output_dir)
    _write_headbutt_makefile(output_dir, file_names)
