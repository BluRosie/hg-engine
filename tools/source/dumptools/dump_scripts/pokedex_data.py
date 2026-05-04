import re
from pathlib import Path

from dump_scripts.dump_tools import MONS, lookup_species


POKEDEX_SORT_FIXED_MEMBER_COUNT = 11
POKEDEX_AREA_BASE_MEMBER_COUNT = 2

POKEDEX_CONSTANTS_SOURCE = Path("include/constants/pokedex.h")

SORT_MEMBER_NAMES = [
    "nationalnum",
    "regionalnum",
    "nameAtoZ",
    "heaviest",
    "lightest",
    "tallest",
    "smallest",
    "nameA",
    "nameB",
    "nameC",
    "nameD",
    "nameE",
    "nameF",
    "nameG",
    "nameH",
    "nameI",
    "nameJ",
    "nameK",
    "nameL",
    "nameM",
    "nameN",
    "nameO",
    "nameP",
    "nameQ",
    "nameR",
    "nameS",
    "nameT",
    "nameU",
    "nameV",
    "nameW",
    "nameX",
    "nameY",
    "nameZ",
    "unused_044",
    "unused_045",
    "unused_046",
    "unused_047",
    "unused_048",
    "unused_049",
    "unused_050",
    "unused_051",
    "unused_052",
    "unused_053",
    "unused_054",
    "unused_055",
    "unused_056",
    "unused_057",
    "unused_058",
    "unused_059",
    "unused_060",
    "unused_061",
    "typenormal",
    "typefighting",
    "typeflying",
    "typepoison",
    "typeground",
    "typerock",
    "typebug",
    "typeghost",
    "typesteel",
    "typefire",
    "typewater",
    "typegrass",
    "typeelectric",
    "typepsychic",
    "typeice",
    "typedragon",
    "typedark",
    "bodytypequadruped",
    "bodytypebipedaltailless",
    "bodytypebipedaltailed",
    "bodytypeserpentine",
    "bodytypetwopairwings",
    "bodytypesinglepairwings",
    "bodytypeinsectoid",
    "bodytypeheadandbase",
    "bodytypeheadandarms",
    "bodytypeheadandlegs",
    "bodytypetentacles",
    "bodytypefins",
    "bodytypehead",
    "bodytypemultiplebodies",
    "nameAtoC",
    "nameDtoF",
    "nameGtoI",
    "nameJtoL",
    "nameMtoO",
    "namePtoR",
    "nameStoU",
    "nameVtoX",
    "nameYtoZ",
]

SORT_MEMBER_SYMBOL_OVERRIDES = {
    "nationalnum": "NationalNum",
    "regionalnum": "RegionalNum",
    "smallest": "Smallest",
    "tallest": "Tallest",
    "heaviest": "Heaviest",
    "lightest": "Lightest",
    "bodytypequadruped": "BodyTypeQuadruped",
    "bodytypebipedaltailless": "BodyTypeBipedalTailless",
    "bodytypebipedaltailed": "BodyTypeBipedalTailed",
    "bodytypeserpentine": "BodyTypeSerpentine",
    "bodytypetwopairwings": "BodyTypeTwoPairWings",
    "bodytypesinglepairwings": "BodyTypeSinglePairWings",
    "bodytypeinsectoid": "BodyTypeInsectoid",
    "bodytypeheadandbase": "BodyTypeHeadAndBase",
    "bodytypeheadandarms": "BodyTypeHeadAndArms",
    "bodytypeheadandlegs": "BodyTypeHeadAndLegs",
    "bodytypetentacles": "BodyTypeTentacles",
    "bodytypefins": "BodyTypeFins",
    "bodytypehead": "BodyTypeHead",
    "bodytypemultiplebodies": "BodyTypeMultipleBodies",
}

AREA_BANK_SYMBOL_NAMES = {
    "SPECIAL_AREAS_MORNING": "SpecialAreasMorning",
    "SPECIAL_AREAS_DAY": "SpecialAreasDay",
    "SPECIAL_AREAS_NIGHT": "SpecialAreasNight",
    "ROUTES_AND_CITIES_MORNING": "RoutesAndCitiesMorning",
    "ROUTES_AND_CITIES_DAY": "RoutesAndCitiesDay",
    "ROUTES_AND_CITIES_NIGHT": "RoutesAndCitiesNight",
    "SPECIAL_AREAS_SPECIAL": "SpecialAreasSpecial",
    "ROUTES_AND_CITIES_SPECIAL": "RoutesAndCitiesSpecial",
}

