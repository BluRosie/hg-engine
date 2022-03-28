.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_195", 0

a001_195:
    printmessage 0x455, 0x25, 0xFF, 0x15, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
