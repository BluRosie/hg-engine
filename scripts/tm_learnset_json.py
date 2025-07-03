import json
import sys
import os
import re
from collections import defaultdict, OrderedDict

# TODO zebben rename this. does all learnsets not just TMs

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
    tutor_by_location_output = defaultdict(list)
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
                tutor_by_location_output[current_location].append({
                    "Move": current_move,
                    "Cost": int(current_cost)
                })
            elif line.startswith("SPECIES_") and current_location:
                species = line
                species_to_tutor_moves[species].append(current_move)

    return tutor_by_location_output, species_to_tutor_moves



def txt_to_json(input_file, species_output_file, moves_output_file, species_header_file, levelup_file, eggmove_file, tutor_file, tutor_output_file):
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

    levelup_data = parse_levelup_moves(levelup_file)
    eggmove_data = parse_egg_moves(eggmove_file)
    tutor_data_by_location, species_to_tutor = parse_tutor_data(tutor_file)
    ordered_species = parse_species_header(species_header_file)
    ordered_data = OrderedDict()

    for species in ordered_species:
        tm_moves = [
            tm_hm[tm_label]
            for tm_label in sort_tm_list(species_to_tms.get(species, []))
            if tm_label in tm_hm
        ]

        ordered_data[species] = {
            "LevelMoves": levelup_data.get(species, []),
            "TMMoves": sorted(set(tm_moves)),
            "EggMoves": eggmove_data.get(species, []),
            "TutorMoves": sorted(species_to_tutor.get(species, []))
        }

    with open(species_output_file, "w") as f:
        json.dump(ordered_data, f, indent=2)

    with open(moves_output_file, "w") as f:
        json.dump(tm_hm, f, indent=2)

    with open(tutor_output_file, "w") as f:
        json.dump(tutor_data_by_location, f, indent=2)

    print(f"Converted TXT → JSON")
    print(f"  Species TM/Tutor data: {species_output_file}")
    print(f"  TM/HM move names: {moves_output_file}")
    print(f"  Tutor move locations: {tutor_output_file}")


def json_to_txt(species_input_file, moves_input_file, output_file, species_header_file):
    with open(species_input_file, "r") as f:
        species_data = json.load(f)

    with open(moves_input_file, "r") as f:
        tm_hm = json.load(f)

    species_order = parse_species_header(species_header_file)
    tm_to_species = defaultdict(set)

    for species, entry in species_data.items():
        for tm in entry.get("TMMoves", []):
            tm_to_species[tm].add(species)

    tm_ids = sorted([tm for tm in tm_to_species if tm.startswith("TM")], key=lambda x: int(x[2:]))
    hm_ids = sorted([tm for tm in tm_to_species if tm.startswith("HM")], key=lambda x: int(x[2:]))
    sorted_tm_ids = tm_ids + hm_ids

    with open(output_file, "w") as f:
        for tm_id in sorted_tm_ids:
            move_name = tm_hm.get(tm_id, "")
            f.write(f"{tm_id}: {move_name}\n")
            for species in species_order:
                if species in tm_to_species[tm_id]:
                    f.write(f"    {species}\n")
            f.write("\n")

    print(f"Converted JSON → TXT: {output_file}")


def print_usage():
    print("Usage:")
    print("  To convert TXT to JSON (3 files):")
    print("    python convert_tmlearnset.py to-json <input.txt> <species.json> <moves.json> <species.h> <levelup_data.txt> <egg_moves.txt> <tutor_data.txt> <tutor_output.json>")
    print("  To convert JSON back to TXT:")
    print("    python convert_tmlearnset.py to-txt <species.json> <moves.json> <output.txt> <species.h>")


# TODO zebben clean me up
if __name__ == "__main__":
    if len(sys.argv) < 5:
        print_usage()
        sys.exit(1)

    mode = sys.argv[1]

    if mode == "to-json":
        if len(sys.argv) != 10:
            print_usage()
            sys.exit(1)
        input_txt, species_json, moves_json, species_header, levelup_file, eggmove_file, tutor_file, tutor_output_file = sys.argv[2:10]
        if not os.path.exists(input_txt):
            print(f"Error: input file '{input_txt}' does not exist.")
            sys.exit(1)
        txt_to_json(input_txt, species_json, moves_json, species_header, levelup_file, eggmove_file, tutor_file, tutor_output_file)

    elif mode == "to-txt":
        if len(sys.argv) != 6:
            print_usage()
            sys.exit(1)
        species_json, moves_json, output_txt, species_header = sys.argv[2:6]
        json_to_txt(species_json, moves_json, output_txt, species_header)

    else:
        print(f"Error: unknown mode '{mode}'")
        print_usage()
        sys.exit(1)
