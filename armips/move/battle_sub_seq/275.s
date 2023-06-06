.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_275", 0

// handle safari zone/pal park ball throw

a001_275:
    if IF_MASK, VAR_BATTLE_TYPE, 0x200, palPark
    checkifsafariencounterdone _00BC
    printmessage 0x359, 0x1C, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 3, 0, 0} used\none {STRVAR_1 8, 1, 0}!
    waitmessage
    throwpokeball BATTLER_PLAYER, 0x1
    goto _0068
palPark:
    printmessage2 0x4C9, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0}, come back!
    waitmessage
    throwpokeball BATTLER_PLAYER, 0x4
_0068:
    initcapture 0x1
    capturemon
    if IF_MASK, VAR_BATTLE_RESULT, 0x4, _00EC
    if IF_NOTEQUAL, VAR_SAFARI_BALL_COUNT, 0x0, _00EC
    playse BATTLER_ATTACKER, 0x5F1
    printmessage 0x352, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // Announcer: You’re out of\nSafari Balls! Game over!
    goto _00C8
_00BC:
    printmessage 0x36A, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // There is no room left in the PC!\r
_00C8:
    waitmessage
    wait 0x1E
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
_00EC:
    endscript

.close
