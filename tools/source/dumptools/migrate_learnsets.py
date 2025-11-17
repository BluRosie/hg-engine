import argparse
import json
import re
import os
import struct
from collections import defaultdict, OrderedDict

numToTutorName = {
    0: "MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT",
    1: "MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT",
    2: "MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT",
    3: "MOVE_TUTOR_NPC_HEADBUTT",
}

gNewFormat = False


def parse_species_header(file_path):
    species_dict = {}
    index = 0
    with open(file_path) as f:
        for line in f:
            if len(line.split()) > 1:
                test = line.split()[1].strip()
                if 'SPECIES' in test and not '_START' in test and not '_SPECIES_H' in test and not '_NUM (' in line and not 'MAX_' in test:
                    species_dict[index] = test
                    index += 1
    return species_dict


def parse_moves_header(file_path):
    move_dict = {}
    index = 0
    with open(file_path) as f:
        for line in f:
            if len(line.split()) > 1:
                test = line.split()[1].strip()
                if 'MOVE' in test and not '_START' in test and not '_MOVES_H' in test and not 'NUM_OF' in test:
                    move_dict[index] = test
                    index += 1
    return move_dict


def tm_data_dumper(species_dict, moves_dict):
    tmArray = {}
    output = {}

    for species in range(0, len(species_dict)):
        filename = f"build/a002/mondata_{species:04d}" if len(species_dict) > 1000 else "build/a002/mondata_{species:03d}"
        mondata = open(filename, "rb")
        mondata.seek(0x1C)
        tmArray[species] = 0
        for i in range(0, 4):
            tmArray[species] |= (struct.unpack("<I", mondata.read(4))[0] & 0xFFFFFFFF) << (32 * i)
        mondata.close()
    arm9 = open("base/arm9.bin", "rb+")
    for i in range(0, 100):
        arm9.seek(0x1000CC + i*2)
        tmMove = struct.unpack("<H", arm9.read(2))[0]
        key = moves_dict[tmMove]
        val = []
        for species in range(0, len(species_dict)):
            if (tmArray[species] & (1 << i)):
                val.append(species_dict[species])
        output[key] = val
    arm9.close()
    return output


def levelup_data_dumper(species_dict, moves_dict):
    output = {}

    filename = "build/a033/learnset_0"

    for species in range(len(species_dict)):
        if (not gNewFormat):
            filename = f"build/a033/learnset_{species:04d}" if len(species_dict) > 1000 else f"build/a033/learnset_{species:03d}"
            if not os.path.isfile(filename):
                continue

        with open(filename, "rb") as f:
            moves = []
            while True:
                peek = f.read(2)
                if len(peek) < 2:
                    break
                if struct.unpack("<H", peek)[0] == 0xFFFF:
                    break

                rest = f.read(2)
                if len(rest) < 2:
                    break

                raw = peek + rest
                val = struct.unpack("<I", raw)[0]
                move_id = val & 0xFFFF
                level = val >> 16
                move_name = moves_dict.get(move_id, f"UNKNOWN_{move_id}")
                moves.append({"Level": level, "Move": move_name})

            if moves:
                output[species_dict[species]] = moves
    return output


