import argparse
import csv
import re

# requested by sauceyaTTa: Personal, trainer data / trainer poke, levelup learnsets, move data, and evolutions
# done: personal, levelup learnsets, evolutions
# needed: trainers, moves

BODY_COLORS = ['RED', 'BLUE', 'YELLOW', 'GREEN', 'BLACK', 'BROWN', 'PURPLE', 'GRAY', 'WHITE', 'PINK', 'EGG']

MONDATA_DUMP_TARGET = "armips/data/mondata_generated.s"
EVODATA_DUMP_TARGET = "armips/data/evodata_generated.s"
LEVELUPDATA_DUMP_TARGET = "armips/data/levelupdata_generated.s"

IRREGULAR_SPECIES_NAMES = {
    '-----': 'NONE',
    'NIDORAN♀': 'NIDORAN_F',
    'NIDORAN♂': 'NIDORAN_M',
    'FARFETCH’D': 'FARFETCHD',
    'FARFETCH’_D': 'FARFETCHD',
    'MR. MIME': 'MR_MIME',
    'MR._MIME': 'MR_MIME',
    'HO-OH': 'HO_OH',
    'MIME JR.': 'MIME_JR',
    'MIME_JR.': 'MIMEJR',
    'PORYGON-Z': 'PORYGON_Z',
    'DEOXYS_(_A)': 'DEOXYS_ATTACK',
    'DEOXYS_(_D)': 'DEOXYS_DEFENSE',
    'DEOXYS_(_S)': 'DEOXYS_SPEED',
    'WORMADAM_(_S)': 'WORMADAM_SANDY',
    'WORMADAM_(_T)': 'WORMADAM_TRASHY',
    'GIRATINA_(_O)': 'GIRATINA_ORIGIN',
    'SHAYMIN_(_S)': 'SHAYMIN_SKY',
    'ROTOM_(_HEAT)': 'ROTOM_HEAT',
    'ROTOM_(_WASH)': 'ROTOM_WASH',
    'ROTOM_(_FROST)': 'ROTOM_FROST',
    'ROTOM_(_FAN)': 'ROTOM_FAN',
    'ROTOM_(_MOW)': 'ROTOM_MOW',
}

IRREGULAR_ABILITIES = {
    'COMPOUNDEYES': 'COMPOUND_EYES',
    'LIGHTNINGROD': 'LIGHTNING_ROD',
}

IRREGULAR_ITEMS = {
    'KING’S_ROCK': 'KINGS_ROCK',
    'SILVER_POWDER': 'SILVERPOWDER',
    'TINY_MUSHROOM': 'TINYMUSHROOM',
    'TWISTED_SPOON': 'TWISTEDSPOON',
    'DEEP_SEA_SCALE': 'DEEPSEASCALE',
    'DEEP_SEA_TOOTH': 'DEEPSEATOOTH',
    'NEVER_MELT_ICE': 'NEVERMELTICE',
}

MYSTERY_TYPE = {
    '???': 'MYSTERY'
}

FAIRY_TYPE = {
    '???': 'FAIRY'
}

IRREGULAR_EGG_GROUPS = {
    '~': 'NONE'
}

