.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_202", 0

a001_202:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x371, 0xF, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x1E
    changemondatabyvalue VAR_OP_SET, BATTLER_xFF, 0x34, 0x0
    gotosubscript 290
    endscript

.close
