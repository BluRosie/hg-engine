.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// badly poison subscript

.create "build/move/battle_sub_seq/1_047", 0

a001_047:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DOKUBISI, NotToxicSpikes
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_IMMUNITY, _03E8
    checkcloudnine _checkFlowerVeil
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _checkFlowerVeil ;if not sun
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _03E8

_checkFlowerVeil:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ALLY | BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    goto CheckIfGrounded
_checkGrassTypeForFlowerVeil:
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_GRASS, _printAttackIntoNoEffectFlowerVeil
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_GRASS, _printAttackIntoNoEffectFlowerVeil
CheckIfGrounded:
    ifgrounded BATTLER_ADDL_EFFECT, CheckMistyTerrain
    goto _01E8
CheckMistyTerrain:
    ifterrainoverlayistype MISTY_TERRAIN, MistyTerrainFail

    goto _01E8
NotToxicSpikes:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_SOUBIITEM, NotToxicOrb
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_IMMUNITY, _end_script
    checkcloudnine _checkFlowerVeil2
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _checkFlowerVeil2
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _end_script

_checkFlowerVeil2:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil2
    moldbreakerabilitycheck 0x0, BATTLER_ALLY | BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil2
    goto CheckIfGrounded2
_checkGrassTypeForFlowerVeil2:
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_GRASS, _end_script
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_GRASS, _end_script
CheckIfGrounded2:
    ifgrounded BATTLER_ADDL_EFFECT, CheckMistyTerrain2
    goto _00B8
CheckMistyTerrain2:
    ifterrainoverlayistype MISTY_TERRAIN, MistyTerrainFail

_00B8:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x8, _end_script
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x80, _end_script

    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_CORROSION, _skipTypeChecks // add corrosion being able to poison any type

    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_POISON, _end_script
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_POISON, _end_script
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_STEEL, _end_script
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_STEEL, _end_script

_skipTypeChecks:
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _end_script
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _end_script
    goto _0300
NotToxicOrb:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_IMMUNITY, _03E8
    checkcloudnine _checkFlowerVeil3
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _checkFlowerVeil3
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _03E8

_checkFlowerVeil3:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ALLY | BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
CheckIfGrounded3:
    ifgrounded BATTLER_ADDL_EFFECT, CheckMistyTerrain3
    goto _01C0
CheckMistyTerrain3:
    ifterrainoverlayistype MISTY_TERRAIN, MistyTerrainFail

_01C0:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _01E8
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _0450
_01E8:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DIRECT, _0204
    printattackmessage
    waitmessage
_0204:
    checksubstitute BATTLER_ADDL_EFFECT, _0450
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x8, _04A4
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x80, _04A4

    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_CORROSION, _skipTypeChecks2 // add corrosion being able to poison any type

    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_POISON, _04EC
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_POISON, _04EC
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_STEEL, _04EC
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_STEEL, _04EC

_skipTypeChecks2:
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0450
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _0450
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _safeguard
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DIRECT, _0300
    playanimation BATTLER_ATTACKER
    waitmessage
_0300:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_SOUBIITEM, _032C
    setstatus2effect BATTLER_ADDL_EFFECT, 0xA
    waitmessage
    wait 0xF
_032C:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x2
    waitmessage
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, 0x80
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_SOUBIITEM, _037C
    printmessage 0x4F, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0390
_037C:
    printmessage 0x490, 0xF, 0x7, 0xFF, "NaN", "NaN", "NaN", "NaN"
_0390:
    waitmessage
    setstatusicon BATTLER_ADDL_EFFECT, 0x2
    wait 0x1E
    if IF_MASK, VAR_SERVER_STATUS1, 0x80, _03D4
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x80
    goto _end_script
_03D4:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x80
_end_script:
    endscript
_03E8:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _end_script_also
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_WAZA_KOUKA, _042C
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DOKUBISI, _042C
    printattackmessage
    waitmessage
_042C:
    wait 0x1E
    printmessage 0x28A, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    goto _0574
_0450:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _end_script_also
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_WAZA_KOUKA, _end_script_also
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DOKUBISI, _end_script_also
    wait 0x1E
    gotosubscript 75
    goto _end_script_also
_04A4:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _end_script_also
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DOKUBISI, _end_script_also
    wait 0x1E
    printmessage 0x4C, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0574
_04EC:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _end_script_also
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DOKUBISI, _end_script_also
    wait 0x1E
    printmessage 0x1B, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0574
_safeguard:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _end_script_also
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DOKUBISI, _end_script_also
    wait 0x1E
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_0574:
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
_end_script_also:
    endscript


_printAttackIntoNoEffectFlowerVeil:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _end_script_also
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_WAZA_KOUKA, _printNoEffectFlowerVeil
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DOKUBISI, _printNoEffectFlowerVeil
    printattackmessage
    waitmessage
_printNoEffectFlowerVeil:
    wait 0x1E
    printmessage 650, TAG_NICK_ABILITY, BATTLER_ALLY | BATTLER_ADDL_EFFECT, BATTLER_ALLY | BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nprevents poisoning!
    goto _0574

MistyTerrainFail:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _end_script_also
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_WAZA_KOUKA, _end_script_also
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DOKUBISI, _end_script_also
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
