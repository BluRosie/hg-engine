"""
Usage:
    - clone pokeapi repo locally https://github.com/PokeAPI/pokeapi
    - run python3 scripts/migrate_learnsets_from_pokeapi.py --base-key 10_hgss --pokeapi-root ~/git/pokeapi
"""

import argparse
import csv
import json
import re
from collections import defaultdict
from pathlib import Path
from typing import Dict, List, Set


BASE_KEY_TO_VERSION_GROUP = {
    "01_rgb": "red-blue",
    "02_y": "yellow",
    "03_gs": "gold-silver",
    "04_c": "crystal",
    "05_rse": "emerald",
    "06_frlg": "firered-leafgreen",
    "07_xd": "xd",
    "08_dp": "diamond-pearl",
    "09_pt": "platinum",
    "10_hgss": "heartgold-soulsilver",
    "11_bw": "black-white",
    "12_b2w2": "black-2-white-2",
    "13_xy": "x-y",
    "14_oras": "omega-ruby-alpha-sapphire",
    "15_sm": "sun-moon",
    "16_usum": "ultra-sun-ultra-moon",
    "17_lgpe": "lets-go-pikachu-lets-go-eevee",
    "18_swsh": "sword-shield",
    "19_bdsp": "brilliant-diamond-shining-pearl",
    "20_la": "legends-arceus",
    "21_sv": "scarlet-violet",
    # go sourced elsewhere
}

REGION_ADJECTIVES = {
    "ALOLA": "ALOLAN",
    "GALAR": "GALARIAN",
    "HISUI": "HISUIAN",
    "PALDEA": "PALDEAN",
}

POKEMON_IDENTIFIER_REMAP = {
    "DEOXYS_NORMAL": "DEOXYS",
    "WORMADAM_PLANT": "WORMADAM",
    "SHAYMIN_LAND": "SHAYMIN",
    "HOOPA_CONFINED": "HOOPA",
    "KELDEO_ORDINARY": "KELDEO",
    "MELOETTA_ARIA": "MELOETTA",
    "GIRATINA_ALTERED": "GIRATINA",
    "DARMANITAN_STANDARD": "DARMANITAN",
    "DARMANITAN_GALAR_STANDARD": "DARMANITAN_GALARIAN",
    "ENAMORUS_INCARNATE": "ENAMORUS",
    "TORNADUS_INCARNATE": "TORNADUS",
    "THUNDURUS_INCARNATE": "THUNDURUS",
    "LANDORUS_INCARNATE": "LANDORUS",
    "PUMPKABOO_AVERAGE": "PUMPKABOO",
    "GOURGEIST_AVERAGE": "GOURGEIST",
    "LYCANROC_MIDDAY": "LYCANROC",
    "WISHIWASHI_SOLO": "WISHIWASHI",
    "MIMIKYU_DISGUISED": "MIMIKYU",
    "MIMIKYU_TOTEM_DISGUISED": "MIMIKYU",
    "TOXTRICITY_AMPED": "TOXTRICITY",
    "EISCUE_ICE": "EISCUE",
    "MORPEKO_FULL_BELLY": "MORPEKO",
    "URSHIFU_SINGLE_STRIKE": "URSHIFU",
    "CALYREX_ICE": "CALYREX_ICE_RIDER",
    "CALYREX_SHADOW": "CALYREX_SHADOW_RIDER",
    "MAUSHOLD_FAMILY_OF_FOUR": "MAUSHOLD",
    "SQUAWKABILLY_GREEN_PLUMAGE": "SQUAWKABILLY",
    "PALAFIN_ZERO": "PALAFIN",
    "TATSUGIRI_CURLY": "TATSUGIRI",
    "DUDUNSPARCE_TWO_SEGMENT": "DUDUNSPARCE",
    "INDEEDEE_MALE": "INDEEDEE",
    "MEOWSTIC_MALE": "MEOWSTIC",
    "OINKOLOGNE_MALE": "OINKOLOGNE",
    "BASCULEGION_MALE": "BASCULEGION",
    "TAUROS_PALDEA_COMBAT": "TAUROS_COMBAT",
    "TAUROS_PALDEA_BLAZE": "TAUROS_BLAZE",
    "TAUROS_PALDEA_AQUA": "TAUROS_AQUA",
}


def normalize_identifier(value):
    return re.sub(r"_+", "_", re.sub(r"[^A-Za-z0-9]+", "_", value.strip().upper())).strip("_")


def parse_define_order(path, prefix):
    name_to_order: Dict[str, int] = {}
    order = 0
    pat = re.compile(rf"^#define\s+({prefix}[A-Z0-9_]+)\b")
    for line in path.read_text(encoding="utf-8").splitlines():
        m = pat.match(line)
        if not m:
            continue
        name = m.group(1)
        if name.endswith("_START") or name.startswith(f"{prefix}MAX_"):
            continue
        name_to_order[name] = order
        order += 1
    return name_to_order