AREA_BANKS = [
    ("SPECIAL_AREAS_MORNING", "special", 2),
    ("SPECIAL_AREAS_DAY", "special", 2),
    ("SPECIAL_AREAS_NIGHT", "special", 2),
    ("ROUTES_AND_CITIES_MORNING", "route", 2),
    ("ROUTES_AND_CITIES_DAY", "route", 2),
    ("ROUTES_AND_CITIES_NIGHT", "route", 2),
    ("SPECIAL_AREAS_SPECIAL", "special", 2),
    ("ROUTES_AND_CITIES_SPECIAL", "route", 2),
]


def _lookup_constant_value(name):
    for group in MONS.values():
        if not isinstance(group, dict):
            continue
        for value, constant_name in group.items():
            if constant_name == name:
                return value
    raise ValueError(f"Unable to find constant value for {name}")


POKEDEX_AREA_BANK_STRIDE = _lookup_constant_value("NUM_OF_MONS")
POKEDEX_AREA_SPECIES_COUNT = _lookup_constant_value("MAX_CANONICAL_MON_NUM") + 1
POKEDEX_AREA_USED_MEMBER_COUNT = POKEDEX_AREA_BASE_MEMBER_COUNT + len(AREA_BANKS) * POKEDEX_AREA_BANK_STRIDE


def _read_words(data, width):
    return [
        int.from_bytes(data[offset:offset + width], "little")
        for offset in range(0, len(data), width)
    ]


def _load_sort_member_names():
    expected_count = 102 - POKEDEX_SORT_FIXED_MEMBER_COUNT
    if len(SORT_MEMBER_NAMES) != expected_count:
        raise ValueError(f"Expected {expected_count} sort member names, found {len(SORT_MEMBER_NAMES)}")
    return SORT_MEMBER_NAMES


def _load_area_constant_maps():
    special = {0: "DEX_END_AREA_DATA"}
    route = {0: "DEX_END_AREA_DATA"}
    section = None
    inside_area_enum = False
    in_block_comment = False
    pattern = re.compile(r"(DEX_[A-Z0-9_]+)\s*=\s*(0x[0-9A-F]+|\d+)")

    if not POKEDEX_CONSTANTS_SOURCE.exists():
        return special, route

    for raw_line in POKEDEX_CONSTANTS_SOURCE.read_text(encoding="utf-8").splitlines():
        line = raw_line

        if in_block_comment:
            if "*/" in line:
                _, line = line.split("*/", 1)
                in_block_comment = False
            else:
                continue

        while "/*" in line:
            before, after = line.split("/*", 1)
            if "*/" in after:
                after = after.split("*/", 1)[1]
                line = before + after
            else:
                line = before
                in_block_comment = True
                break

        line = line.split("//", 1)[0].strip()
        if not line:
            continue

        if line.startswith("enum DexAreaId"):
            inside_area_enum = True
            continue

        if not inside_area_enum:
            continue

        if line.startswith("enum DexTimeOfDay"):
            break

        if line.startswith("DEX_END_AREA_DATA"):
            section = "special"
        elif line.startswith("DEX_NEW_BARK_TOWN"):
            section = "route"

        match = pattern.match(line)
        if not match:
            continue

        name, raw_value = match.groups()
        value = int(raw_value, 0)
        if section == "special":
            special[value] = name
        elif section == "route":
            route[value] = name

    route.setdefault(0, "DEX_END_AREA_DATA")
    special.setdefault(0, "DEX_END_AREA_DATA")
    return special, route


AREA_SPECIAL_CONSTANTS, AREA_ROUTE_CONSTANTS = _load_area_constant_maps()


def _format_species_value(value):
    return lookup_species(value)


def _format_sort_symbol_name(member_name):
    if member_name in SORT_MEMBER_SYMBOL_OVERRIDES:
        return SORT_MEMBER_SYMBOL_OVERRIDES[member_name]
    if member_name.startswith("unused_"):
        return "Unused" + member_name.split("_", 1)[1]
    if member_name.startswith("name"):
        return "Name" + member_name[4:].replace("to", "To")
    if member_name.startswith("type"):
        return "Type" + member_name[4:].capitalize()
    return member_name[:1].upper() + member_name[1:]


