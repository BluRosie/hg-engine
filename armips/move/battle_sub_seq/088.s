.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_088", 0

a001_088:
    healbell
    if IF_EQUAL, VAR_CURRENT_MOVE, 0x138, _002C
    printmessage 0x335, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0038
_002C:
    printmessage 0x250, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
_0038:
    waitmessage
    wait 0x1E
    if IF_EQUAL, VAR_CURRENT_MOVE, 0x138, _00C8
    if IF_NOTMASK, VAR_09, 0x1, _0090
    printmessage 0x2B1, 0x25, 0x1, 0x1, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0090:
    if IF_NOTMASK, VAR_09, 0x2, _00C8
    printmessage 0x2B1, 0x25, 0x10, 0x10, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_00C8:
    if IF_MASK, VAR_09, 0x4, _00E8
    setstatusicon BATTLER_ATTACKER, 0x0
_00E8:
    if IF_MASK, VAR_09, 0x8, _0108
    setstatusicon BATTLER_ATTACKER_PARTNER, 0x0
_0108:
    endscript

.close
