.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_204", 0

a001_204:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x386, 0x2C, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    gotosubscript 290
    endscript

.close
