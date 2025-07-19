import argparse
import json
import re
import os
from collections import defaultdict, OrderedDict


def parse_species_header(file_path):
    species_dict = {}
    index = 0
    with open(file_path) as f:
        for line in f:
            if len(line.split()) > 1:
                test = line.split()[1].strip()
                if 'SPECIES' in test and not '_START' in test and not '_SPECIES_H' in test and not '_NUM (' in line and not 'MAX_' in test:
                    species_dict[test] = index
                    index += 1
    return species_dict


def sort_tm_list(tm_list):
    tms = sorted([tm for tm in tm_list if tm.startswith("TM")], key=lambda x: int(x[2:]))
    hms = sorted([tm for tm in tm_list if tm.startswith("HM")], key=lambda x: int(x[2:]))
    return tms + hms


def parse_levelup_moves(levelup_file):
    species_moves = defaultdict(list)
    current_species = None

    with open(levelup_file, "r") as f:
        for line in f:
            stripped = line.strip()

            if stripped.startswith("levelup SPECIES_"):
                current_species = stripped.split()[1]
            elif stripped.startswith("learnset") and current_species:
                match = re.match(r"learnset\s+(MOVE_[A-Z0-9_]+),\s*(\d+)", stripped)
                if match:
                    move, level = match.groups()
                    species_moves[current_species].append({
                        "Level": int(level),
                        "Move": move
                    })
            elif stripped.startswith("terminatelearnset"):
                if current_species:
                    species_moves[current_species].sort(key=lambda x: x["Level"])
                current_species = None

    return species_moves


def parse_egg_moves(eggmove_file):
    species_eggmoves = defaultdict(list)
    current_species = None

    with open(eggmove_file, "r") as f:
        for line in f:
            stripped = line.strip()

            if stripped.startswith("eggmoveentry SPECIES_"):
                current_species = stripped.split(" ")[1]
            elif stripped.startswith("eggmove") and current_species:
                match = re.match(r"eggmove\s+(MOVE_[A-Z0-9_]+)", stripped)
                if match:
                    move = match.group(1)
                    species_eggmoves[current_species].append(move)
            elif not stripped:
                current_species = None

    return species_eggmoves


def parse_tutor_data(tutor_file):
    flattened_tutors = []
    species_to_tutor_moves = defaultdict(list)

    current_location = None
    current_move = None
    current_cost = None

    with open(tutor_file, "r") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            header_match = re.match(r"(TUTOR_[A-Z_]+):\s+(MOVE_[A-Z0-9_]+)\s+(\d+)", line)
            if header_match:
                current_location, current_move, current_cost = header_match.groups()
                tutor_name = current_location.replace("TUTOR_", "").title().replace("_", "")
                flattened_tutors.append({
                    "Move": current_move,
                    "Cost": int(current_cost),
                    "Tutor": tutor_name
                })
                continue

            if line.startswith("SPECIES_") and current_move:
                species = line
                species_to_tutor_moves[species].append(current_move)

    return flattened_tutors, species_to_tutor_moves


def parse_tm_file(input_file):
    species_to_tms = defaultdict(list)
    tm_hm = {}
    current_tm = None

    with open(input_file, "r") as f:
        for line in f:
            stripped = line.strip()
            if not stripped or not stripped.startswith(("TM", "HM", "SPECIES")):
                continue

            match = re.match(r"^(TM\d{3}|HM\d{3}):\s*(\S+)", stripped)
            if match:
                current_tm, move_name = match.groups()
                tm_hm[current_tm] = move_name
                continue

            if stripped.startswith("SPECIES_") and current_tm:
                species = stripped
                species_to_tms[species].append(current_tm)

    return tm_hm, species_to_tms


def flatten_tutor_data(tutor_data_by_location):
    flat_list = []
    for location in tutor_data_by_location:
        tutor_name = location.replace("TUTOR_", "").title().replace("_", "")
        for entry in tutor_data_by_location[location]:
            flat_list.append({
                "Move": entry["Move"],
                "Cost": entry["Cost"],
                "Tutor": tutor_name
            })
    return flat_list


def convert_to_json(tm_file, levelup_file, egg_file, tutor_file, species_header, out_learnsets, out_tutors):
    tm_hm, species_to_tms = parse_tm_file(tm_file)
    levelup_data = parse_levelup_moves(levelup_file)
    eggmove_data = parse_egg_moves(egg_file)
    tutor_data_by_location, species_to_tutor = parse_tutor_data(tutor_file)
    ordered_species = parse_species_header(species_header)
    ordered_data = OrderedDict()

    for species in ordered_species:
        tm_moves = [
            tm_hm[tm_label]
            for tm_label in sort_tm_list(species_to_tms.get(species, []))
            if tm_label in tm_hm
        ]

        ordered_data[species] = {
            "LevelMoves": levelup_data.get(species, []),
            "MachineMoves": sorted(set(tm_moves)),
            "EggMoves": eggmove_data.get(species, []),
            "TutorMoves": sorted(species_to_tutor.get(species, []))
        }

    os.makedirs(os.path.dirname(out_learnsets), exist_ok=True)
    with open(out_learnsets, "w") as f:
        json.dump(ordered_data, f, indent=2)

    for tm_id in sort_tm_list(tm_hm):
        move = tm_hm[tm_id]
        prefix = tm_id[:2]
        number = int(tm_id[2:])
        comment = f"{prefix}{number:02}"
        print(f"{move},".ljust(22) + f"// {comment}")

    os.makedirs(os.path.dirname(out_tutors), exist_ok=True)
    flattened_tutors, species_to_tutor = parse_tutor_data(tutor_file)
    with open(out_tutors, "w") as f:
        json.dump(flattened_tutors, f, indent=2)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Convert learnsets to new JSON format")
    parser.add_argument("--tm", default="armips/data/tmlearnset.txt")
    parser.add_argument("--levelup", default="armips/data/levelupdata.s")
    parser.add_argument("--egg", default="armips/data/eggmoves.s")
    parser.add_argument("--tutor", default="armips/data/tutordata.txt")
    parser.add_argument("--species-header", default="include/constants/species.h")

    parser.add_argument("--out-learnsets", default="data/mon/learnsets.json")
    parser.add_argument("--out-tutors", default="data/tutor/tutor_moves.json")

    args = parser.parse_args()

    convert_to_json(
        args.tm,
        args.levelup,
        args.egg,
        args.tutor,
        args.species_header,
        args.out_learnsets,
        args.out_tutors
    )