.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_047", 0

a001_047:
    if IF_NOTEQUAL, VAR_05, 0x6, _0060
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_IMMUNITY, _03E8
    checkcloudnine _01E8
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _01E8 ;if not sun
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _03E8
    goto _01E8
_0060:
    if IF_NOTEQUAL, VAR_05, 0x5, _017C
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_IMMUNITY, _03E4
    checkcloudnine _00B8
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _00B8
    abilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _03E4
_00B8:
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x8, _03E4
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x80, _03E4
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_POISON, _03E4
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_POISON, _03E4
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_STEEL, _03E4
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_STEEL, _03E4
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _03E4
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _03E4
    goto _0300
_017C:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_IMMUNITY, _03E8
    checkcloudnine _01C0
    if IF_NOTMASK, VAR_FIELD_EFFECT, 0x30, _01C0
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_LEAF_GUARD, _03E8
_01C0:
    if IF_NOTEQUAL, VAR_05, 0x2, _01E8
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_SHIELD_DUST, _0450
_01E8:
    if IF_NOTEQUAL, VAR_05, 0x1, _0204
    printattackmessage
    waitmessage
_0204:
    checksubstitute BATTLER_ADDL_EFFECT, _0450
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x8, _04A4
    ifmonstat IF_MASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x80, _04A4
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_POISON, _04EC
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_POISON, _04EC
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_1, TYPE_STEEL, _04EC
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_TYPE_2, TYPE_STEEL, _04EC
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_1, 0x0, _0450
    if IF_MASK, VAR_10, 0x10001, _0450
    if IF_MASK, VAR_SIDE_EFFECT_ACTIVE_BATTLER, 0x8, _safeguard
    if IF_NOTEQUAL, VAR_05, 0x1, _0300
    playanimation BATTLER_ATTACKER
    waitmessage
_0300:
    if IF_NOTEQUAL, VAR_05, 0x5, _032C
    setstatus2effect BATTLER_ADDL_EFFECT, 0xA
    waitmessage
    wait 0xF
_032C:
    setstatus2effect BATTLER_ADDL_EFFECT, 0x2
    waitmessage
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x34, 0x80
    if IF_EQUAL, VAR_05, 0x5, _037C
    printmessage 0x4F, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0390
_037C:
    printmessage 0x490, 0xF, 0x7, 0xFF, "NaN", "NaN", "NaN", "NaN"
_0390:
    waitmessage
    setstatusicon BATTLER_ADDL_EFFECT, 0x2
    wait 0x1E
    if IF_MASK, VAR_06, 0x80, _03D4
    changevar VAR_OP_SETMASK, VAR_06, 0x80
    goto _03E4
_03D4:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x80
_03E4:
    endscript
_03E8:
    if IF_EQUAL, VAR_05, 0x2, _0590
    if IF_EQUAL, VAR_05, 0x4, _042C
    if IF_EQUAL, VAR_05, 0x6, _042C
    printattackmessage
    waitmessage
_042C:
    wait 0x1E
    printmessage 0x28A, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    goto _0574
_0450:
    if IF_EQUAL, VAR_05, 0x2, _0590
    if IF_EQUAL, VAR_05, 0x4, _0590
    if IF_EQUAL, VAR_05, 0x6, _0590
    wait 0x1E
    gotosubscript 75
    goto _0590
_04A4:
    if IF_EQUAL, VAR_05, 0x2, _0590
    if IF_EQUAL, VAR_05, 0x6, _0590
    wait 0x1E
    printmessage 0x4C, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0574
_04EC:
    if IF_EQUAL, VAR_05, 0x2, _0590
    if IF_EQUAL, VAR_05, 0x6, _0590
    wait 0x1E
    printmessage 0x1B, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0574
_safeguard:
    if IF_EQUAL, VAR_05, 0x2, _0590
    if IF_EQUAL, VAR_05, 0x6, _0590
    wait 0x1E
    printmessage 0xC8, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
_0574:
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
_0590:
    endscript

.close
