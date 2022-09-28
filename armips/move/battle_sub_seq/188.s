.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_188", 0

a001_188:
    printmessage 0x281, 0x28, 0x2, 0x2, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x1B, VAR_22
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x1C, VAR_22
    endscript

.close