def _format_species_symbol_name(species_name):
    if species_name.startswith("SPECIES_"):
        species_name = species_name[8:]
    parts = [part for part in species_name.split("_") if part]
    if not parts:
        return "Unknown"
    return "".join(part[:1] + part[1:].lower() for part in parts)


def _format_area_symbol_name(bank_name, species_name):
    return f"sPokedexArea{AREA_BANK_SYMBOL_NAMES[bank_name]}_{_format_species_symbol_name(species_name)}"


def _format_area_value(value, bank_kind):
    if value == 0:
        return "DEX_END_AREA_DATA"
    mapping = AREA_SPECIAL_CONSTANTS if bank_kind == "special" else AREA_ROUTE_CONSTANTS
    return mapping.get(value, f"0x{value:08X}")


def _ordered_area_constants(mapping):
    return [mapping.get(value, f"0x{value:08X}") for value in range(max(mapping) + 1)]


def _decode_area_member(member_index):
    relative_index = member_index - POKEDEX_AREA_BASE_MEMBER_COUNT
    bank_index = relative_index // POKEDEX_AREA_BANK_STRIDE
    species = relative_index % POKEDEX_AREA_BANK_STRIDE
    bank_name, bank_kind, _base_member = AREA_BANKS[bank_index]
    return bank_name, bank_kind, species


def _iter_area_member_indices_by_species(total_members):
    total_members = min(total_members, POKEDEX_AREA_USED_MEMBER_COUNT)
    for species in range(POKEDEX_AREA_BANK_STRIDE):
        for bank_index, (_bank_name, _bank_kind, base_member) in enumerate(AREA_BANKS):
            member_index = base_member + bank_index * POKEDEX_AREA_BANK_STRIDE + species
            if member_index < total_members:
                yield member_index


def _append_unused_area_members(lines, refs, files, total_members):
    for member_index in range(POKEDEX_AREA_USED_MEMBER_COUNT, total_members):
        values = _read_words(files[member_index], 4)
        array_name = f"sPokedexAreaUnusedMember{member_index:04d}"
        lines.append(f"static const u32 {array_name}[] =")
        lines.append("{")
        _append_wrapped_values(lines, values, 1, lambda value: f"0x{value:08X}")
        lines.append("};")
        lines.append("")
        refs.append((member_index, array_name))


def _format_area_member_comments(member_index):
    bank_name, bank_kind, species = _decode_area_member(member_index)
    comment_lines = [f"// member {member_index}: {bank_name} {lookup_species(species)}"]
    return bank_kind, comment_lines


def _append_raw_u8_block(lines, member_index, member_name, data, include_comment=True):
    if include_comment:
        lines.append(f"    // member {member_index:03d}: {member_name}")
    for start in range(0, len(data), 12):
        chunk = data[start:start + 12]
        rendered = ", ".join(f"0x{value:02X}" for value in chunk)
        lines.append(f"    {rendered},")


def _append_wrapped_values(lines, values, values_per_line, formatter, indent="    "):
    for start in range(0, len(values), values_per_line):
        chunk = values[start:start + values_per_line]
        rendered = ", ".join(formatter(value) for value in chunk)
        lines.append(f"{indent}{rendered},")


