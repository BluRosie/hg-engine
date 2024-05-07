.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// general sleep subscript

.create "build/move/battle_sub_seq/1_018", 0

a001_018:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x7, _0250
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x4, _00E0
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_INSOMNIA, _032C
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_VITAL_SPIRIT, _032C
    checkcloudnine _0080
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _0080
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _032C
_0080:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x7, _044C
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SOUNDPROOF, _00C0
    if IF_MASK, VAR_FIELD_EFFECT, FIELD_STATUS_UPROAR, _0494
_00C0:
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _03B8
    goto _0250
_00E0:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_INSOMNIA, _032C
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_VITAL_SPIRIT, _032C
    checkcloudnine _checkFlowerVeil
    if IF_NOTMASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _checkFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _032C

_checkFlowerVeil:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    moldbreakerabilitycheck 0x0, BATTLER_ALLY | BATTLER_ADDL_EFFECT, ABILITY_FLOWER_VEIL, _checkGrassTypeForFlowerVeil
    goto CheckIfGrounded
_checkGrassTypeForFlowerVeil:
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_GRASS, _handlePrintFlowerVeilMessage
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_GRASS, _handlePrintFlowerVeilMessage
CheckIfGrounded:
    ifgrounded BATTLER_ADDL_EFFECT, CheckElectricOrMistyTerrain
    goto _0138
CheckElectricOrMistyTerrain:
    ifterrainoverlayistype ELECTRIC_TERRAIN, ElectricOrMistyTerrainFail
    ifterrainoverlayistype MISTY_TERRAIN, ElectricOrMistyTerrainFail

_0138:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0160
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _03B8
_0160:
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _017C
    printattackmessage
    waitmessage
_017C:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _019C
    checksubstitute BATTLER_ADDL_EFFECT, _03B8
_019C:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x7, _044C
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SOUNDPROOF, _01DC
    if IF_MASK, VAR_FIELD_EFFECT, FIELD_STATUS_UPROAR, _0494
_01DC:
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _03B8
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _0250
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _03B8
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _0500
    if IF_NOTEQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _0250
    playanimation BATTLER_ATTACKER
    waitmessage
_0250:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x1
    waitmessage
    //random 3, 2 // 1-4 turns
    random 2, 2 // 1-3 turns of sleep to inflict.  prevents mon from waking up same turn to start at 2
    changemondatabyvar VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, VAR_CALCULATION_WORK
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _02AC
    printmessage 0x2F, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _02C4
_02AC:
    printmessage 0x32, 0x24, 0xFF, 0x15, 0x7, "NaN", "NaN", "NaN"
_02C4:
    waitmessage
    wait 0x1E
    setstatusicon BATTLER_ADDL_EFFECT, 0x1
    waitmessage
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_MOVE_STATE, 0x200400C0, _0308
    clearsomeflag BATTLER_ADDL_EFFECT
    goto _0328
_0308:
    clearsomeflag BATTLER_ADDL_EFFECT
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ACTIVE_BATTLER
    gotosubscript 287
_0328:
    endscript
_032C:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0548
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _0548
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x4, _0378
    printattackmessage
    waitmessage
    wait 0x1E
_0378:
    printmessage 0x149, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    goto _052C
    printmessage 0x2D7, 0x35, 0x7, 0x7, 0xFF, 0x15, "NaN", "NaN"
    goto _052C
_03B8:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0548
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _0548
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x4, _0548
    wait 0x1E
    getmoveparameter 0x7
    if IF_EQUAL, VAR_CALCULATION_WORK, 0x4, _043C
    if IF_EQUAL, VAR_CALCULATION_WORK, 0x8, _043C
    gotosubscript 75
    goto _0548
_043C:
    gotosubscript 176
    goto _0548
_044C:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0548
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _0548
    wait 0x1E
    printmessage 0x39, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _052C
_0494:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0548
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_2, 0x70, _04E0
    wait 0x1E
    printmessage 0x146, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _052C
_04E0:
    wait 0x1E
    printmessage 0x143, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _052C
_0500:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0548
    wait 0x1E
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_052C:
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
_0548:
    endscript

_handlePrintFlowerVeilMessage:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x2, _0548
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _0548
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x4, _skipFlowerVeilAttackMessage
    printattackmessage
    waitmessage
    wait 0x1E
_skipFlowerVeilAttackMessage:
    printmessage 1385, TAG_NICK_ABILITY, BATTLER_ADDL_EFFECT, BATTLER_ALLY | BATTLER_ADDL_EFFECT, "NaN", "NaN", "NaN", "NaN"
    goto _052C

ElectricOrMistyTerrainFail:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
