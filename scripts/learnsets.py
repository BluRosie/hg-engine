import json
import struct
import argparse
import sys
import os

MAX_TUTOR_MOVES = 52
TUTOR_NAME_TO_NUM = {
    "TopLeft": 0,
    "TopRight": 1,
    "BottomRight": 2,
    "Headbutt": 3,
}

def load_species_header(file_path):
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


def load_moves_header(file_path):
    moves_dict = {}
    index = 0
    with open(file_path) as f:
        for line in f:
            if len(line.split()) > 1:
                test = line.split()[1].strip()
                if 'MOVE' in test and not '_START' in test and not '_MOVES_H' in test and not 'NUM_OF' in test:
                    moves_dict[test] = index
                    index += 1
    return moves_dict


def write_tutor_move_list(tutor_entries, moves_dict):
    with open("base/overlay/overlay_0001.bin", "r+b") as ovl1:
        for idx, entry in enumerate(tutor_entries):
            move = entry["Move"]
            cost = entry["Cost"]
            location = entry["Tutor"]

            if move not in moves_dict:
                print(f"Error: Move '{move}' not found in moves.h")
                sys.exit(1)
            if idx >= MAX_TUTOR_MOVES:
                print("Error: Too many tutor moves")
                sys.exit(1)

            move_id = moves_dict[move]
            location_id = TUTOR_NAME_TO_NUM[location]

            ovl1.seek(0x23AE0 + idx * 4)
            ovl1.write(struct.pack("<H", move_id))
            ovl1.write(struct.pack("<B", cost))
            ovl1.write(struct.pack("<B", location_id))


def write_tutor_learnsets(tutor_entries, species_learnsets, species_dict):
    move_index = {entry["Move"]: idx for idx, entry in enumerate(tutor_entries)}

    tutor_bitfields = {}
    for species_name, learnset in species_learnsets.items():
        if species_name not in species_dict:
            continue
        idx = species_dict[species_name]
        bitfield = 0
        for move in learnset.get("TutorMoves", []):
            if move in move_index:
                bitfield |= (1 << move_index[move])
        tutor_bitfields[idx] = bitfield

    max_species = max(species_dict.values()) + 1
    with open("base/root/fielddata/wazaoshie/waza_oshie.bin", "wb") as f:
        for i in range(1, max_species):
            bits = tutor_bitfields.get(i, 0)
            for j in range(2):
                f.write(struct.pack("<I", (bits >> (32 * j)) & 0xFFFFFFFF))


def write_levelup_learnsets(species_learnsets, species_dict, moves_dict, out_dir):
    os.makedirs(out_dir, exist_ok=True)
    for species_name, data in species_learnsets.items():
        if "LevelMoves" not in data:
            continue
        if species_name not in species_dict:
            print(f"[WARN] Skipping unknown species: {species_name}\n")
            continue

        species_id = species_dict[species_name]
        entries = []
        for move_entry in data["LevelMoves"]:
            move = move_entry["Move"]
            level = int(move_entry["Level"])
            if move not in moves_dict:
                print(f"[ERROR]: Move '{move}' not in moves.h")
                sys.exit(1)
            move_id = moves_dict[move]
            encoded = (level << 16) | move_id
            entries.append(encoded)

        entries.append(0x0000FFFF)

        out_path = os.path.join(out_dir, f"learnset_{species_id:04d}")
        with open(out_path, "wb") as out:
            for entry in entries:
                out.write(struct.pack("<I", entry))


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--writetutormovelist", action="store_true")
    parser.add_argument("--writetutorlearnsets", action="store_true")
    parser.add_argument("--writeleveluplearnsets", action="store_true")
    parser.add_argument("--levelupout")
    args = parser.parse_args()

    species_dict = load_species_header("include/constants/species.h")
    moves_dict = load_moves_header("include/constants/moves.h")

    with open("data/moves/learnsets.json", encoding="utf-8") as f:
        species_learnsets = json.load(f)

    with open("data/moves/tutor_moves.json", encoding="utf-8") as f:
        tutor_entries = json.load(f)

    if args.writetutormovelist:
        write_tutor_move_list(tutor_entries, moves_dict)
    if args.writetutorlearnsets:
        write_tutor_learnsets(tutor_entries, species_learnsets, species_dict)

    if args.writeleveluplearnsets:
        if not args.levelupout:
            print("Missing --levelupout")
            sys.exit(1)
        write_levelup_learnsets(species_learnsets, species_dict, moves_dict, args.levelupout)
