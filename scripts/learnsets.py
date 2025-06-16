import json
import struct
import argparse
import sys

NUM_OF_TMS = 92
NUM_OF_HMS = 8
TM_TOTAL = NUM_OF_TMS + NUM_OF_HMS

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


def write_tm_moves_to_arm9(moves_dict, tm_defs):
    with open("base/arm9.bin", "rb+") as arm9:
        for tm_str, move_name in tm_defs.items():
            if tm_str.startswith("TM"):
                tm_id = int(tm_str[2:]) - 1
            elif tm_str.startswith("HM"):
                # HMs start after TMs
                tm_id = int(tm_str[2:]) - 1 + NUM_OF_TMS
            else:
                print(f"error: invalid TM/HM key: {tm_str}")
                sys.exit(1)

            if tm_id >= TM_TOTAL:
                print(f"error: tm num too high: {tm_str}")
                sys.exit(1)

            move_id = moves_dict.get(move_name)
            if move_id is None:
                print(f"error: move {move_name} not found in moves dict.")
                sys.exit(1)

            arm9.seek(0x1000CC + tm_id * 2)
            arm9.write(struct.pack("<H", move_id))


def build_and_write_species_bitmasks(species_dict, moves_dict, species_learnsets, tm_defs):
    tm_index_by_move_id = {}
    for tm_str, move_name in tm_defs.items():
        if tm_str.startswith("TM"):
            tm_id = int(tm_str[2:]) - 1
        elif tm_str.startswith("HM"):
            # HMs start after TMs
            tm_id = int(tm_str[2:]) - 1 + NUM_OF_TMS
        else:
            continue

        move_id = moves_dict.get(move_name)
        if move_id is not None:
            tm_index_by_move_id[move_id] = tm_id

    # Build bitmask per species
    tm_bitmasks = {}
    for species_name, data in species_learnsets.items():
        tm_mask = 0
        for move_name in data.get("TMMoves", []):
            move_id = moves_dict.get(move_name)
            if move_id is None:
                print(f"error: move {move_name} not found in moves dict.")
                sys.exit(1)
            tm_idx = tm_index_by_move_id.get(move_id)
            if tm_idx is not None:
                tm_mask |= (1 << tm_idx)
        tm_bitmasks[species_name] = tm_mask

    # Write bitmasks to mondata files
    for species_name, species_idx in species_dict.items():
        mask = tm_bitmasks.get(species_name, 0)
        with open(f"build/a002/mondata_{species_idx:04d}", "rb+") as f:
            f.seek(0x1A)
            f.write(bytes([0, 0]))
            f.seek(0x1C)
            for i in range(4):
                f.write(struct.pack("<I", (mask >> (32 * i)) & 0xFFFFFFFF))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Patch TM learnset data into arm9.")
    parser.add_argument("--writetmlist", action="store_true", help="Write TM/HM move IDs to arm9.bin from JSON")
    parser.add_argument("--writespeciesbitmasks", action="store_true", help="Write per-species TM bitmasks from species learnset JSON")
    parser.add_argument("--all", action="store_true", help="Do all steps")
    args = parser.parse_args()

    species_dict = load_species_header("include/constants/species.h")
    moves_dict = load_moves_header("include/constants/moves.h")
    with open("armips/data/tms.json", encoding="utf-8") as f:
        tm_defs = json.load(f)
    with open("armips/data/learnsets.json", encoding="utf-8") as f:
        species_learnsets = json.load(f)

    if args.writetmlist:
        write_tm_moves_to_arm9(moves_dict, tm_defs)

    if args.writespeciesbitmasks:
        build_and_write_species_bitmasks(species_dict, moves_dict, species_learnsets, tm_defs)

    if args.all:
        write_tm_moves_to_arm9(moves_dict, tm_defs)
        build_and_write_species_bitmasks(species_dict, moves_dict, species_learnsets, tm_defs)