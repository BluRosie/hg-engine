from dump_scripts.dump_tools import *

AI_FLAG_DEFINES = [
    "F_PRIORITIZE_SUPER_EFFECTIVE",
    "F_EVALUATE_ATTACKS",
    "F_EXPERT_ATTACKS",
    "F_PRIORITIZE_STATUS_MOVES",
    "F_RISKY_ATTACKS",
    "F_PRIORITIZE_DAMAGE",
    "F_MULTI_BATTLE_PARTNER",
    "F_DOUBLE_BATTLE",
    "F_PRIORITIZE_HEALING",
    "F_USE_WEATHER",
    "F_HARRASSMENT",
    "F_ROAMING_MON",
    "F_SAFARI_ZONE",
    "F_CATCHING_DEMO",
]

TRAINER_PARTY_MON_FLAG_DEFINES = [
    "TRAINER_DATA_TYPE_MOVES",
    "TRAINER_DATA_TYPE_ITEMS",
    "TRAINER_DATA_TYPE_ABILITY",
    "TRAINER_DATA_TYPE_BALL",
    "TRAINER_DATA_TYPE_IV_EV_SET",
    "TRAINER_DATA_TYPE_NATURE_SET",
    "TRAINER_DATA_TYPE_SHINY_LOCK",
]

