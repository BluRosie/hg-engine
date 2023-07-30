.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// tailwind peters out

.create "build/move/battle_sub_seq/1_233", 0

a001_233:
    printmessage 1232, TAG_NONE_DIR, BATTLER_WORK, "NaN", "NaN", "NaN", "NaN", "NaN" // Your team’s tailwind petered out!
    waitmessage
    wait 0x1E
    endscript

.close
