from pathlib import Path

from dump_scripts.dump_tools import lookup_species

REPO_ROOT = Path(__file__).resolve().parents[4]


ENCOUNTER_MODE_NAMES = (
    ("land", "land", 10),
    ("surf", "surf", 3),
    ("old_rod", "oldRod", 2),
    ("good_rod", "goodRod", 2),
    ("super_rod", "superRod", 2),
)
TIME_OF_DAY_NAMES = (
    "morning",
    "day",
    "night",
)


def _parse_constant_names(header_path, prefix):
    names = []
    with open(REPO_ROOT / header_path, "r", encoding="utf-8") as header_file:
        for line in header_file:
            line = line.strip()
            if not line.startswith(f"#define {prefix}"):
                continue
            name = line.split()[1]
            if name.startswith(f"{prefix}SET_") or name.endswith("_AREAS"):
                continue
            names.append(name)
    return names


SAFARI_AREA_NAMES = _parse_constant_names("include/safari_encounter.h", "SAFARI_ZONE_AREA_")
SAFARI_OBJECT_TYPE_NAMES = _parse_constant_names("include/safari_encounter.h", "SAFARI_ZONE_OBJECT_TYPE_")


def _read_u16(data, offset):
    return int.from_bytes(data[offset:offset + 2], "little")


def parse_safari_encounter_narc(narc):
    parsed_areas = []

    for area_data in narc.files:
        area = {
            "bonus_counts": list(area_data[:8]),
            "encounter_types": [],
        }
        offset = 8

        for mode_index, (_, _, bonus_count) in enumerate(ENCOUNTER_MODE_NAMES):
            encounter_type = {
                "base_mons": {time_name: [] for time_name in TIME_OF_DAY_NAMES},
                "bonus_mons": {time_name: [] for time_name in TIME_OF_DAY_NAMES},
                "unlock_conditions": [],
            }

            for time_name in TIME_OF_DAY_NAMES:
                for _ in range(10):
                    species = _read_u16(area_data, offset)
                    level = _read_u16(area_data, offset + 2)
                    encounter_type["base_mons"][time_name].append((species, level))
                    offset += 4

            current_bonus_count = area["bonus_counts"][mode_index]
            for time_name in TIME_OF_DAY_NAMES:
                for _ in range(current_bonus_count):
                    species = _read_u16(area_data, offset)
                    level = _read_u16(area_data, offset + 2)
                    encounter_type["bonus_mons"][time_name].append((species, level))
                    offset += 4

            for _ in range(current_bonus_count):
                encounter_type["unlock_conditions"].append(
                    tuple(area_data[offset:offset + 4])
                )
                offset += 4

            if current_bonus_count != bonus_count:
                raise ValueError(
                    f"unexpected safari bonus count {current_bonus_count} for mode {mode_index}"
                )

            area["encounter_types"].append(encounter_type)

        parsed_areas.append(area)

    return parsed_areas


def _species_expr(species_id, is_expanded):
    max_mons = 2048 if is_expanded else 1024

    if species_id > max_mons:
        form_id = species_id // max_mons
        base_form_id = species_id - (max_mons * form_id)
        return f"MON_WITH_FORM({lookup_species(base_form_id)}, {form_id})"

    return lookup_species(species_id)


def _object_type_expr(object_type):
    return SAFARI_OBJECT_TYPE_NAMES[object_type]


def dump_safari_encounters_c(narc, is_expanded):
    parsed_areas = parse_safari_encounter_narc(narc)

    lines = [
        '#include "../include/constants/species.h"',
        '#include "../include/safari_encounter.h"',
        '#include "../include/types.h"',
        "",
        "u32 __size = sizeof(SafariZoneAreaEncounterFile);",
        "",
        "const SafariZoneAreaEncounterFile __data[] =",
        "{",
    ]

    for area_index, area in enumerate(parsed_areas):
        lines.append(f"    [{SAFARI_AREA_NAMES[area_index]}] = {{")
        lines.append("        .bonusCounts = SAFARI_BONUS_COUNTS,")

        for mode_index, (_, field_name, bonus_count) in enumerate(ENCOUNTER_MODE_NAMES):
            encounter_type = area["encounter_types"][mode_index]
            lines.append(f"        .{field_name} = {{")
            for time_name in TIME_OF_DAY_NAMES:
                field_name = time_name[0].upper() + time_name[1:]
                lines.append(f"            .species{field_name} = {{")
                for species, level in encounter_type["base_mons"][time_name]:
                    lines.append(f"                {{ {_species_expr(species, is_expanded)}, {level} }},")
                lines.append("            },")
            for time_name in TIME_OF_DAY_NAMES:
                field_name = time_name[0].upper() + time_name[1:]
                lines.append(f"            .bonusSpecies{field_name} = {{")
                for bonus_index, _ in enumerate(encounter_type["unlock_conditions"]):
                    species, level = encounter_type["bonus_mons"][time_name][bonus_index]
                    lines.append(f"                {{ {_species_expr(species, is_expanded)}, {level} }},")
                lines.append("            },")
            lines.append("            .bonusUnlockConditions = {")
            for object1_type, object1_count, object2_type, object2_count in encounter_type["unlock_conditions"]:
                lines.append(
                    f"                {{ .objects = {{ {{ {_object_type_expr(object1_type)}, {object1_count} }}, {{ {_object_type_expr(object2_type)}, {object2_count} }} }} }},"
                )
            lines.append("            },")
            lines.append("        },")

        lines.append("    },")
        lines.append("")

    lines.extend([
        "};",
        "",
    ])
    return "\n".join(lines)
