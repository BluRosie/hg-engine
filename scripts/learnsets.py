import json
import struct
import argparse
import sys

NUM_OF_TMS = 92
NUM_OF_HMS = 8
TM_TOTAL = NUM_OF_TMS + NUM_OF_HMS

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


def write_tm_list(moves_dict, tm_defs):
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


def write_tm_learnsets(species_dict, moves_dict, species_learnsets, tm_defs):
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

    tm_bitfields = {}
    for species_name, data in species_learnsets.items():
        bitfield = 0
        for move_name in data.get("TMMoves", []):
            move_id = moves_dict.get(move_name)
            if move_id is None:
                print(f"error: move {move_name} not found in moves dict.")
                sys.exit(1)
            tm_idx = tm_index_by_move_id.get(move_id)
            if tm_idx is not None:
                bitfield |= (1 << tm_idx)
        tm_bitfields[species_name] = bitfield

    for species_name, species_idx in species_dict.items():
        bitfield = tm_bitfields.get(species_name, 0)
        with open(f"build/a002/mondata_{species_idx:04d}", "rb+") as mondata:
            mondata.seek(0x1A)
            mondata.write(bytes([0, 0]))
            mondata.seek(0x1C)
            for i in range(4):
                mondata.write(struct.pack("<I", (bitfield >> (32 * i)) & 0xFFFFFFFF))


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


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Patch mon learnsets.")
    parser.add_argument("--all", action="store_true", help="Do all steps")

    parser.add_argument("--writetmlist", action="store_true", help="Write list of TMs")
    parser.add_argument("--writetmlearnsets", action="store_true", help="Write mon learnsets for TMs")

    parser.add_argument("--writetutormovelist", action="store_true", help="Write list of tutorable moves")
    parser.add_argument("--writetutorlearnsets", action="store_true", help="Write mon learnsets for tutor moves")

    args = parser.parse_args()

    species_dict = load_species_header("include/constants/species.h")
    moves_dict = load_moves_header("include/constants/moves.h")
    with open("armips/data/tm_moves.json", encoding="utf-8") as f:
        tm_defs = json.load(f)
    with open("armips/data/learnsets.json", encoding="utf-8") as f:
        species_learnsets = json.load(f)
    with open("armips/data/tutor_moves.json", encoding="utf-8") as f:
        tutor_defs = json.load(f)

    if args.writetmlist:
        write_tm_list(moves_dict, tm_defs)
    if args.writetmlearnsets:
        write_tm_learnsets(species_dict, moves_dict, species_learnsets, tm_defs)

    if args.writetutormovelist:
        write_tutor_move_list(tutor_defs, moves_dict)
    if args.writetutorlearnsets:
        write_tutor_learnsets(tutor_defs, species_learnsets)

    if args.all:
        write_tm_list(moves_dict, tm_defs)
        write_tm_learnsets(species_dict, moves_dict, species_learnsets, tm_defs)
        write_tutor_move_list(tutor_defs, moves_dict)
        write_tutor_learnsets(tutor_defs, species_learnsets)