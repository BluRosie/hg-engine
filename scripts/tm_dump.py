import json

TM_TOTAL = 92
HM_TOTAL = 8
TOTAL_TMHM = TM_TOTAL + HM_TOTAL

def load_species_header(file_path):
    species_dict = {}
    index = 0
    with open(file_path) as f:
        for line in f:
            parts = line.strip().split()
            if len(parts) < 2:
                continue
            symbol = parts[1]
            if (
                    "SPECIES" in symbol
                    and "_START" not in symbol
                    and "_H" not in symbol
                    and "MAX_" not in symbol
                    and "_NUM" not in line
            ):
                species_dict[symbol] = index
                index += 1
    return species_dict


def load_moves_header(file_path):
    moves_dict = {}
    index = 0
    with open(file_path) as f:
        for line in f:
            parts = line.strip().split()
            if len(parts) < 2:
                continue
            symbol = parts[1]
            if (
                    "MOVE" in symbol
                    and "_START" not in symbol
                    and "_H" not in symbol
                    and "NUM_OF" not in symbol
            ):
                moves_dict[symbol] = index
                index += 1
    return moves_dict


def generate_tm_learnset_c_file(tm_defs, species_dict, moves_dict, species_learnsets, output_path="../data/TMLearnsets.c"):
    # Build TM/HM move name -> bit index map
    tm_move_to_index = {}
    for tm_label, move_name in tm_defs.items():
        move_name = move_name.strip()
        if tm_label.startswith("TM"):
            tm_id = int(tm_label[2:]) - 1
        elif tm_label.startswith("HM"):
            tm_id = int(tm_label[2:]) - 1 + TM_TOTAL
        else:
            continue
        move_id = moves_dict.get(move_name)
        if move_id is not None:
            tm_move_to_index[move_name] = tm_id

    max_species_index = max(species_dict.values())
    index_to_species = {v: k for k, v in species_dict.items()}

    with open(output_path, "w") as out:
        out.write("// Auto-generated TM/HM learnsets\n")
        out.write("#include \"../include/types.h\"\n")
        out.write("#include \"../include/config.h\"\n")
        out.write("#include \"../include/pokemon.h\"\n")
        out.write("#include \"../include/constants/species.h\"\n\n")
        out.write("const u32 UNUSED TMLearnsets[][4] = {\n")

        for i in range(max_species_index + 1):
            if i in index_to_species:
                species_name = index_to_species[i]
                learnset = species_learnsets.get(species_name, {}).get("TMMoves", [])
                learnset = list(set(m.strip() for m in learnset))  # dedupe + strip
                parts = [0, 0, 0, 0]

                for move in learnset:
                    tm_index = tm_move_to_index.get(move)
                    if tm_index is not None and tm_index < 128:
                        word = tm_index // 32
                        bit = tm_index % 32
                        parts[word] |= (1 << bit)
                formatted = ", ".join(f"0x{val:08X}" for val in parts)
                out.write(f"    [{species_name}] = {{ {formatted} }},\n")
            else:
                out.write(f"    [{i}] = {{ 0x00000000, 0x00000000, 0x00000000, 0x00000000 }}, // unused\n")

        out.write("};\n")


if __name__ == "__main__":
    with open("../armips/data/tm_moves.json", encoding="utf-8") as f:
        tm_defs = json.load(f)
    species_dict = load_species_header("../include/constants/species.h")
    moves_dict = load_moves_header("../include/constants/moves.h")

    with open("../armips/data/learnsets.json", encoding="utf-8") as f:
        species_learnsets = json.load(f)

    generate_tm_learnset_c_file(tm_defs, species_dict, moves_dict, species_learnsets)
