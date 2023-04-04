from csv import DictReader
from re import sub

# for saucy: Personal, trainer data / trainer poke, levelup learnsets, move data, and evolutions

PERSONAL_HEADER = [
    "ID Number",
    "Name",
    "HP",
    "Attack",
    "Defense",
    "Speed",
    "Sp. Atk",
    "Sp. Def",
    "Type 1",
    "Type 2",
    "Catch Rate",
    "Exp Drop",
    "HP EV Yield",
    "Spe EV Yield",
    "Attack EV Yield",
    "Defense EV Yield",
    "Sp. Atk EV Yield",
    "Sp. Def EV Yield",
    "Uncommon Held Item",
    "Rare Held Item",
    "Gender Ratio",
    "Hatch Multiplier",
    "Base Happiness",
    "Growth Rate",
    "Egg Group 1",
    "Egg Group 2",
    "Ability 1",
    "Ability 2",
    "Run Chance (Safari Zone only)",
    "DO NOT TOUCH",
]

BODY_COLORS = ['RED', 'BLUE', 'YELLOW', 'GREEN', 'BLACK', 'BROWN', 'PURPLE', 'GRAY', 'WHITE', 'PINK', 'EGG']

MONDATA_DUMP_TARGET = "armips/data/mondata_generated.s"

IRREGULAR_NAMES = {
    '-----': 'NONE',
    'NIDORAN♀': 'NIDORAN_F',
    'NIDORAN♂': 'NIDORAN_M',
    'FARFETCH’D': 'FARFETCHD',
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
    'WORMADAM_(_T)': 'WORMADAM_TRASH',
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


def upper_snake_case(s: str) -> str:
    return '_'.join(
        sub(
            '([A-Z][a-z]+)',
            r' \1',
            sub(
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
        reader = DictReader(personal_csv)
        for row in reader:
            dump_data = dump_template.format(
                species=sanitize(row["Name"].upper(), IRREGULAR_NAMES),
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
