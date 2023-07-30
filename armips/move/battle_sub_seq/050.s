.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// move effect fading

.create "build/move/battle_sub_seq/1_050", 0

a001_050:
    printmessagepassbattler BATTLER_WORK, 288, TAG_MOVE, BATTLER_WORK, "NaN", "NaN", "NaN", "NaN", "NaN" // Your team’s {STRVAR_1 6, 0, 0}\nwore off!
    waitmessage
    wait 0x1E
    endscript

.close