def _render_sort_data_c(files):
    member_names = _load_sort_member_names()
    lines = [
        '#include "../include/pokedex_archive_data.h"',
        "",
    ]

    for member_index, data in enumerate(files[POKEDEX_SORT_FIXED_MEMBER_COUNT:], POKEDEX_SORT_FIXED_MEMBER_COUNT):
        values = _read_words(data, 2)
        member_name = member_names[member_index - POKEDEX_SORT_FIXED_MEMBER_COUNT]
        array_name = f"sPokedexSort_{_format_sort_symbol_name(member_name)}"
        if not values:
            continue

        lines.append(f"static const u16 {array_name}[] =")
        lines.append("{")
        _append_wrapped_values(lines, values, 8, lookup_species)
        lines.append("};")
        lines.append("")

    lines.extend([
        "const PokedexU16List sPokedexSortLists[] =",
        "{",
    ])

    for member_index, data in enumerate(files[POKEDEX_SORT_FIXED_MEMBER_COUNT:], POKEDEX_SORT_FIXED_MEMBER_COUNT):
        values = _read_words(data, 2)
        member_name = member_names[member_index - POKEDEX_SORT_FIXED_MEMBER_COUNT]
        ref_index = member_index - POKEDEX_SORT_FIXED_MEMBER_COUNT
        array_name = f"sPokedexSort_{_format_sort_symbol_name(member_name)}"
        if values:
            lines.append(
                f"    [{ref_index}] = {{ {array_name}, sizeof({array_name}) / sizeof(*{array_name}) }},"
            )
        else:
            lines.append(f"    [{ref_index}] = {{ 0, 0 }},")

    lines.extend([
        "};",
        "",
        "const u32 sPokedexSortListCount = sizeof(sPokedexSortLists) / sizeof(*sPokedexSortLists);",
        "",
    ])
    return "\n".join(lines)