def eggmove_data_dumper(species_dict, moves_dict):
    output = {}

    with open("build/kowaza/kowaza_0", "rb") as f:
        raw = f.read()
        data = list(struct.unpack("<{}H".format(len(raw) // 2), raw))

    i = 0
    while i < len(data):
        val = data[i]
        if val == 0xFFFF:
            break

        if val < 20000:
            print(f"Unexpected header value {val} at index {i}")
            break

        species_id = val - 20000
        species_name = species_dict.get(species_id, f"UNKNOWN_SPECIES_{species_id}")
        i += 1

        moves = []
        while i < len(data):
            move = data[i]
            if move >= 20000 or move == 0xFFFF:
                break
            move_name = moves_dict.get(move, f"UNKNOWN_{move}")
            moves.append(move_name)
            i += 1

        output[species_name] = moves

        if i < len(data) and data[i] == 0xFFFF:
            i += 1

    return output


def tutor_data_dumper(species_dict, moves_dict):
    tutorArray = {}

    with open("base/root/fielddata/wazaoshie/waza_oshie.bin", "rb") as f:
        for species in range(1, len(species_dict)):
            f.seek((species - 1) * 8)
            flags = 0
            for i in range(2):
                flags |= struct.unpack("<I", f.read(4))[0] << (32 * i)
            tutorArray[species] = flags

    tutorMoveMap = {}

    with open("base/overlay/overlay_0001.bin", "rb") as f:
        for i in range(52):
            f.seek(0x23AE0 + i * 4)
            tutorMove = struct.unpack("<H", f.read(2))[0]
            cost = struct.unpack("<B", f.read(1))[0]
            location = struct.unpack("<B", f.read(1))[0]

            moveName = moves_dict.get(tutorMove, f"UNKNOWN_{tutorMove}")

            speciesList = []
            for species in range(1, len(species_dict)):
                if tutorArray.get(species, 0) & (1 << i):
                    speciesName = species_dict.get(species, f"UNKNOWN_SPECIES_{species}")
                    speciesList.append(speciesName)

            tutorMoveMap[moveName] = speciesList
    return tutorMoveMap


def generate_learnset_outputs(species_header_path, moves_header_path, out_learnsets):

    species_dict = parse_species_header(species_header_path)
    moves_dict = parse_moves_header(moves_header_path)

    levelup_data = levelup_data_dumper(species_dict, moves_dict)
    tm_data = tm_data_dumper(species_dict, moves_dict)
    egg_data = eggmove_data_dumper(species_dict, moves_dict)
    tutor_data = tutor_data_dumper(species_dict, moves_dict)

    species_to_tms = {name: [] for name in species_dict.values()}
    for move, species_list in tm_data.items():
        for sp in species_list:
            species_to_tms[sp].append(move)

    species_to_tutors = {name: [] for name in species_dict.values()}
    for move, species_list in tutor_data.items():
        for sp in species_list:
            species_to_tutors[sp].append(move)

    learnsets = {}
    for sp in species_dict.values():
        learnsets[sp] = {
            "LevelMoves": levelup_data.get(sp, []),
            "MachineMoves": sorted(set(species_to_tms.get(sp, []))),
            "EggMoves": egg_data.get(sp, []),
            "TutorMoves": sorted(species_to_tutors.get(sp, [])),
        }

    os.makedirs(os.path.dirname(out_learnsets), exist_ok=True)
    with open(out_learnsets, "w") as f:
        json.dump(learnsets, f, indent=2)

    print("\nTutor Move List (for sTutorMoves array in src/field/move_tutor.c):\n")
    with open("base/overlay/overlay_0001.bin", "rb") as f:
        for i in range(52):
            f.seek(0x23AE0 + i * 4)
            move_id = struct.unpack("<H", f.read(2))[0]
            cost = struct.unpack("<B", f.read(1))[0]
            location = struct.unpack("<B", f.read(1))[0]
            move_name = moves_dict.get(move_id, f"UNKNOWN_{move_id}")
            tutor_name = numToTutorName.get(location, f"UNKNOWN_{location}")
            print(f"{{ {move_name}, {cost}, {tutor_name} }},")

    print("\nTM/HM Move List (TM001–HM08). Copy this into the sMachineMoves array in src/item.c if you changed the vals in your hack:\n")
    with open("base/arm9.bin", "rb") as f:
        for i in range(100):
            f.seek(0x1000CC + i * 2)
            move_id = struct.unpack("<H", f.read(2))[0]
            move_name = moves_dict.get(move_id, f"UNKNOWN_{move_id}")
            if i < 92:
                print(f"{move_name},".ljust(22) + f"// TM{i + 1:03}")
            else:
                print(f"{move_name},".ljust(22) + f"// HM{i + 1 - 92:02}")


if __name__ == "__main__":
    if os.path.exists("build/a033/learnset_0"):
        # the rom is in the new format!  this is a single file in a033 now!
        print("Dumped ROM is already in new format!\nNothing to be done for learnsets.")
    elif os.path.isfile("build/a002/mondata_000"):
        print("Vanilla format not supported by this script, please just edit the learnset JSON for the moment.")
    else:
        generate_learnset_outputs(
            species_header_path="include/constants/species.h",
            moves_header_path="include/constants/moves.h",
            out_learnsets="data/learnsets/learnsets.json",
        )
