.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// general freeze subscript

.create "build/move/battle_sub_seq/1_027", 0

a001_027:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_MAGMA_ARMOR, _0204
    checkcloudnine _checkFlowerVeil
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _0180

_checkFlowerVeil:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ALLY | BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    goto CheckIfGrounded
_checkGrassTypeForFlowerVeil:
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_GRASS, _0180
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_GRASS, _0180
CheckIfGrounded:
    ifgrounded BATTLER_ADDL_EFFECT, CheckMistyTerrain
    goto _0030
CheckMistyTerrain:
    ifterrainoverlayistype MISTY_TERRAIN, MistyTerrainFail

_0030:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0058
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _0180
_0058:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _0074
    printattackmessage
    waitmessage
_0074:
    checksubstitute BATTLER_ADDL_EFFECT, _0180
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x20, _01AC
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, 0xF, _01D0
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, 0xF, _01D0
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0180
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _0180
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _0230
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _0128
    playanimation BATTLER_ATTACKER
    waitmessage
_0128:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x4
    waitmessage
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, 0x20
    clearsomeflag BATTLER_ADDL_EFFECT
    printmessage 0x65, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_ADDL_EFFECT, 0x4
    wait 0x1E
    endscript
_0180:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0278
    wait 0x1E
    gotosubscript 75
    goto _0278
_01AC:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0278
    wait 0x1E
    goto _025C
_01D0:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0278
    wait 0x1E
    printmessage 0x1B, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _025C
_0204:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0278
    printattackmessage
    waitmessage
    wait 0x1E
    goto _025C
_0230:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0278
    wait 0x1E
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_025C:
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
_0278:
    endscript

MistyTerrainFail:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _0278
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
