import os
import sys

# Helper methods for reading narcs and parsing .inc files
from dump_scripts.dump_tools import *

# Scripts for dumping parsed narcs to maintained source formats
from dump_scripts.baby_mons import dump_babymons_c
from dump_scripts.encounters import dump_encounters_c
from dump_scripts.evodata import dump_evodata_c
from dump_scripts.headbutt import dump_headbutt_c
from dump_scripts.height_table import dump_heighttable_c
from dump_scripts.mondata import dump_mondata
from dump_scripts.moves import dump_moves_c
from dump_scripts.pokedex_data import dump_pokedex_area_files, dump_pokedex_sort_files
from dump_scripts.regional_dex import dump_regionaldex_c
from dump_scripts.safari import dump_safari_encounters_c
from dump_scripts.speciesdata import dump_species_data
from dump_scripts.sprite_offsets import dump_spriteoffsets_c
from dump_scripts.trainerdata import dump_trainerdata, dump_trainerdata_c

VALID_MODES = ("c", "armips")
ARMIPS_STALE_PATHS = (
    "./dumped_armips/mondata.s",
    "./dumped_armips/babymons.s",
    "./dumped_armips/encounters.s",
    "./dumped_armips/evodata.s",
    "./dumped_armips/heighttable.s",
    "./dumped_armips/moves.s",
    "./dumped_armips/spriteoffsets.s",
    "./dumped_armips/headbutt.s",
    "./dumped_armips/regionaldex.s",
    "./dumped_armips/trainers.s",
)


def parse_args(argv):
    if len(argv) not in (2, 3):
        print(f"Usage: {argv[0]} <rom.nds> [c|armips]", file=sys.stderr)
        return None

    mode = argv[2] if len(argv) == 3 else "c"
    if mode not in VALID_MODES:
        print(f"Unknown dump mode: {mode}", file=sys.stderr)
        print(f"Valid modes: {', '.join(VALID_MODES)}", file=sys.stderr)
        return None

    return argv[1], mode


def remove_stale_outputs(paths):
    for stale_path in paths:
        if os.path.exists(stale_path):
            os.remove(stale_path)


def dump_armips_outputs(mondata_narc, rom, expanded):
    os.makedirs("dumped_armips", exist_ok=True)
    remove_stale_outputs(ARMIPS_STALE_PATHS)

    if not os.path.exists("build/trainernames.txt"):
        print("armips mode requires build/trainernames.txt; run dump_trainernames first", file=sys.stderr)
        raise SystemExit(1)

    with open("./dumped_armips/mondata.s", "w", encoding="utf-8") as file:
        file.write(dump_mondata(mondata_narc))

    trdata_narc = dump_narc(rom, "a/0/5/5", TRDATA_NARC_FORMAT)
    trpok_narc = dump_trpok_narc(rom, "a/0/5/6", trdata_narc)
    with open("./dumped_armips/trainers.s", "w", encoding="utf-8") as file:
        file.write(dump_trainerdata(trdata_narc, trpok_narc, expanded))


def dump_c_outputs(rom, mondata_raw_narc, msgdata_narc, pokedexsort_narc, expanded):
    os.makedirs("dumped_c", exist_ok=True)

    with open("./dumped_c/Species.c", "w", encoding="utf-8") as file:
        file.write(dump_species_data(mondata_raw_narc, msgdata_narc, pokedexsort_narc))

    moves_narc = dump_narc(rom, "a/0/1/1", MOVE_NARC_FORMAT)
    with open("./dumped_c/Moves.c", "w", encoding="utf-8") as file:
        file.write(dump_moves_c(moves_narc, msgdata_narc))

    encounters_narc = dump_narc(rom, "a/0/3/7", ENCOUNTER_NARC_FORMAT)
    with open("./dumped_c/Encounters.c", "w", encoding="utf-8") as file:
        file.write(dump_encounters_c(encounters_narc, expanded))

    evodata_narc = dump_narc(rom, "a/0/3/4", EXPANDED_EVO_NARC_FORMAT if expanded else EVO_NARC_FORMAT)
    with open("./dumped_c/Evolutions.c", "w", encoding="utf-8") as file:
        file.write(dump_evodata_c(evodata_narc, expanded))

    regionaldex_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/1/3/8"]])
    with open("./dumped_c/RegionalDex.c", "w", encoding="utf-8") as file:
        file.write(dump_regionaldex_c(regionaldex_narc.files[0]))

    with open("./dumped_c/BabyMons.c", "w", encoding="utf-8") as file:
        file.write(dump_babymons_c(rom.files[rom.filenames["poketool/personal/pms.narc"]]))

    heighttable_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/0/0/5"]])
    dump_heighttable_c(heighttable_narc.files, "./dumped_c/HeightTable.c")

    spriteoffsets_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/1/8/0"]])
    with open("./dumped_c/SpriteOffsets.c", "w", encoding="utf-8") as file:
        file.write(dump_spriteoffsets_c(spriteoffsets_narc.files[0]))

    dump_pokedex_sort_files(pokedexsort_narc.files, "./dumped_c")

    pokedexarea_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/1/3/3"]])
    dump_pokedex_area_files(pokedexarea_narc.files, "./dumped_c")

    headbutt_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/2/5/2"]])
    dump_headbutt_c(headbutt_narc.files, "./dumped_c/Headbutt.c")

    safari_encounters_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/2/3/0"]])
    with open("./dumped_c/SafariEncounters.c", "w", encoding="utf-8") as file:
        file.write(dump_safari_encounters_c(safari_encounters_narc, expanded))

    with open("./dumped_c/Trainers.c", "w", encoding="utf-8") as file:
        file.write(dump_trainerdata_c(rom, msgdata_narc, expanded))


def main(argv):
    parsed_args = parse_args(argv)
    if parsed_args is None:
        return 1

    rom_path, mode = parsed_args
    with open(rom_path, "rb") as file:
        rom = ndspy.rom.NintendoDSRom(file.read())

    mondata_narc = dump_narc(rom, "a/0/0/2", PERSONAL_NARC_FORMAT)
    mondata_raw_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/0/0/2"]])
    expanded = len(mondata_raw_narc.files) > 508

    if expanded:
        print("HG Engine Rom detected")

    if mode == "armips":
        dump_armips_outputs(mondata_narc, rom, expanded)
        return 0

    msgdata_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/0/2/7"]])
    pokedexsort_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/2/1/4"]])
    dump_c_outputs(rom, mondata_raw_narc, msgdata_narc, pokedexsort_narc, expanded)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
