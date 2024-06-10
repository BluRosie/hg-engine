.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// general burn subscript

.create "build/move/battle_sub_seq/1_025", 0

a001_025:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x5, _00D4
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_WATER_VEIL, _0350
    checkcloudnine _0058
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _0058
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _0350
_0058:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x10, _0350
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, 0xA, _0350
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, 0xA, _0350
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0350
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _0350
    goto _0238
_00D4:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_WATER_VEIL, _0424
    checkcloudnine _checkFlowerVeil
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _checkFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _0424

_checkFlowerVeil:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ALLY | BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    goto CheckIfGrounded
_checkGrassTypeForFlowerVeil:
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_GRASS, _printAttackIntoNoEffectFlowerVeil
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_GRASS, _printAttackIntoNoEffectFlowerVeil
CheckIfGrounded:
    ifgrounded BATTLER_ADDL_EFFECT, CheckMistyTerrain
    goto _0118
CheckMistyTerrain:
    ifterrainoverlayistype MISTY_TERRAIN, MistyTerrainFail

_0118:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0140
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _0354
_0140:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _015C
    printattackmessage
    waitmessage
_015C:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _017C
    checksubstitute BATTLER_ADDL_EFFECT, _0354
_017C:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x10, _0394
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, 0xA, _03DC
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, 0xA, _03DC
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0354
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _0238
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _0354
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _049C
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _0238
    playanimation BATTLER_ATTACKER
    waitmessage
_0238:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x5, _0264
    setstatus2effect BATTLER_ADDL_EFFECT, 0xA
    waitmessage
    wait 0xF
_0264:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x3
    waitmessage
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, 0x10
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _02C8
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x5, _02E8
    printmessage 0x55, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _02FC
_02C8:
    printmessage 0x58, 0x24, 0xFF, 0x15, 0x7, "NaN", "NaN", "NaN"
    goto _02FC
_02E8:
    printmessage 0x493, 0xF, 0x7, 0xFF, "NaN", "NaN", "NaN", "NaN"
_02FC:
    waitmessage
    setstatusicon BATTLER_ADDL_EFFECT, 0x3
    wait 0x1E
    if IF_MASK, VAR_SERVER_STATUS1, 0x80, _0340
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x80
    goto _0350
_0340:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x80
_0350:
    endscript
_0354:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _04E4
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _04E4
    wait 0x1E
    gotosubscript 75
    goto _04E4
_0394:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _04E4
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _04E4
    wait 0x1E
    printmessage 0x62, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _04C8
_03DC:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _04E4
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _04E4
    wait 0x1E
    printmessage 0x1B, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _04C8
_0424:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _04E4
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _04E4
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x2AE, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    goto _04C8
    printmessage 0x2D7, 0x35, 0x7, 0x7, 0xFF, 0x15, "NaN", "NaN"
    goto _04C8
_049C:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _04E4
    wait 0x1E
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_04C8:
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
_04E4:
    endscript


_printAttackIntoNoEffectFlowerVeil:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _04E4
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _04E4
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 686, TAG_NICK_ABILITY, BATTLER_ALLY | BATTLER_ADDL_EFFECT, BATTLER_ALLY | BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nprevents burns!
    goto _04C8

MistyTerrainFail:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _04E4
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_ABILITY, _04E4
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
