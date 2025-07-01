import json
import struct
import argparse
import sys
import os

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


def write_tutor_move_list(tutor_data, moves_dict):
    with open("base/overlay/overlay_0001.bin", "r+b") as ovl1:
        tutor_id = 0
        for tutor_name, move_list in tutor_data.items():
            if tutor_name not in TUTOR_NAME_TO_NUM:
                print(f"error: unknown {tutor_name}.")
                sys.exit(1)

            location_id = TUTOR_NAME_TO_NUM[tutor_name]

            for move_entry in move_list:
                move_name = move_entry["Move"]
                cost = move_entry["Cost"]

                if tutor_id >= 128:
                    print(f"error: move {move_name} id {tutor_id} exceeds defined limit.")
                    sys.exit(1)

                if move_name not in moves_dict:
                    print(f"error: move {move_name} not found in moves dict.")
                    sys.exit(1)

                move_id = moves_dict[move_name]

                ovl1.seek(0x23AE0 + tutor_id * 4)
                ovl1.write(struct.pack("<H", move_id))
                ovl1.write(struct.pack("<B", cost))
                ovl1.write(struct.pack("<B", location_id))

                tutor_id += 1


def write_tutor_learnsets(tutor_moves_data, species_learnsets):
    tutor_id_map = {}
    tutor_id = 0
    for section in ["TopLeft", "TopRight", "BottomRight", "Headbutt"]:
        for entry in tutor_moves_data.get(section, []):
            move = entry["Move"]
            if move not in tutor_id_map:
                tutor_id_map[move] = tutor_id
                tutor_id += 1
            if tutor_id > MAX_TUTOR_MOVES:
                raise ValueError(f"Too many tutor moves! Max is {MAX_TUTOR_MOVES}.")

    tutor_data = {}
    for species_name, learnset in species_learnsets.items():
        bitfield = 0
        for move in learnset.get("TutorMoves", []):
            if move in tutor_id_map:
                bitfield |= (1 << tutor_id_map[move])
        tutor_data[species_name] = bitfield

    with open("base/root/fielddata/wazaoshie/waza_oshie.bin", "wb") as wa:
        for species_name in species_learnsets.items():
            bitfield = tutor_data.get(species_name, 0)
            wa.write(struct.pack("<II", bitfield & 0xFFFFFFFF, (bitfield >> 32) & 0xFFFFFFFF))


def write_levelup_learnsets(species_learnsets, species_dict, moves_dict, out_dir):
    os.makedirs(out_dir, exist_ok=True)

    for species_name, data in species_learnsets.items():
        if "LevelMoves" not in data:
            continue
        if species_name not in species_dict:
            print(f"[WARN] Skipping unknown species: {species_name}\n")
            sys.exit(1)

        species_id = species_dict[species_name]
        moves = data["LevelMoves"]

        entries = []
        for entry in moves:
            level = int(entry["Level"])
            move_name = entry["Move"]

            if move_name not in moves_dict:
                sys.exit(1)
                continue

            move_id = moves_dict[move_name]
            encoded = (level << 16) | move_id
            entries.append(encoded)

        entries.append(0x0000FFFF)

        out_path = os.path.join(out_dir, f"learnset_{species_id:04d}")
        with open(out_path, "wb") as f:
            for val in entries:
                f.write(struct.pack("<I", val))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Patch mon learnsets.")
    parser.add_argument("--writetutormovelist", action="store_true", help="Write list of tutorable moves")
    parser.add_argument("--writetutorlearnsets", action="store_true", help="Write mon learnsets for tutor moves")

    parser.add_argument("--writeleveluplearnsets", action="store_true", help="Write per-species level-up learnset binaries")
    parser.add_argument("--levelupout", type=str, help="Directory to write level-up learnset .bin files")

    args = parser.parse_args()

    species_dict = load_species_header("include/constants/species.h")
    moves_dict = load_moves_header("include/constants/moves.h")
    with open("armips/data/learnsets.json", encoding="utf-8") as f:
        species_learnsets = json.load(f)
    with open("armips/data/tutor_moves.json", encoding="utf-8") as f:
        tutor_defs = json.load(f)

    if args.writetutormovelist:
        write_tutor_move_list(tutor_defs, moves_dict)
    if args.writetutorlearnsets:
        write_tutor_learnsets(tutor_defs, species_learnsets)

    if args.writeleveluplearnsets:
        if not args.levelupout:
            print("Missing --levelupout")
            sys.exit(1)
        write_levelup_learnsets(species_learnsets, species_dict, moves_dict, args.levelupout)
