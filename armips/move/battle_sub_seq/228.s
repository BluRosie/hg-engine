.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_228", 0

a001_228:
    printmessage2 0x356, 0x1B, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    throwpokeball BATTLER_PLAYER, 0x2
    waitmessage
    setstatus2effect BATTLER_OPPONENT, 0x1D
    waitmessage
    if IF_EQUAL, VAR_TEMP_WORK, 0x0, _006C
    printmessage2 0x357, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _007C
_006C:
    printmessage2 0x358, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_007C:
    waitmessage
    wait 0x1E
    endscript

.close
