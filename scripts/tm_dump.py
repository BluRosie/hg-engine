import json

TM_TOTAL = 92
HM_TOTAL = 8
TOTAL_TMHM = TM_TOTAL + HM_TOTAL

# Assumes tm_defs is a dict like { "TM001": "MOVE_NAME", ... }
# species_dict maps "Bulbasaur" → SPECIES_BULBASAUR
# species_learnsets contains { "Bulbasaur": { "TMMoves": ["Move1", "Move2", ...] } }


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


def generate_tm_learnset_c_file(tm_defs, species_dict, moves_dict, species_learnsets, output_path="../src/tm_learnsets.c"):
    # Build TM/HM name to bit index map
    tm_move_to_index = {}
    for tm_label, move_name in tm_defs.items():
        if tm_label.startswith("TM"):
            tm_id = int(tm_label[2:]) - 1
        elif tm_label.startswith("HM"):
            tm_id = int(tm_label[2:]) - 1 + TM_TOTAL
        else:
            continue
        move_id = moves_dict.get(move_name)
        if move_id is not None:
            tm_move_to_index[move_name] = tm_id

    with open(output_path, "w") as out:
        out.write("// Auto-generated TM/HM learnsets\n")
        out.write("#include \"../include/types.h\"\n")
        out.write("#include \"../include/species.h\"\n")
        out.write("const u32 TMLearnSets[][4] = {\n")

        for species_name in species_dict:
            learnset = species_learnsets.get(species_name, {}).get("TMMoves", [])
            bitfield = 0
            for move in learnset:
                tm_index = tm_move_to_index.get(move)
                if tm_index is not None:
                    bitfield |= (1 << tm_index)

            # Split bitfield into 4 u32 values
            parts = [(bitfield >> (32 * i)) & 0xFFFFFFFF for i in range(4)]
            formatted = ", ".join(f"0x{val:08X}" for val in parts)
            out.write(f"    [{species_name}] = {{ {formatted} }},\n")

        out.write("};\n")


if __name__ == "__main__":
    with open("../armips/data/tm_moves.json", encoding="utf-8") as f:
        tm_defs = json.load(f)
    species_dict = load_species_header("../include/constants/species.h")
    moves_dict = load_moves_header("../include/constants/moves.h")

    with open("../armips/data/learnsets.json", encoding="utf-8") as f:
        species_learnsets = json.load(f)

    generate_tm_learnset_c_file(tm_defs, species_dict, moves_dict, species_learnsets)