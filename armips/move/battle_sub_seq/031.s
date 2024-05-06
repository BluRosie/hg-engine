.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Handle paralysis infliction

.create "build/move/battle_sub_seq/1_031", 0

a001_031:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LIMBER, _02AC
    checkcloudnine _checkFlowerVeil
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _checkFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _02AC

_checkFlowerVeil:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ALLY | BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    goto CheckIfGrounded
_checkGrassTypeForFlowerVeil:
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_GRASS, _printAttackIntoNoEffectFlowerVeil
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_GRASS, _printAttackIntoNoEffectFlowerVeil
CheckIfGrounded:
    ifgrounded BATTLER_ADDL_EFFECT, CheckMistyTerrain
    goto _0044
CheckMistyTerrain:
    ifterrainoverlayistype MISTY_TERRAIN, MistyTerrainFail

_0044:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _006C
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _01F0
_006C:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _0088
    printattackmessage
    waitmessage
_0088:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _00A8
    checksubstitute BATTLER_ADDL_EFFECT, _01F0
_00A8:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x40, _0230
    
    /* Add Electric-type immunity to paralysis */
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_ELECTRIC, _noeffect
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_ELECTRIC, _noeffect
    
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _01F0
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _0134
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _01F0
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _0324
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _0134
    playanimation BATTLER_ATTACKER
    waitmessage
_0134:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x5
    waitmessage
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, 0x40
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _0184
    printmessage 0x78, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _019C
_0184:
    printmessage 0x7B, 0x24, 0xFF, 0x15, 0x7, "NaN", "NaN", "NaN"
_019C:
    waitmessage
    setstatusicon BATTLER_ADDL_EFFECT, 0x5
    wait 0x1E
    if IF_MASK, VAR_SERVER_STATUS1, 0x80, _01DC
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x80
    endscript
_01DC:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x80
    endscript
_01F0:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _036C
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _036C
    wait 0x1E
    gotosubscript 75
    goto _036C
_0230:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _036C
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _036C
    wait 0x1E
    printmessage 0x85, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0350
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _036C
    wait 0x1E
    printmessage 0x1B, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0350
_02AC:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _036C
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _036C
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 644, TAG_NICK_ABILITY, BATTLER_ADDL_EFFECT, BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN"
    goto _0350
    printmessage 0x2D7, 0x35, 0x7, 0x7, 0xFF, 0x15, "NaN", "NaN"
    goto _0350
_0324:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _036C
    wait 0x1E
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_0350:
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
_036C:
    endscript
_noeffect:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _036C
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _036C
    wait 0x1E
    printmessage 0x1B, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0350


_printAttackIntoNoEffectFlowerVeil:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _036C
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _036C
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 644, TAG_NICK_ABILITY, BATTLER_ALLY | BATTLER_ADDL_EFFECT, BATTLER_ALLY | BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nprevents paralysis!
    goto _0350

MistyTerrainFail:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _036C
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_ABILITY, _036C
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close