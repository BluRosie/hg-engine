.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// general poison subscript

.create "build/move/battle_sub_seq/1_022", 0

a001_022:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x6, _0060
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_IMMUNITY, _printAttackIntoNoEffect
    checkcloudnine _00CC
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _00CC
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _printAttackIntoNoEffect
    goto _00CC
_0060:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_IMMUNITY, _printAttackIntoNoEffect
    checkcloudnine _checkFlowerVeil
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _checkFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _printAttackIntoNoEffect

_checkFlowerVeil:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ALLY | BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    goto CheckIfGrounded
_checkGrassTypeForFlowerVeil:
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_GRASS, _printAttackIntoNoEffectFlowerVeil
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_GRASS, _printAttackIntoNoEffectFlowerVeil
CheckIfGrounded:
    ifgrounded BATTLER_ADDL_EFFECT, CheckMistyTerrain
    goto _00A4
CheckMistyTerrain:
    ifterrainoverlayistype MISTY_TERRAIN, MistyTerrainFail

_00A4:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _00CC
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _0368
_00CC:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _00E8
    printattackmessage
    waitmessage
_00E8:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _0108
    checksubstitute BATTLER_ADDL_EFFECT, _0368
_0108:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x8, _isAlreadyPoisoned
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x80, _isAlreadyPoisoned

    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_CORROSION, _skipTypeChecks // add corrosion being able to poison any type

    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_POISON, _doesNotEffectType
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_POISON, _doesNotEffectType
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_STEEL, _doesNotEffectType
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_STEEL, _doesNotEffectType

_skipTypeChecks:
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0368
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _020C
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _0368
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _protectedBySafeguard
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _020C
    playanimation BATTLER_ATTACKER
    waitmessage
_020C:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x2
    waitmessage
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, 0x8
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _025C
    printmessage 63, TAG_NICK, BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}\nwas poisoned!
    goto _0274
_025C:
    printmessage 66, TAG_NICK_ABILITY_NICK, BATTLER_WORK, BATTLER_x15, BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\npoisoned {STRVAR_1 1, 2, 0}!
_0274:
    waitmessage
    setstatusicon BATTLER_ADDL_EFFECT, 0x2
    wait 0x1E
    if IF_MASK, VAR_SERVER_STATUS1, 0x80, _02B4
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x80
    endscript
_02B4:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x80
    endscript


_printAttackIntoNoEffect:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x4, _skipAttackMessage
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x6, _skipAttackMessage
    printattackmessage
    waitmessage
    wait 0x1E
_skipAttackMessage:
    printmessage 650, TAG_NICK_ABILITY, BATTLER_ADDL_EFFECT, BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nprevents poisoning!
    goto _cleanUpAndEnd



// unreferenced?
    printmessage 727, TAG_NICK_ABILITY_NICK_ABILITY, BATTLER_ADDL_EFFECT, BATTLER_ADDL_EFFECT, BATTLER_WORK, BATTLER_x15, "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nsuppressed {STRVAR_1 1, 2, 0}’s\f{STRVAR_1 5, 3, 0}!
    goto _cleanUpAndEnd



_0368:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x4, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x6, _end_script
    wait 0x1E
    gotosubscript 75
    goto _end_script


_isAlreadyPoisoned:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x6, _end_script
    wait 0x1E
    printmessage 76, TAG_NICK, BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0} is already\npoisoned.
    goto _cleanUpAndEnd


_doesNotEffectType:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x4, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x6, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _end_script
    wait 0x1E
    printmessage 27, TAG_NICK, BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN", "NaN" // It doesn’t affect\n{STRVAR_1 1, 0, 0}...
    goto _cleanUpAndEnd


_protectedBySafeguard:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x4, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x6, _end_script
    wait 0x1E
    printmessage 200, TAG_NICK, BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0} is protected\nby Safeguard!


_cleanUpAndEnd:
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
_end_script:
    endscript


_printAttackIntoNoEffectFlowerVeil:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x4, _skipAttackMessageFlowerVeil
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x6, _skipAttackMessageFlowerVeil
    printattackmessage
    waitmessage
    wait 0x1E
_skipAttackMessageFlowerVeil:
    printmessage 1388, TAG_NICK_ABILITY, BATTLER_ALLY | BATTLER_ADDL_EFFECT, BATTLER_ALLY | BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nprevents poisoning!
    goto _cleanUpAndEnd

MistyTerrainFail:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_INDIRECT, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_ABILITY, _end_script
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, ADD_STATUS_DOKUBISI, _end_script
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