def read_csv_rows(path):
    with path.open("r", encoding="utf-8", newline="") as f:
        yield from csv.DictReader(f)


def dedupe_add_to_list(list, body):
    if not body:
        return
    c = f"SPECIES_{body}"
    if c not in list:
        list.append(c)


def resolve_species_const(pokemon_identifier, species_identifier, species_consts):
    pokemon_norm = normalize_identifier(pokemon_identifier)
    tokens = [t for t in pokemon_norm.split("_") if t]
    candidates: List[str] = []

    dedupe_add_to_list(candidates, pokemon_norm)
    remapped = POKEMON_IDENTIFIER_REMAP.get(pokemon_norm)
    if remapped:
        dedupe_add_to_list(candidates, remapped)

    if len(tokens) >= 2 and tokens[-1] in REGION_ADJECTIVES:
        dedupe_add_to_list(candidates, "_".join(tokens[:-1] + [REGION_ADJECTIVES[tokens[-1]]]))

    if len(tokens) >= 2 and tokens[-1] == "MEGA":
        dedupe_add_to_list(candidates, "MEGA_" + "_".join(tokens[:-1]))
    if len(tokens) >= 3 and tokens[-2] == "MEGA":
        dedupe_add_to_list(candidates, "MEGA_" + "_".join(tokens[:-2] + [tokens[-1]]))

    if "TOTEM" in tokens:
        dedupe_add_to_list(candidates, "_".join([t for t in tokens if t != "TOTEM"]))

    if tokens and tokens[-1] == "GMAX":
        base = "_".join(tokens[:-1])
        dedupe_add_to_list(candidates, base + "_GMAX")
        dedupe_add_to_list(candidates, "GMAX_" + base)
        dedupe_add_to_list(candidates, "GIGANTAMAX_" + base)

    if "BREED" in tokens:
        trimmed = [t for t in tokens if t not in {"BREED", "PALDEA"}]
        dedupe_add_to_list(candidates, "_".join(trimmed))

    dedupe_add_to_list(candidates, normalize_identifier(species_identifier))

    for c in candidates:
        if c in species_consts:
            return c
    return None


def build_move_map(moves_csv, move_consts):
    move_map: Dict[int, str] = {}
    for row in read_csv_rows(moves_csv):
        move_id = int(row["id"])
        move_const = f"MOVE_{normalize_identifier(row['identifier'])}"
        if move_const in move_consts:
            move_map[move_id] = move_const
    return move_map


def parse_baby_species_map(path):
    mapping: Dict[str, str] = {}
    pat = re.compile(r"^\s*babymon\s+(SPECIES_[A-Z0-9_]+)\s*,\s*(SPECIES_[A-Z0-9_]+)")
    for line in path.read_text(encoding="utf-8").splitlines():
        m = pat.match(line)
        if not m:
            continue
        species_const, baby_const = m.groups()
        mapping[species_const] = baby_const
    return mapping


def parse_form_to_base_species_map(path):
    mapping: Dict[str, str] = {}
    pat = re.compile(
        r"^\s*\[\s*(SPECIES_[A-Z0-9_]+)\s*-\s*SPECIES_MEGA_START\s*\]\s*=\s*(SPECIES_[A-Z0-9_]+)\s*,"
    )
    for line in path.read_text(encoding="utf-8").splitlines():
        m = pat.match(line)
        if not m:
            continue
        form_species, base_species = m.groups()
        if form_species != base_species:
            mapping[form_species] = base_species
    return mapping


def append_unique_move(moves, move_const):
    if move_const not in moves:
        moves.append(move_const)


def make_learnset_bucket():
    return {
        "LevelMovesRaw": [],
        "MachineMoves": [],
        "EggMoves": [],
        "TutorMoves": [],
    }


def propagate_egg_moves_by_baby_species(out, baby_map):
    changed_species = 0
    for species_const, data in out.items():
        baby_const = baby_map.get(species_const)
        if not baby_const or baby_const == species_const or baby_const not in out:
            continue

        before = data["EggMoves"]
        merged = list(before)
        for move_const in out[baby_const]["EggMoves"]:
            append_unique_move(merged, move_const)
        if merged != before:
            data["EggMoves"] = merged
            changed_species += 1
    return changed_species


