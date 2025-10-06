from dump_scripts.dump_tools import *
import pprint

def dump_trainerdata(trdata_narc, trpok_narc):
    trainerdata_armips = ""
    trainerdata_armips += ".nds\n"
    trainerdata_armips += ".thumb\n\n"
    trainerdata_armips += ".include \"armips/include/constants.s\"\n"
    trainerdata_armips += ".include \"armips/include/macros.s\"\n\n"
    trainerdata_armips += ".include \"asm/include/abilities.inc\"\n"
    trainerdata_armips += ".include \"asm/include/items.inc\"\n"
    trainerdata_armips += ".include \"asm/include/moves.inc\"\n"
    trainerdata_armips += ".include \"asm/include/species.inc\"\n\n\n"

    names = get_trainer_names()
    pprint.pprint(trdata_narc[0])
    for idx, trainer in enumerate(trdata_narc):
        trainerdata_armips += f'trainerdata {idx}, "{names[int(idx)]}"\n'
        trainerdata_armips += f'    trainermontype {trdata_narc[idx]["flags"]}\n'
        trainerdata_armips += f'    trainerclass {trdata_narc[idx]["class"]}\n'
        trainerdata_armips += f'    nummons {trdata_narc[idx]["num_pokemon"]}\n'
        trainerdata_armips += f'    item {trdata_narc[idx]["item_1"]}\n'
        trainerdata_armips += f'    item {trdata_narc[idx]["item_2"]}\n'
        trainerdata_armips += f'    item {trdata_narc[idx]["item_3"]}\n'
        trainerdata_armips += f'    item {trdata_narc[idx]["item_4"]}\n'
        trainerdata_armips += f'    aiflags {trdata_narc[idx]["ai"]}\n'
        trainerdata_armips += f'    battletype {trdata_narc[idx]["battle_type"]}\n'
        trainerdata_armips += f'    endentry\n\n'
        trainerdata_armips += f'    party {idx}\n'
        # can't just use 
        for monPartyIdx in range(0, len(trpok_narc[idx])):
            trainerdata_armips += f'        // mon {monPartyIdx}\n'
            trainerdata_armips += f'        ivs {trpok_narc[idx][monPartyIdx]["ivs"]}\n'
            trainerdata_armips += f'        abilityslot {trpok_narc[idx][monPartyIdx]["ability"]}\n'
            trainerdata_armips += f'        level {trpok_narc[idx][monPartyIdx]["level"]}\n'
            trainerdata_armips += f'        pokemon {trpok_narc[idx][monPartyIdx]["species_id"]}\n'
            trainerdata_armips += f'        ballseal {trpok_narc[idx][monPartyIdx]["ivs"]}\n'
        trainerdata_armips += f'    endparty\n\n'
    
    return trainerdata_armips

"""
trainerdata 0, "-"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PKMN_TRAINER_ETHAN
    nummons 0
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags 0
    battletype SINGLE_BATTLE
    endentry

    party 0
        // mon 0
        ivs 0
        abilityslot 0
        level 0
        pokemon SPECIES_NONE
        ballseal 0
    endparty
"""

def get_trainer_names():
    with open("armips/data/trainers/trainers.s", 'r', encoding="utf-8") as f:
        content = f.readlines()

    names = {}
    current_trainer_index = 0
    for index, line in enumerate(content):
        if "trainerdata" in line:
            trainer_name = line.split("\"")[1]
            names[current_trainer_index] = trainer_name
            current_trainer_index += 1

    return names
