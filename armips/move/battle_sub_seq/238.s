.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// gravity wearing off

.create "build/move/battle_sub_seq/1_238", 0

a001_238:
    printmessage 1004, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // Gravity returned to normal!
    waitmessage
    wait 0x1E
    endscript

.close