def collapse_redundant_form_entries(out, form_to_base):
    removed = 0
    for form_species, base_species in form_to_base.items():
        if form_species not in out or base_species not in out:
            continue
        if out[form_species] == out[base_species]:
            del out[form_species]
            removed += 1
    return removed


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Migrate learnsets from local PokeAPI CSV.")
    parser.add_argument("--pokeapi-root", default="~/git/pokeapi")
    parser.add_argument("--base-key", required=True, choices=sorted(BASE_KEY_TO_VERSION_GROUP.keys()))
    parser.add_argument("--output")
    args = parser.parse_args()

    version_group_name = BASE_KEY_TO_VERSION_GROUP[args.base_key]
    output_path = Path(args.output) if args.output else Path(f"data/learnsets/base/{args.base_key}.json")

    repo_root = Path(__file__).resolve().parents[1]
    species_header = repo_root / "include/constants/species.h"
    moves_header = repo_root / "include/constants/moves.h"

    species_order = parse_define_order(species_header, "SPECIES_")
    move_order = parse_define_order(moves_header, "MOVE_")
    species_consts = set(species_order.keys())
    move_consts = set(move_order.keys())

    def species_sort_key(species_const):
        return species_order.get(species_const, 999999)

    def level_move_sort_key(row):
        level, order, move_const = row
        return (level, order, move_order.get(move_const, 999999))

    def out_item_sort_key(item):
        species_const, _ = item
        return species_order.get(species_const, 999999)

    pokeapi_root = Path(args.pokeapi_root).expanduser().resolve()
    csv_root = pokeapi_root / "data/v2/csv"

    version_groups = {row["identifier"]: int(row["id"]) for row in read_csv_rows(csv_root / "version_groups.csv")}
    target_version_group_id = version_groups[version_group_name]

    method_names = {int(row["id"]): row["identifier"] for row in read_csv_rows(csv_root / "pokemon_move_methods.csv")}
    move_map = build_move_map(csv_root / "moves.csv", move_consts)

    species_id_to_identifier = {
        int(row["id"]): row["identifier"] for row in read_csv_rows(csv_root / "pokemon_species.csv")
    }
    pokemon_info = {
        int(row["id"]): (row["identifier"], int(row["species_id"]))
        for row in read_csv_rows(csv_root / "pokemon.csv")
    }

    learnsets = defaultdict(make_learnset_bucket)

    unknown_species: Set[str] = set()
    unknown_moves: Set[int] = set()

    for row in read_csv_rows(csv_root / "pokemon_moves.csv"):
        if int(row["version_group_id"]) != target_version_group_id:
            continue

        method_id = int(row["pokemon_move_method_id"])
        method_name = method_names.get(method_id)
        if method_name not in {"level-up", "machine", "egg", "tutor"}:
            continue

        pokemon_id = int(row["pokemon_id"])
        pinfo = pokemon_info.get(pokemon_id)
        if pinfo is None:
            continue
        pokemon_identifier, species_id = pinfo
        species_identifier = species_id_to_identifier.get(species_id)
        if not species_identifier:
            continue

        species_const = resolve_species_const(pokemon_identifier, species_identifier, species_consts)
        if not species_const:
            unknown_species.add(pokemon_identifier)
            continue

        move_id = int(row["move_id"])
        move_const = move_map.get(move_id)
        if not move_const:
            unknown_moves.add(move_id)
            continue

        bucket = learnsets[species_const]
        if method_name == "level-up":
            level = int(row["level"] or 0)
            order = int(row["order"]) if row["order"] else 9999
            bucket["LevelMovesRaw"].append((level, order, move_const))
        elif method_name == "machine":
            append_unique_move(bucket["MachineMoves"], move_const)
        elif method_name == "egg":
            append_unique_move(bucket["EggMoves"], move_const)
        elif method_name == "tutor":
            append_unique_move(bucket["TutorMoves"], move_const)

    out = {}
    for species_const in sorted(learnsets.keys(), key=species_sort_key):
        data = learnsets[species_const]

        level_seen = set()
        level_moves = []
        for level, order, move_const in sorted(data["LevelMovesRaw"], key=level_move_sort_key):
            key = (level, move_const)
            if key in level_seen:
                continue
            level_seen.add(key)
            level_moves.append({"Level": level, "Move": move_const})

        out[species_const] = {
            "LevelMoves": level_moves,
            "MachineMoves": data["MachineMoves"],
            "EggMoves": data["EggMoves"],
            "TutorMoves": data["TutorMoves"],
        }

    baby_map = parse_baby_species_map(repo_root / "armips/data/babymons.s")
    propagate_egg_moves_by_baby_species(out, baby_map)

    form_to_base_map = parse_form_to_base_species_map(repo_root / "data/FormToSpeciesMapping.c")
    collapse_redundant_form_entries(out, form_to_base_map)
    out = dict(sorted(out.items(), key=out_item_sort_key))

    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(out, indent=2) + "\n", encoding="utf-8")

    if unknown_species:
        print(f"[WARN] unknown species identifiers: {len(unknown_species)}")
        for species in sorted(unknown_species):
            print(f"  - {species}")

    if unknown_moves:
        print(f"[WARN] unknown move ids: {len(unknown_moves)}")
        for move_id in sorted(unknown_moves):
            print(f"  - {move_id}")
