.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_011", 0

a001_011:
    printmessage 0x359, 0x1C, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    // make sure few things are calculated
    shouldgetexp _0018
_0008:
    initexpget
    getexp
    getexploop _0008
_0018:
    initcapture 0x0
    capturemon
    changevar2 VAR_OP_GET_RESULT, VAR_BATTLE_RESULT, VAR_TEMP_WORK
    changevar VAR_OP_AND, VAR_TEMP_WORK, 0xFF
    if IF_NOTEQUAL, VAR_TEMP_WORK, 0x4, _0078
    trynaturalcure BATTLER_PLAYER, _0078
    changemondatabyvalue VAR_OP_SET, BATTLER_PLAYER, 0x34, 0x0
_0078:
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x1000, _00F4
    if IF_MASK, VAR_BATTLE_RESULT, 0x4, _00F4
    if IF_NOTEQUAL, VAR_SAFARI_BALL_COUNT, 0x0, _00F4
    playse BATTLER_ATTACKER, 0x5F1
    printmessage 0x4F5, 0x5, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
_00F4:
    endscript

.close
