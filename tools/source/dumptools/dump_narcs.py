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
from dump_scripts.hidden_items import INPUT_PATH as HIDDEN_ITEMS_ARM9_PATH, dump_hidden_items_from_arm9_c
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


def run_dump(name, failures, callback):
    try:
        callback()
    except Exception as error:
        failures.append(name)
        print(f"Failed to dump {name}: {error}", file=sys.stderr)


def write_dump(path, contents):
    with open(path, "w", encoding="utf-8") as file:
        file.write(contents)


def dump_armips_trainers(rom, expanded):
    trdata_narc = dump_narc(rom, "a/0/5/5", TRDATA_NARC_FORMAT)
    trpok_narc = dump_trpok_narc(rom, "a/0/5/6", trdata_narc)
    write_dump("./dumped_armips/trainers.s", dump_trainerdata(trdata_narc, trpok_narc, expanded))


def dump_armips_outputs(mondata_narc, rom, expanded):
    os.makedirs("dumped_armips", exist_ok=True)
    remove_stale_outputs(ARMIPS_STALE_PATHS)
    failures = []

    if not os.path.exists("build/trainernames.txt"):
        print("armips mode requires build/trainernames.txt; run dump_trainernames first", file=sys.stderr)
        raise SystemExit(1)

    run_dump("mondata.s", failures, lambda: write_dump("./dumped_armips/mondata.s", dump_mondata(mondata_narc)))
    run_dump("trainers.s", failures, lambda: dump_armips_trainers(rom, expanded))
    return failures


def dump_c_outputs(rom, mondata_raw_narc, msgdata_narc, pokedexsort_narc, expanded):
    os.makedirs("dumped_c", exist_ok=True)
    failures = []

    # callback wrapper around each dump so we don't fast-fail on first error
    run_dump("Species.c", failures, lambda: write_dump("./dumped_c/Species.c", dump_species_data(mondata_raw_narc, msgdata_narc, pokedexsort_narc)))
    run_dump("Moves.c", failures, lambda: write_dump("./dumped_c/Moves.c", dump_moves_c(dump_narc(rom, "a/0/1/1", MOVE_NARC_FORMAT), msgdata_narc)))
    run_dump("Encounters.c", failures, lambda: write_dump("./dumped_c/Encounters.c", dump_encounters_c(dump_narc(rom, "a/0/3/7", ENCOUNTER_NARC_FORMAT), expanded)))
    run_dump("Evolutions.c", failures, lambda: write_dump("./dumped_c/Evolutions.c", dump_evodata_c(dump_narc(rom, "a/0/3/4", EXPANDED_EVO_NARC_FORMAT if expanded else EVO_NARC_FORMAT), expanded)))
    run_dump("RegionalDex.c", failures, lambda: write_dump("./dumped_c/RegionalDex.c", dump_regionaldex_c(ndspy.narc.NARC(rom.files[rom.filenames["a/1/3/8"]]).files[0])))
    run_dump("BabyMons.c", failures, lambda: write_dump("./dumped_c/BabyMons.c", dump_babymons_c(rom.files[rom.filenames["poketool/personal/pms.narc"]])))
    run_dump("HeightTable.c", failures, lambda: dump_heighttable_c(ndspy.narc.NARC(rom.files[rom.filenames["a/0/0/5"]]).files, "./dumped_c/HeightTable.c"))
    run_dump("SpriteOffsets.c", failures, lambda: write_dump("./dumped_c/SpriteOffsets.c", dump_spriteoffsets_c(ndspy.narc.NARC(rom.files[rom.filenames["a/1/8/0"]]).files[0])))
    run_dump("PokedexSort.c", failures, lambda: dump_pokedex_sort_files(pokedexsort_narc.files, "./dumped_c"))
    run_dump("PokedexArea.c", failures, lambda: dump_pokedex_area_files(ndspy.narc.NARC(rom.files[rom.filenames["a/1/3/3"]]).files, "./dumped_c"))
    run_dump("Headbutt.c", failures, lambda: dump_headbutt_c(ndspy.narc.NARC(rom.files[rom.filenames["a/2/5/2"]]).files, "./dumped_c/Headbutt.c"))
    run_dump("SafariEncounters.c", failures, lambda: write_dump("./dumped_c/SafariEncounters.c", dump_safari_encounters_c(ndspy.narc.NARC(rom.files[rom.filenames["a/2/3/0"]]), expanded)))
    run_dump("Trainers.c", failures, lambda: write_dump("./dumped_c/Trainers.c", dump_trainerdata_c(rom, msgdata_narc, expanded)))
    run_dump("HiddenItems.c", failures, lambda: write_dump("./dumped_c/HiddenItems.c", dump_hidden_items_from_arm9_c(HIDDEN_ITEMS_ARM9_PATH.read_bytes())))

    return failures


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
        failures = dump_armips_outputs(mondata_narc, rom, expanded)
        run_dump("HiddenItems.c", failures, lambda: write_dump("./dumped_c/HiddenItems.c", dump_hidden_items_from_arm9_c(HIDDEN_ITEMS_ARM9_PATH.read_bytes())))
        if failures:
            print(f"Completed with {len(failures)} failed dump(s): {', '.join(failures)}", file=sys.stderr)
            return 1
        return 0

    msgdata_narc = None
    pokedexsort_narc = None
    try:
        msgdata_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/0/2/7"]])
    except Exception as error:
        print(f"Failed to load msg_data.narc: {error}", file=sys.stderr)
    try:
        pokedexsort_narc = ndspy.narc.NARC(rom.files[rom.filenames["a/2/1/4"]])
    except Exception as error:
        print(f"Failed to load pokedex sort narc: {error}", file=sys.stderr)
    failures = dump_c_outputs(rom, mondata_raw_narc, msgdata_narc, pokedexsort_narc, expanded)
    if failures:
        print(f"Completed with {len(failures)} failed dump(s): {', '.join(failures)}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
