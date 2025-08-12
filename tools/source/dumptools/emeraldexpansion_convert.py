"""
This script converts pokeemerald-expansion learnset files into the hg-engine format
"""
import sys
import json

# Manual mapping for species name discrepancies
SPECIES_REMAP = {
    "SPECIES_DEOXYS_NORMAL": "SPECIES_DEOXYS",
    "SPECIES_WORMADAM_PLANT": "SPECIES_WORMADAM",
    "SPECIES_SHAYMIN_LAND": "SPECIES_SHAYMIN",
    "SPECIES_WORMADAM_TRASH": "SPECIES_WORMADAM_TRASHY",
    "SPECIES_HOOPA_CONFINED": "SPECIES_HOOPA",
    "SPECIES_FLOETTE_ETERNAL": "SPECIES_FLOETTE_ETERNAL_FLOWER",
    "SPECIES_LYCANROC_MIDDAY": "SPECIES_LYCANROC",
    "SPECIES_TOXTRICITY_AMPED": "SPECIES_TOXTRICITY",
    "SPECIES_URSHIFU_SINGLE_STRIKE": "SPECIES_URSHIFU",
    "SPECIES_CALYREX_ICE": "SPECIES_CALYREX_ICE_RIDER",
    "SPECIES_CALYREX_SHADOW": "SPECIES_CALYREX_SHADOW_RIDER",
    "SPECIES_TAUROS_PALDEA_COMBAT": "SPECIES_TAUROS_COMBAT",
    "SPECIES_TAUROS_PALDEA_BLAZE": "SPECIES_TAUROS_BLAZE",
    "SPECIES_TAUROS_PALDEA_AQUA": "SPECIES_TAUROS_AQUA",
}

# Manual mapping for move name discrepancies
MOVE_REMAP = {
    "MOVE_HI_JUMP_KICK": "MOVE_HIGH_JUMP_KICK",
    "MOVE_FAINT_ATTACK": "MOVE_FEINT_ATTACK",
    "MOVE_VISE_GRIP": "MOVE_VICE_GRIP", # is this right?
    "MOVE_SUPER_POWER": "MOVE_SUPERPOWER",
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


def convert_learnset_format(input_path, output_path):
    with open(input_path, "r") as f:
        data = json.load(f)

    species_dict = load_species_header("include/constants/species.h")
    moves_dict = load_moves_header("include/constants/moves.h")

    output = {}

    for species, moveset in data.items():
        new_species = f"SPECIES_{species.upper()}"

        if new_species not in species_dict:
            if new_species in SPECIES_REMAP:
                new_species = SPECIES_REMAP.get(new_species)
            elif new_species.endswith("_ALOLA") or new_species.endswith("_PALDEA"):
                new_species += "N"
                if new_species not in species_dict:
                    print(f"{new_species} not found in species header file or remap")
            elif new_species.endswith("_GALAR"):
                new_species += "IAN"
                if new_species not in species_dict:
                    print(f"{new_species} not found in species header file or remap")
            elif new_species.endswith("_HISUI"):
                new_species += "AN"
                if new_species not in species_dict:
                    print(f"{new_species} not found in species header file or remap")
            elif new_species.endswith("_M"):
                new_species = new_species[:-2]
                if new_species not in species_dict:
                    print(f"{new_species} not found in species header file or remap")
            elif new_species.endswith("_F"):
                new_species += "EMALE"
                if new_species not in species_dict:
                    print(f"{new_species} not found in species header file or remap")
            else:
                print(f"{new_species} not found in species header file or remap")

        new_entry = {
            "LevelMoves": [],
            "MachineMoves": [],
            "EggMoves": [],
            "TutorMoves": []
        }

        # Pre-evo moves become Level 0
        for move in moveset.get("PreEvoMoves", []):
            new_entry["LevelMoves"].append({
                "Level": 0,
                "Move": move
            })

        # Then add actual level-up moves
        for move in moveset.get("LevelMoves", []):
            new_entry["LevelMoves"].append({
                "Level": move["Level"],
                "Move": move["Move"]
            })

        # TM → MachineMoves
        new_entry["MachineMoves"] = moveset.get("TMMoves", [])

        # Egg / Tutor copied directly
        new_entry["EggMoves"] = moveset.get("EggMoves", [])
        new_entry["TutorMoves"] = moveset.get("TutorMoves", [])

        for field in ["LevelMoves", "MachineMoves", "EggMoves", "TutorMoves"]:
            moves = new_entry.get(field, [])
            for i, move in enumerate(moves):
                if isinstance(move, dict):  # LevelMoves case
                    move_name = move["Move"]
                else:
                    move_name = move

                # Try remap
                remapped = MOVE_REMAP.get(move_name, move_name)

                # Update the entry in-place if it was remapped
                if remapped != move_name:
                    if isinstance(move, dict):
                        new_entry[field][i]["Move"] = remapped
                    else:
                        new_entry[field][i] = remapped

                # Check for presence in final output set
                if remapped not in moves_dict:
                    if move_name not in MOVE_REMAP:  # Not remapped and still missing
                        print(f"{new_species}: {move_name} not found in moves header file or remap")

        output[new_species] = new_entry

    with open(output_path, "w") as f:
        json.dump(output, f, indent=2)
    print(f"Converted learnsets saved to {output_path}")


if __name__ == "__main__":
    args = sys.argv[1:]
    convert_learnset_format(args[0], args[1])
