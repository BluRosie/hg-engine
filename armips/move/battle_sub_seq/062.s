.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_062", 0

a001_062:
    gotosubscript 76
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, 0x35, 0x100000
    printmessage 0x114, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
