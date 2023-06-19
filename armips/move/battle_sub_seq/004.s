.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_004", 0

a001_004:
    trynaturalcure BATTLER_PLAYER_LEFT, _0020
    changemondatabyvalue VAR_OP_SET, BATTLER_PLAYER_LEFT, 0x34, 0x0
_0020:
    trynaturalcure BATTLER_PLAYER_RIGHT, _0040
    changemondatabyvalue VAR_OP_SET, BATTLER_PLAYER_RIGHT, 0x34, 0x0
_0040:
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x1, _0250
    if IF_EQUAL, VAR_BATTLE_TYPE, 0x8F, _0154
    if IF_MASK, VAR_BATTLE_TYPE, 0x4, _0298
    if IF_MASK, VAR_BATTLE_TYPE, 0x8, _0160
    if IF_MASK, VAR_BATTLE_TYPE, 0x10, _0160
    printmessage 0x347, 0x1E, 0xA, 0xA, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0xF
    trainerslidein BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    if IF_MASK, VAR_BATTLE_TYPE, 0x2, _0108
    trainermessage BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    wait 0x3C
    goto _01E8
_0108:
    trainermessage BATTLER_ENEMY_LEFT, 0x4
    waitmessage
    wait 0x3C
    if IF_MASK, VAR_BATTLE_TYPE, 0x80, _01E8
    trainermessage BATTLER_ENEMY_LEFT, 0x8
    waitmessage
    wait 0x3C
    goto _01E8
_0154:
    playsong BATTLER_PLAYER_LEFT, 1128
_0160:
    printmessage 0x3B9, 0x3B, 0xA, 0xA, 0xC, 0xC, "NaN", "NaN"
    waitmessage
    wait 0xF
    trainerslidein BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    trainermessage BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    wait 0x1E
    preparetrainerslide BATTLER_ENEMY_LEFT
    waitmessage
    trainerslidein BATTLER_ENEMY_RIGHT, 0x1
    waitmessage
    trainermessage BATTLER_ENEMY_RIGHT, 0x1
    waitmessage
    wait 0x3C
    setbattleresult
_01E8:
    if IF_MASK, VAR_BATTLE_TYPE, 0x80, _028C
    calcmoney
    if IF_EQUAL, VAR_TEMP_WORK, 0x1, _0230
    printmessage 0x21, 0x1D, 0x3, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0244
_0230:
    printmessage 0x4FB, 0x1D, 0x3, 0xFF, "NaN", "NaN", "NaN", "NaN"
_0244:
    waitmessage
    wait 0x3C
_0250:
    pickup
    dopayday
    if IF_EQUAL, VAR_MESSAGE_WORK, 0x0, _028C
    printmessage 0x155, 0x1D, 0x3, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x3C
_028C:
    fadeout
    waitmessage
    endscript
_0298:
    gotosubscript 283
    endscript

.close