IRREGULAR_EVO_METHODS = {
    'TRADE_(_ITEM)': 'TRADE_ITEM',
    'LEVEL_(_MT._CORONET)': 'LEVEL_ELECTRIC_FIELD',
    'LEVEL_(_ETERNA_FOREST)': 'LEVEL_MOSSY_STONE',
    'LEVEL_(_ROUTE_217)': 'LEVEL_ICY_STONE',
    'HAPPINESS_(_DAY)': 'HAPPINESS_DAY',
    'HAPPINESS_(_NIGHT)': 'HAPPINESS_NIGHT',
    'ATTACK_KNOWN': 'KNOWS_MOVE',
    'USE_ITEM_(_DAY)': 'USE_ITEM_DAY',
    'USE_ITEM_(_NIGHT)': 'USE_ITEM_NIGHT',
    'LEVEL_(_ATTACK_<_DEFENSE)': 'LEVEL_MORE_DEFENSE',
    'LEVEL_(_ATTACK_>_DEFENSE)': 'LEVEL_MORE_ATTACK',
    'LEVEL_(_ATTACK_=_DEFENSE)': 'LEVEL_ATK_DEF_EQUAL',
    'LEVEL_(_PID_>_5)': 'LEVEL_PID_LOW',        # These are incorrect in Pokeditor
    'LEVEL_(_PID_<_5)': 'LEVEL_PID_HIGH',
    'USE_ITEM_(_MALE)': 'USE_ITEM_MALE',
    'USE_ITEM_(_FEMALE)': 'USE_ITEM_FEMALE',
    'LEVEL_(1_OF_2)': 'LEVEL_GEN_NEW_MON_1',
    'LEVEL_(2_OF_2)': 'LEVEL_GEN_NEW_MON_2',
    'LEVEL_(_MALE)': 'LEVEL_MALE',
    'LEVEL_(_FEMALE)': 'LEVEL_FEMALE',
    'POKEMON_IN_PARTY': 'MON_IN_PARTY',
}

IRREGULAR_MOVES = {
    'SMOKE_SCREEN': 'SMOKESCREEN',
    'SELFDESTRUCT': 'SELF_DESTRUCT',
    'SOFTBOILED': 'SOFT_BOILED',
}


def upper_snake_case(s: str) -> str:
    return '_'.join(
        re.sub(
            '([A-Z][a-z]+)',
            r' \1',
            re.sub(
                '([A-Z]+)',
                r' \1',
                s.replace('-', ' ')
            )
        ).split()
    ).upper()


def sanitize(ability: str, sanitation_dict: dict[str, str]) -> str:
    snake = upper_snake_case(ability)
    if snake == '':
        return 'NONE'
    
    if snake in sanitation_dict:
        return sanitation_dict[snake]

    return snake


def sanitize_evoreq(raw_req: str, raw_method: str) -> str:
    if raw_method == 'None':                                # Just return 0 for consistency
        return '0'
    elif raw_method == 'Level Up':                          # Requirement is a number, which should just be the raw value
        return raw_req
    elif 'Item' in raw_method:                              # Requirement is an item, so sanitize it
        return 'ITEM_' + sanitize(raw_req, IRREGULAR_ITEMS)
    elif raw_method == 'Attack Known':                      # Requirement is a move, so sanitize it
        return 'MOVE_' + sanitize(raw_req, {})
    elif raw_method == 'Pokemon in Party':                  # Requirement is a Pokemon, so sanitize it
        return 'SPECIES_' + sanitize(raw_req, IRREGULAR_SPECIES_NAMES)
    
    return raw_req


