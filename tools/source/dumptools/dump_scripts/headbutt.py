from pathlib import Path

from dump_scripts.dump_tools import lookup_species

HEADBUTT_DATA_PATH = Path("data/Headbutt.c")


def _species_name(species):
    return lookup_species(species)


def load_headbutt_file_names(path, expected_count):
    if not path.exists():
        return None

    names = []
    for line in path.read_text(encoding="ascii").splitlines():
        line = line.strip()
        prefix = "typedef struct PACKED HeadbuttFile_"
        if line.startswith(prefix):
            names.append(line[len(prefix):line.index(" {")])

    if len(names) != expected_count:
        return None
    return names


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


def dump_headbutt_single_c(files, output_path, file_names=None):
    output_path = Path(output_path)

    lines = [
        '#include "../include/types.h"',
        '#include "../include/constants/species.h"',
        "",
        "typedef struct PACKED HeadbuttEncounterSlot {",
        "    u16 species;",
        "    u8 minLevel;",
        "    u8 maxLevel;",
        "} HeadbuttEncounterSlot;",
        "",
        "typedef struct PACKED HeadbuttTreeCoord {",
        "    s16 x;",
        "    s16 y;",
        "} HeadbuttTreeCoord;",
        "",
    ]

    file_rows = []
    used_field_names = set()

    for index, data in enumerate(files):
        if file_names is None:
            stem = f"{index:03d}"
            field_name = f"entry{index:03d}"
        else:
            stem = file_names[index]
            raw_name = stem.split("_", 1)[1] if "_" in stem else stem
            parts = [part for part in raw_name.split("_") if part]
            if not parts:
                field_name = f"entry{index:03d}"
            else:
                field_name = parts[0].lower() + "".join(part[:1].upper() + part[1:] for part in parts[1:])
                field_name = field_name.replace("Pokmon", "Pokemon")
        type_name = f"HeadbuttFile_{stem}"
        if field_name in used_field_names:
            field_name = f"{field_name}{index:03d}"
        used_field_names.add(field_name)
        normal_trees = int.from_bytes(data[0:2], "little")
        special_trees = int.from_bytes(data[2:4], "little")
        rows = []
        offset = 4

        if normal_trees or special_trees:
            normal_slots = []
            special_slots = []

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
        else:
            normal_slots = []
            special_slots = []

        file_rows.append((index, type_name, field_name, normal_trees, special_trees, normal_slots, special_slots, rows))

    for _, type_name, _, _, _, _, _, rows in file_rows:
        lines.append(f"typedef struct PACKED {type_name} {{")
        lines.append("    u16 normalTreeCount;")
        lines.append("    u16 specialTreeCount;")
        if rows:
            lines.append("    HeadbuttEncounterSlot normalSlots[12];")
            lines.append("    HeadbuttEncounterSlot specialSlots[6];")
            lines.append(f"    HeadbuttTreeCoord treeCoords[{len(rows)}][6];")
        lines.append(f"}} {type_name};")
        lines.append("")

    lines.extend([
        "",
        "typedef struct PACKED HeadbuttArchiveData {",
    ])

    for _, type_name, field_name, _, _, _, _, _ in file_rows:
        lines.append(f"    {type_name} {field_name};")

    lines.extend([
        "} HeadbuttArchiveData;",
        "",
        "",
    ])

    lines.extend([
        "const u32 __size[] =",
        "{",
    ])

    for _, type_name, _, _, _, _, _, _ in file_rows:
        lines.append(f"    sizeof({type_name}),")

    lines.extend([
        "};",
        "",
        "const HeadbuttArchiveData __data =",
        "{",
    ])

    for _, _, field_name, normal_trees, special_trees, normal_slots, special_slots, rows in file_rows:
        lines.extend([
            f"    .{field_name} = {{",
            f"        .normalTreeCount = {normal_trees},",
            f"        .specialTreeCount = {special_trees},",
        ])

        if normal_slots:
            lines.extend([
                "        .normalSlots =",
                "        {",
            ])
            for species, min_level, max_level in normal_slots:
                lines.append(f"            {{ {lookup_species(species)}, {min_level}, {max_level} }},")
            lines.extend([
                "        },",
                "        .specialSlots =",
                "        {",
            ])
            for species, min_level, max_level in special_slots:
                lines.append(f"            {{ {lookup_species(species)}, {min_level}, {max_level} }},")
            lines.extend([
                "        },",
            ])

        if rows:
            lines.extend([
                "        .treeCoords =",
                "        {",
            ])
            for row in rows:
                coords = ", ".join(f"{{ {x}, {y} }}" for x, y in row)
                lines.append(f"            {{ {coords} }},")
            lines.extend([
                "        },",
            ])

        lines.extend([
            "    },",
            "",
        ])

    lines.append("};")
    lines.append("")

    output_path.write_text("\n".join(lines), encoding="ascii")


def dump_headbutt_c(files, output_path):
    dump_headbutt_single_c(files, output_path, load_headbutt_file_names(HEADBUTT_DATA_PATH, len(files)))
