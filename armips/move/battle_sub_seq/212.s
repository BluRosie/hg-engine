.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_212", 0

a001_212:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x37D, 0x2E, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0xF0000
    gotosubscript 290
    endscript

.close
