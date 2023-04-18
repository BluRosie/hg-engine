#!/usr/bin/env python3

import math
import os
import re
import subprocess
import shutil
import struct
import sys
import pokebase as pb


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
    'MIME_JR': 'MIMEJR',
}


IRREGULAR_TARGETS = {
    'SELECTED__POKEMON': 'SELECTED',
    'ALL__OPPONENTS': 'BOTH',
    'ENTIRE__FIELD': 'ACTIVE_FIELD',
    'USER__AND__ALLIES': 'USER_SIDE',
    'ALL__OTHER__POKEMON': 'FOES_AND_ALLY',
    'USERS__FIELD': 'USER_SIDE',
    'SELECTED__POKEMON__ME__FIRST': 'SELECTED',
    'ALL__POKEMON': 'USER | MOVE_TARGET_FOES_AND_ALLY',
    'OPPONENTS__FIELD': 'OPPONENTS_FIELD',
    'RANDOM__OPPONENT': 'RANDOM',
    'ALL__ALLIES': 'ALLY',
    'FAINTING__POKEMON': 'USER',
    'SPECIFIC__MOVE': 'DEPENDS',
}


IRREGULAR_NULL = {
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



#print(dir(currentMon))

dump_template = """
movedata MOVE_{name}, "{real_name}"
    battleeffect 0
    pss SPLIT_{split}
    basepower {basepower}
    type {type1}
    accuracy {accuracy}
    pp {basepp}
    effectchance {chance}
    target MOVE_TARGET_{target}
    priority {pri}
    flags {full_flags_string}
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata"""

for i in range(560, 921):
    currentMove = pb.APIResource('move', i)
    
    type_1=str(currentMove.type.name).upper(),

    if ("FAIRY" in type_1[0]):
        type_1 = "(FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL"
        type_1_fairy = 1
    else:
        type_1 = "TYPE_" + str(type_1[0])
        type_1_fairy = 0

    for i in range(0, len(currentMove.names)-1):
        if ('en' in str(currentMove.names[i].language.name)):
            realName = str(currentMove.names[i].name)
            break

    dump_data = dump_template.format(
        name=sanitize(str(currentMove.name).upper(), IRREGULAR_NULL),
        real_name=realName,
        split=str(currentMove.damage_class.name).upper(),
        basepower=str(currentMove.power) if 'None' not in str(currentMove.power) else "0",
        type1=type_1,
        accuracy=str(currentMove.accuracy) if 'None' not in str(currentMove.accuracy) else "0",
        basepp=currentMove.pp,
        chance=str(currentMove.effect_chance) if 'None' not in str(currentMove.effect_chance) else "0",
        target=sanitize(upper_snake_case(str(currentMove.target.name).upper()), IRREGULAR_TARGETS),
        pri=currentMove.priority,
        full_flags_string="FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT" if 'STATUS' in str(currentMove.damage_class.name).upper() else "FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK" # will have to go through individually and fix this
    )
    
    print(dump_data)

    #mondata_dump.write(dump_data)