def import_personal(personal_sheet_fname: str, use_fairy_type: bool):
    dump_header = """.nds
.thumb

.include "armips/include/macros.s"
.include "armips/include/monnums.s"
.include "armips/include/itemnums.s"
.include "armips/include/constants.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/data/tmlearnset.s"

// all the mon personal data.  tm learnsets are specifically in tmlearnset.s
// basestats and evyields fields are formatted as such:  hp atk def speed spatk spdef
    """


    dump_template = """

mondata SPECIES_{species}
    basestats {base_hp}, {base_atk}, {base_def}, {base_spe}, {base_spa}, {base_spd}
    types TYPE_{type_1}, TYPE_{type_2}
    catchrate {catch_rate}
    baseexp {exp_yield}
    evyields {ev_yield_hp}, {ev_yield_atk}, {ev_yield_def}, {ev_yield_spe}, {ev_yield_spa}, {ev_yield_spd}
    items ITEM_{item_uncommon}, ITEM_{item_rare}
    genderratio {gender_ratio}
    eggcycles {hatch_multi}
    basefriendship {base_friendship}
    growthrate GROWTH_{growth_rate}
    egggroups EGG_GROUP_{egg_group_1}, EGG_GROUP_{egg_group_2}
    abilities ABILITY_{ability_1}, ABILITY_{ability_2}
    runchance {run_chance}
    colorflip BODY_COLOR_{body_color}, {flip:d}
    tmdata SPECIES_{species}_TM_DATA_0, SPECIES_{species}_TM_DATA_1, SPECIES_{species}_TM_DATA_2, SPECIES_{species}_TM_DATA_3
"""

    with open(personal_sheet_fname, encoding='utf-8') as personal_csv, open(MONDATA_DUMP_TARGET, 'w', encoding='utf-8') as mondata_dump:
        mondata_dump.write(dump_header)
        reader = csv.DictReader(personal_csv)
        for row in reader:
            dump_data = dump_template.format(
                species=sanitize(row["Name"].upper(), IRREGULAR_SPECIES_NAMES),
                base_hp=row["HP"],
                base_atk=row["Attack"],
                base_def=row["Defense"],
                base_spe=row["Speed"],
                base_spa=row["Sp. Atk"],
                base_spd=row["Sp. Def"],
                type_1=(sanitize(row["Type 1"].upper(), FAIRY_TYPE) if use_fairy_type else sanitize(row["Type 1"].upper(), MYSTERY_TYPE)),
                type_2=(sanitize(row["Type 2"].upper(), FAIRY_TYPE) if use_fairy_type else sanitize(row["Type 2"].upper(), MYSTERY_TYPE)),
                catch_rate=row["Catch Rate"],
                exp_yield=row["Exp Drop"],
                ev_yield_hp=row["HP EV Yield"],
                ev_yield_atk=row["Spe EV Yield"],           # Yes. Pokeditor actually ordered these incorrectly.
                ev_yield_def=row["Attack EV Yield"],        # Blame turtleisaac.
                ev_yield_spe=row["Defense EV Yield"],
                ev_yield_spa=row["Sp. Atk EV Yield"],       # These are correct, though!
                ev_yield_spd=row["Sp. Def EV Yield"],
                item_uncommon=sanitize(row["Uncommon Held Item"], IRREGULAR_ITEMS),
                item_rare=sanitize(row["Rare Held Item"], IRREGULAR_ITEMS),
                gender_ratio=row["Gender Ratio"],
                hatch_multi=row["Hatch Multiplier"],
                base_friendship=row["Base Happiness"],
                growth_rate=upper_snake_case(row["Growth Rate"]),
                egg_group_1=sanitize(row["Egg Group 1"], IRREGULAR_EGG_GROUPS),
                egg_group_2=sanitize(row["Egg Group 2"], IRREGULAR_EGG_GROUPS),
                ability_1=sanitize(row["Ability 1"], IRREGULAR_ABILITIES),
                ability_2=sanitize(row["Ability 2"], IRREGULAR_ABILITIES),
                run_chance=row["Run Chance (Safari Zone only)"],
                body_color=BODY_COLORS[int(row["DO NOT TOUCH"]) & 127],
                flip=((int(row["DO NOT TOUCH"]) & 128) >> 7),
            )

            mondata_dump.write(dump_data)