def _render_area_data_c(files):
    special_area_names = _ordered_area_constants(AREA_SPECIAL_CONSTANTS)
    route_area_names = _ordered_area_constants(AREA_ROUTE_CONSTANTS)
    route_mask_count = len(files[1]) // 36 if len(files[1]) % 36 == 0 else 0
    route_mask_trailing_bytes = len(files[1]) - len(route_area_names) * 36

    if len(files[0]) == len(special_area_names) * 4 and route_mask_count in (len(route_area_names), len(route_area_names) + 1) and route_mask_trailing_bytes in (0, 36):
        lines = [
            '#include "../include/pokedex_archive_data.h"',
            '#include "../include/constants/pokedex.h"',
            "",
        ]

        lines.extend([
            "static const PokedexAppData_UnkSub1908 sPokedexAreaSpecialMapInfo[] =",
            "{",
        ])

        for index, area_name in enumerate(special_area_names):
            base = index * 4
            unk_00, unk_01, unk_02, unk_03 = files[0][base:base + 4]
            lines.append(
                f"    [{area_name}] = {{ 0x{unk_00:02X}, 0x{unk_01:02X}, 0x{unk_02:02X}, 0x{unk_03:02X} }},"
            )

        lines.extend([
            "};",
            "",
        ])

        if route_mask_trailing_bytes == 0:
            lines.extend([
                "static const PokedexAppData_UnkSub190C sPokedexAreaOverworldMapInfo[] =",
                "{",
            ])
        else:
            lines.extend([
                "static const PokedexAppData_UnkSub190CArchive sPokedexAreaOverworldMapInfo =",
                "{",
                "    .entries =",
                "    {",
            ])

        for index, area_name in enumerate(route_area_names):
            base = index * 36
            values = files[1][base:base + 36]
            header = values[:4]
            body = values[4:]
            prefix = "    " if route_mask_trailing_bytes == 0 else "        "
            lines.append(f"{prefix}[{area_name}] =")
            lines.append(f"{prefix}{{")
            lines.append(
                f"{prefix}    0x{header[0]:02X}, 0x{header[1]:02X}, 0x{header[2]:02X}, 0x{header[3]:02X},"
            )
            lines.append(f"{prefix}    {{")
            for row_start in range(0, len(body), 8):
                row = body[row_start:row_start + 8]
                rendered = ", ".join(f"0x{value:02X}" for value in row)
                lines.append(f"{prefix}        {rendered},")
            lines.append(f"{prefix}    }},")
            lines.append(f"{prefix}}},")

        if route_mask_trailing_bytes == 0:
            lines.extend([
                "};",
                "",
            ])
        else:
            trailing = files[1][len(route_area_names) * 36:]
            lines.extend([
                "    },",
                "    .unused =",
                "    {",
            ])
            _append_raw_u8_block(lines, 0, "route_mask_trailing", trailing, False)
            lines.extend([
                "    },",
                "};",
                "",
            ])

        lines.extend([
            "const PokedexArchiveMember sPokedexAreaBaseMembers[] =",
            "{",
            "    [0] = { (const u8 *)sPokedexAreaSpecialMapInfo, sizeof(sPokedexAreaSpecialMapInfo) },",
            "    [1] = { (const u8 *)&sPokedexAreaOverworldMapInfo, sizeof(sPokedexAreaOverworldMapInfo) },",
            "};",
            "",
        ])

        refs = []
        total_members = len(files)
        for member_index in _iter_area_member_indices_by_species(total_members):
            values = _read_words(files[member_index], 4)
            bank_name, bank_kind, species = _decode_area_member(member_index)
            species_name = lookup_species(species)
            array_name = _format_area_symbol_name(bank_name, species_name)
            lines.append(f"static const u32 {array_name}[] =")
            lines.append("{")
            _append_wrapped_values(lines, values, 1, lambda value: _format_area_value(value, bank_kind))
            lines.append("};")
            lines.append("")
            refs.append((member_index, array_name))

        _append_unused_area_members(lines, refs, files, total_members)

        lines.extend([
            "const PokedexU32List sPokedexAreaLists[] =",
            "{",
        ])

        for member_index, array_name in refs:
            lines.append(
                f"    [{member_index - POKEDEX_AREA_BASE_MEMBER_COUNT}] = "
                f"{{ {array_name}, sizeof({array_name}) / sizeof(*{array_name}) }},"
            )

        lines.extend([
            "};",
            "",
            "const u32 sPokedexAreaBaseMemberCount = sizeof(sPokedexAreaBaseMembers) / sizeof(*sPokedexAreaBaseMembers);",
            "const u32 sPokedexAreaListCount = sizeof(sPokedexAreaLists) / sizeof(*sPokedexAreaLists);",
            "",
        ])

        return "\n".join(lines)

    lines = [
        '#include "../include/pokedex_archive_data.h"',
        '#include "../include/constants/pokedex.h"',
        "",
        "static const u8 sPokedexAreaMember000[] =",
        "{",
    ]

    _append_raw_u8_block(lines, 0, "area_lookup_table_0", files[0], False)

    lines.extend([
        "};",
        "",
        "static const u8 sPokedexAreaMember001[] =",
        "{",
    ])

    _append_raw_u8_block(lines, 1, "area_lookup_table_1", files[1], False)

    lines.extend([
        "};",
        "",
        "const PokedexArchiveMember sPokedexAreaBaseMembers[] =",
        "{",
        "    [0] = { (const u8 *)sPokedexAreaMember000, sizeof(sPokedexAreaMember000) },",
        "    [1] = { sPokedexAreaMember001, sizeof(sPokedexAreaMember001) },",
        "};",
        "",
    ])

    refs = []
    total_members = len(files)
    for member_index in _iter_area_member_indices_by_species(total_members):
        values = _read_words(files[member_index], 4)
        bank_name, bank_kind, species = _decode_area_member(member_index)
        species_name = lookup_species(species)
        array_name = _format_area_symbol_name(bank_name, species_name)
        lines.append(f"static const u32 {array_name}[] =")
        lines.append("{")
        _append_wrapped_values(lines, values, 1, lambda value: _format_area_value(value, bank_kind))
        lines.append("};")
        lines.append("")
        refs.append((member_index, array_name))

    _append_unused_area_members(lines, refs, files, total_members)

    lines.extend([
        "const PokedexU32List sPokedexAreaLists[] =",
        "{",
    ])

    for member_index, array_name in refs:
        lines.append(
            f"    [{member_index - POKEDEX_AREA_BASE_MEMBER_COUNT}] = "
            f"{{ {array_name}, sizeof({array_name}) / sizeof(*{array_name}) }},"
        )

    lines.extend([
        "};",
        "",
        "const u32 sPokedexAreaBaseMemberCount = sizeof(sPokedexAreaBaseMembers) / sizeof(*sPokedexAreaBaseMembers);",
        "const u32 sPokedexAreaListCount = sizeof(sPokedexAreaLists) / sizeof(*sPokedexAreaLists);",
        "",
    ])

    return "\n".join(lines)


def dump_pokedex_sort_files(files, output_dir):
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    (output_dir / "PokedexSort.c").write_text(_render_sort_data_c(files), encoding="ascii")
    (output_dir / "SortMembers.inc").unlink(missing_ok=True)


def dump_pokedex_area_files(files, output_dir):
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    (output_dir / "PokedexArea.c").write_text(_render_area_data_c(files), encoding="ascii")
    (output_dir / "AreaMembers.inc").unlink(missing_ok=True)
