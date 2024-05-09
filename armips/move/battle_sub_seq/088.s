.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_088", 0

// subscript for heal bell and aromatherapy

healBellSubscript:
    healbell
    if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_AROMATHERAPY, _002C
    if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_SPARKLY_SWIRL, _002C
    // "A bell chimed!"
    printmessage 821, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0038
_002C:
    // "A soothing aroma wafted\nthrough the area!"
    printmessage 592, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
_0038:
    waitmessage
    wait 0x1E
SkipPrintMessage:
    if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_AROMATHERAPY, _00C8
    if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_SPARKLY_SWIRL, _00C8 // no Soundproof check?
    if IF_NOTMASK, VAR_CALCULATION_WORK, 0x1, _0090
    // "{STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nblocks {STRVAR_1 6, 2, 0}!"
    printmessage 689, TAG_NICK_ABILITY_MOVE, BATTLER_ATTACKER, BATTLER_ATTACKER, BATTLER_xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0090:
    if IF_NOTMASK, VAR_CALCULATION_WORK, 0x2, _00C8
    // "{STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\nblocks {STRVAR_1 6, 2, 0}!"
    printmessage 689, TAG_NICK_ABILITY_MOVE, BATTLER_ATTACKER_PARTNER, BATTLER_ATTACKER_PARTNER, BATTLER_xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_00C8:
    if IF_MASK, VAR_CALCULATION_WORK, 0x4, _00E8
    setstatusicon BATTLER_ATTACKER, 0x0
_00E8:
    if IF_MASK, VAR_CALCULATION_WORK, 0x8, _0108
    setstatusicon BATTLER_ATTACKER_PARTNER, 0x0
_0108:
    endscript

.close