def import_evolutions(evolutions_sheet_fname: str):
    dump_header = """.nds
.thumb

.include "armips/include/macros.s"
.include "armips/include/constants.s"
.include "armips/include/monnums.s"
.include "armips/include/itemnums.s"
.include "armips/include/movenums.s"

// the evolution data of each mon

"""

    # This template only supports 7 evo methods, according to vanilla limitations
    dump_template = """
evodata SPECIES_{species}
    evolution EVO_{method_1}, {req_1}, SPECIES_{result_1}
    evolution EVO_{method_2}, {req_2}, SPECIES_{result_2}
    evolution EVO_{method_3}, {req_3}, SPECIES_{result_3}
    evolution EVO_{method_4}, {req_4}, SPECIES_{result_4}
    evolution EVO_{method_5}, {req_5}, SPECIES_{result_5}
    evolution EVO_{method_6}, {req_6}, SPECIES_{result_6}
    evolution EVO_{method_7}, {req_7}, SPECIES_{result_7}
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    terminateevodata
"""
    
    with open(evolutions_sheet_fname, encoding='utf-8') as evolutions_csv, open(EVODATA_DUMP_TARGET, 'w', encoding='utf-8') as evodata_dump:
        evodata_dump.write(dump_header)
        reader = csv.reader(evolutions_csv)
        next(reader) # skip the header
        for row in reader:
            dump_data = dump_template.format(
                species=sanitize(row[1], IRREGULAR_SPECIES_NAMES),

                method_1=sanitize(row[2], IRREGULAR_EVO_METHODS),
                req_1=sanitize_evoreq(row[3], row[2]),
                result_1=sanitize(row[4], IRREGULAR_SPECIES_NAMES),

                method_2=sanitize(row[5], IRREGULAR_EVO_METHODS),
                req_2=sanitize_evoreq(row[6], row[5]),
                result_2=sanitize(row[7], IRREGULAR_SPECIES_NAMES),

                method_3=sanitize(row[8], IRREGULAR_EVO_METHODS),
                req_3=sanitize_evoreq(row[9], row[8]),
                result_3=sanitize(row[10], IRREGULAR_SPECIES_NAMES),

                method_4=sanitize(row[11], IRREGULAR_EVO_METHODS),
                req_4=sanitize_evoreq(row[12], row[11]),
                result_4=sanitize(row[13], IRREGULAR_SPECIES_NAMES),

                method_5=sanitize(row[14], IRREGULAR_EVO_METHODS),
                req_5=sanitize_evoreq(row[15], row[14]),
                result_5=sanitize(row[16], IRREGULAR_SPECIES_NAMES),

                method_6=sanitize(row[17], IRREGULAR_EVO_METHODS),
                req_6=sanitize_evoreq(row[18], row[17]),
                result_6=sanitize(row[19], IRREGULAR_SPECIES_NAMES),

                method_7=sanitize(row[20], IRREGULAR_EVO_METHODS),
                req_7=sanitize_evoreq(row[21], row[20]),
                result_7=sanitize(row[22], IRREGULAR_SPECIES_NAMES),
            )

            evodata_dump.write(dump_data)


def import_leveluplearnsets(leveluplearnsets_sheet_fname: str):
    dump_header = """.nds
.thumb

.include "armips/include/macros.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// the level up moves for each pokemon

"""

    dump_learnset_header = """
levelup SPECIES_{species}
"""

    dump_learnset_line = '    learnset MOVE_{move}, {level}\n'
    dump_learnset_eom  = '    terminatelearnset\n'

    with open(leveluplearnsets_sheet_fname, encoding='utf-8') as learnsets_csv, open(LEVELUPDATA_DUMP_TARGET, 'w', encoding='utf-8') as levelupdata_dump:
        levelupdata_dump.write(dump_header)
        reader = csv.reader(learnsets_csv)
        next(reader) # skip the header
        for row in reader:
            levelupdata_dump.write(dump_learnset_header.format(species=sanitize(row[1], IRREGULAR_SPECIES_NAMES)))
            for i in range(2, len(row), 2):
                move = sanitize(row[i], IRREGULAR_MOVES)
                level = row[i + 1]
                if move == 'NONE':
                    break
                
                levelupdata_dump.write(dump_learnset_line.format(move=move, level=level))
            levelupdata_dump.write(dump_learnset_eom)


if __name__ == '__main__':
    argparser = argparse.ArgumentParser(
        prog='PokEditor Imports',
        description='Generates HGEngine compatible assembly files from PokEditor CSVs'
    )
    argparser.add_argument('-f', '--fairy', action='store_true')
    argparser.add_argument('-p', '--personal')
    argparser.add_argument('-e', '--evolutions')
    argparser.add_argument('-l', '--learnsets')

    args = argparser.parse_args()
    if args.personal:
        import_personal(args.personal, args.fairy)
    if args.evolutions:
        import_evolutions(args.evolutions)
    if args.learnsets:
        import_leveluplearnsets(args.learnsets)
