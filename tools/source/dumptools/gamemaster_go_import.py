import json
import requests
import re

GAMEMASTER_URL = "https://raw.githubusercontent.com/pvpoke/pvpoke/refs/heads/master/src/data/gamemaster.json"
GAMEMASTER_LOCAL = "gamemaster.json"
OUTPUT_JSON = "22_go.json"


def load_species_header(file_path):
    species_list = []
    define_pattern = re.compile(r"#define\s+(SPECIES_\w+)\s+(\d+)")

    with open(file_path) as f:
        for line in f:
            match = define_pattern.match(line.strip())
            if match:
                species_name = match.group(1)
                # Exclude dummy values
                if not any(skip in species_name for skip in ("NONE", "_START", "_COUNT", "EGG", "SPECIES_NUM")):
                    species_list.append(species_name)
    return species_list


def sanitise_move_name(moveName):
    if "HIDDEN_POWER" in moveName:
        return "MOVE_HIDDEN_POWER"
    if "WEATHER_BALL" in moveName:
        return "MOVE_WEATHER_BALL"
    if "TECHNO_BLAST" in moveName:
        return "MOVE_TECHNO_BLAST"
    return f"MOVE_{moveName}"


def download_gamemaster_json():
    print("Fetching gamemaster.json from GitHub...")
    response = requests.get(GAMEMASTER_URL)
    response.raise_for_status()
    with open(GAMEMASTER_LOCAL, "wb") as f:
        f.write(response.content)
    print("Downloaded gamemaster.json successfully.")


def process_gamemaster(monNames, gamemaster_path):
    with open(gamemaster_path, "r") as f:
        data = json.load(f)

    output = {}

    for monName in monNames:
        species_id = monName.replace("SPECIES_", "").lower()
        match = next((mon for mon in data["pokemon"] if mon["speciesId"] == species_id), None)
        if match:
            output[monName] = {
                "LevelMoves": [],
                "PreEvoMoves": [],
                "MachineMoves": [],
                "EggMoves": [],
                "TutorMoves": []
            }
            fast = map(sanitise_move_name, match.get("fastMoves", []))
            charged = map(sanitise_move_name, match.get("chargedMoves", []))
            legacy = map(sanitise_move_name, match.get("legacyMoves", []))
            elite = map(sanitise_move_name, match.get("eliteMoves", []))

            all_moves = set(fast) | set(charged) | set(legacy) | set(elite)
            output[monName]["MachineMoves"] = sorted(all_moves)

    return output


if __name__ == "__main__":
    download_gamemaster_json()
    species_list = load_species_header("../../../include/constants/species.h")
    output = process_gamemaster(species_list, GAMEMASTER_LOCAL)

    with open(OUTPUT_JSON, "w") as f:
        json.dump(output, f, indent=4)

    print(f"Wrote {len(output)} Pokémon to {OUTPUT_JSON}")