def dump_trainerdata(trdata_narc, trpok_narc, is_expanded):
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
    for idx, trainer in enumerate(trdata_narc):
        flags = trdata_narc[idx]["flags"]
        trMonTypeFlags = "TRAINER_DATA_TYPE_NOTHING" if flags == 0 else flags_to_string(flags, TRAINER_PARTY_MON_FLAG_DEFINES)
        try:
            trainerdata_armips += f'trainerdata {idx}, "{names[int(idx)]}"\n'
        except KeyError:
            trainerdata_armips += f'trainerdata {idx}, "NoName"\n'
        trainerdata_armips += f'    trainermontype {trMonTypeFlags}\n'
        try:
            trainerdata_armips += f'    trainerclass {CONSTANTS["TRAINERCLASS"][trdata_narc[idx]["class"]]}\n'
        except KeyError:
            trainerdata_armips += f'    trainerclass {trdata_narc[idx]["class"]}\n'
        trainerdata_armips += f'    nummons {trdata_narc[idx]["num_pokemon"]}\n'
        trainerdata_armips += f'    item {ITEMS["ITEM"][trdata_narc[idx]["item_1"]]}\n'
        trainerdata_armips += f'    item {ITEMS["ITEM"][trdata_narc[idx]["item_2"]]}\n'
        trainerdata_armips += f'    item {ITEMS["ITEM"][trdata_narc[idx]["item_3"]]}\n'
        trainerdata_armips += f'    item {ITEMS["ITEM"][trdata_narc[idx]["item_4"]]}\n'
        trainerdata_armips += f'    aiflags {flags_to_string(trdata_narc[idx]["ai"], AI_FLAG_DEFINES)}\n'
        trainerdata_armips += f'    battletype {"DOUBLE_BATTLE" if trdata_narc[idx]["battle_type"] != 0 else "SINGLE_BATTLE"}\n'
        trainerdata_armips += f'    endentry\n\n'
        trainerdata_armips += f'    party {idx}\n'
        # can't just use nummons i don't think
        for monPartyIdx in range(0, len(trpok_narc[idx])):
            trainerdata_armips += f'        // mon {monPartyIdx}\n'
            trainerdata_armips += f'        ivs {trpok_narc[idx][monPartyIdx]["ivs"]}\n'
            trainerdata_armips += f'        abilityslot {trpok_narc[idx][monPartyIdx]["ability"]}\n'
            trainerdata_armips += f'        level {trpok_narc[idx][monPartyIdx]["level"]}\n'
            if get_form(trpok_narc[idx][monPartyIdx]["species_id"], is_expanded):
                trainerdata_armips += f'        monwithform {MONS["SPECIES"][get_base_species(trpok_narc[idx][monPartyIdx]["species_id"], is_expanded)]}, {get_form(trpok_narc[idx][monPartyIdx]["species_id"], is_expanded)}\n'
            else:
                trainerdata_armips += f'        pokemon {MONS["SPECIES"][trpok_narc[idx][monPartyIdx]["species_id"]]}\n'
            # item
            if flags & 0x2:
                trainerdata_armips += f'        item {ITEMS["ITEM"][trpok_narc[idx][monPartyIdx]["item_id"]]}\n'
            # toggled fields!  moves
            if flags & 0x1:
                trainerdata_armips += f'        move {MOVES["MOVE"][trpok_narc[idx][monPartyIdx]["move_1"]]}\n'
                trainerdata_armips += f'        move {MOVES["MOVE"][trpok_narc[idx][monPartyIdx]["move_2"]]}\n'
                trainerdata_armips += f'        move {MOVES["MOVE"][trpok_narc[idx][monPartyIdx]["move_3"]]}\n'
                trainerdata_armips += f'        move {MOVES["MOVE"][trpok_narc[idx][monPartyIdx]["move_4"]]}\n'
            # custom ability
            if flags & 0x4:
                trainerdata_armips += f'        ability {ABILITIES["ABILITY"][trpok_narc[idx][monPartyIdx]["custom_ability"]]}\n'
            # ball
            if flags & 0x8:
                trainerdata_armips += f'        ball {ITEMS["ITEM"][trpok_narc[idx][monPartyIdx]["ball"]]}\n'
            # set ev's and iv's
            if flags & 0x10:
                trainerdata_armips += f'        setivs {trpok_narc[idx][monPartyIdx]["iv_hp"]}, {trpok_narc[idx][monPartyIdx]["iv_atk"]}, {trpok_narc[idx][monPartyIdx]["iv_def"]}, {trpok_narc[idx][monPartyIdx]["iv_spd"]}, {trpok_narc[idx][monPartyIdx]["iv_spatk"]}, {trpok_narc[idx][monPartyIdx]["iv_spdef"]}\n'
                trainerdata_armips += f'        setevs {trpok_narc[idx][monPartyIdx]["ev_hp"]}, {trpok_narc[idx][monPartyIdx]["ev_atk"]}, {trpok_narc[idx][monPartyIdx]["ev_def"]}, {trpok_narc[idx][monPartyIdx]["ev_spd"]}, {trpok_narc[idx][monPartyIdx]["ev_spatk"]}, {trpok_narc[idx][monPartyIdx]["ev_spdef"]}\n'
            # nature
            if flags & 0x20:
                trainerdata_armips += f'        nature {trpok_narc[idx][monPartyIdx]["nature"]}\n'
            # shiny lock
            if flags & 0x40:
                trainerdata_armips += f'        shinylock {trpok_narc[idx][monPartyIdx]["shiny_lock"]}\n'
            if flags & 0x80:
                print("Additional flags not currently implemented in the dumper!  Quit.")
                sys.exit(0)
            trainerdata_armips += f'        ballseal {trpok_narc[idx][monPartyIdx]["ballseal"]}\n'
            if monPartyIdx != len(trpok_narc[idx])-1:
                trainerdata_armips += '\n'
        trainerdata_armips += f'    endparty\n\n'

    return trainerdata_armips

def get_trainer_names():
    # proper way to get trainer names is to dump them from the rom.  handler extracts everything from the rom to a build/trainernames.txt
    with open("build/trainernames.txt", 'r', encoding="utf-8") as f:
        content = f.readlines()
    names = {}
    current_trainer_index = 0
    for index, line in enumerate(content):
        names[current_trainer_index] = line.replace("{TRNAME}", "").replace("\n", "")
        current_trainer_index += 1
    return names
