.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_005", 0

a001_005:
    if IF_MASK, VAR_BATTLE_TYPE, 0x80, _0300
    if IF_MASK, VAR_BATTLE_TYPE, 0x4, _02F4
    printmessage 0x24, 0x8, 0x3, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    cmd_DE 0xA, 0x14
    if IF_NOTEQUAL, VAR_MESSAGE_WORK, 0x0, _01A8
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x8, _0098
    cmd_DE 0xC, 0x14
    if IF_NOTEQUAL, VAR_MESSAGE_WORK, 0x0, _01A8
_0098:
    if IF_MASK, VAR_BATTLE_TYPE, 0x800, _019C
    if IF_MASK, VAR_BATTLE_TYPE, 0x80, _0134
    calcmoney
    if IF_EQUAL, VAR_MESSAGE_WORK, 0x0, _0134
    if IF_MASK, VAR_BATTLE_TYPE, 0x1, _0114
    printmessage 0x22, 0x1D, 0x3, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    goto _0134
_0114:
    printmessage 0x23, 0x1D, 0x3, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0134:
    printmessage 0x26, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    if IF_NOTEQUAL, VAR_BATTLE_TYPE, 0x4B, _0168
    preparehpgaugeslide BATTLER_PLAYER_RIGHT
_0168:
    cmd_DF 0x0
    waitmessage
    printmessage 0x25, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    cmd_DF 0x1
    waitmessage
    endscript
_019C:
    fadeout
    waitmessage
    endscript
_01A8:
    ifmonstat IF_EQUAL, BATTLER_ENEMY_LEFT, MON_DATA_HP, 0x0, _01C8
    returnpokemon BATTLER_ENEMY_LEFT
_01C8:
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x2, _01FC
    ifmonstat IF_EQUAL, BATTLER_ENEMY_RIGHT, MON_DATA_HP, 0x0, _01FC
    returnpokemon BATTLER_ENEMY_RIGHT
_01FC:
    waitmessage
    preparehpgaugeslide BATTLER_OPPONENT
    waitmessage
    cmd_DE 0xA, 0x14
    if IF_EQUAL, VAR_MESSAGE_WORK, 0x0, _0254
    trainerslidein BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    trainermessage BATTLER_ENEMY_LEFT, 0x14
    waitmessage
    wait 0x1E
_0254:
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x8, _0098
    cmd_DE 0xC, 0x14
    if IF_EQUAL, VAR_MESSAGE_WORK, 0x0, _0098
    cmd_DE 0xA, 0x14
    if IF_NOTEQUAL, VAR_MESSAGE_WORK, 0x0, _02DC
_02A8:
    trainerslidein BATTLER_ENEMY_RIGHT, 0x1
    waitmessage
    trainermessage BATTLER_ENEMY_RIGHT, 0x14
    waitmessage
    wait 0x3C
    goto _0098
    endscript
_02DC:
    preparetrainerslide BATTLER_ENEMY_LEFT
    waitmessage
    goto _02A8
    endscript
_02F4:
    gotosubscript 283
    endscript
_0300:
    ifmonstat IF_EQUAL, BATTLER_ENEMY_LEFT, MON_DATA_HP, 0x0, _0320
    returnpokemon BATTLER_ENEMY_LEFT
_0320:
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x2, _0354
    ifmonstat IF_EQUAL, BATTLER_ENEMY_RIGHT, MON_DATA_HP, 0x0, _0354
    returnpokemon BATTLER_ENEMY_RIGHT
_0354:
    waitmessage
    preparehpgaugeslide BATTLER_OPPONENT
    waitmessage
    trainerslidein BATTLER_ENEMY_LEFT, 0x1
    waitmessage
    trainermessage BATTLER_ENEMY_LEFT, 0x64
    waitmessage
    wait 0x1E
    if IF_NOTMASK, VAR_BATTLE_TYPE, 0x8, _03DC
    preparetrainerslide BATTLER_ENEMY_LEFT
    waitmessage
    trainerslidein BATTLER_ENEMY_RIGHT, 0x1
    waitmessage
    trainermessage BATTLER_ENEMY_RIGHT, 0x64
    waitmessage
    wait 0x3C
    goto _03E4
_03DC:
    wait 0x1E
_03E4:
    setbattleresult
    fadeout
    waitmessage
    endscript

.close
