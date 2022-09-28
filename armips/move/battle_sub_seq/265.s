.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_265", 0

a001_265:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x485, 0xF, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changemondatabyvalue VAR_OP_SET, BATTLER_xFF, 0x54, 0x1
    gotosubscript 290
    endscript

.close
