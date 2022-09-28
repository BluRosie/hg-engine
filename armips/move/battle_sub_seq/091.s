.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_091", 0

a001_091:
    if IF_MASK, VAR_10, 0x10000, _012C
    moldbreakerabilitycheck 0x0, BATTLER_DEFENDER, ABILITY_SUCTION_CUPS, _0140
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x400, _015C
    if IF_EQUAL, VAR_BATTLE_TYPE, 0x4A, _012C
    trywhirlwind _012C
    gotosubscript 76
    trynaturalcure BATTLER_DEFENDER, _0084
    changemondatabyvalue VAR_OP_SET, BATTLER_DEFENDER, 0x34, 0x0
_0084:
    deletepokemon BATTLER_DEFENDER
    waitmessage
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x1, _0110
    preparehpgaugeslide BATTLER_DEFENDER
    waitmessage
    switchindataupdate BATTLER_WHIRLWINDED
    waitmessage
    pokemonappear BATTLER_DEFENDER
    waitwithoutbuttonpress 0x48
    hpgaugeslidein BATTLER_DEFENDER
    waitmessage
    printmessage 0x25B, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar2 VAR_OP_SET, VAR_SWITCHED_BATTLER, VAR_DEFENDER
    gotosubscript 99
    endscript
_0110:
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
    endscript
_012C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript
_0140:
    preparemessage 0x293, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    goto _016C
_015C:
    preparemessage 0x21E, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_016C:
    printattackmessage
    waitmessage
    wait 0x1E
    printpreparedmessage
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
