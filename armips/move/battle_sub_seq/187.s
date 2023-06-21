.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_187", 0

a001_187:
    wait 0xF
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER2, 0x1A, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_xFF, 0x1A, VAR_CALCULATION_WORK
    printmessage 0x2A7, 0x20, 0xFF, 0xF, 0xF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
