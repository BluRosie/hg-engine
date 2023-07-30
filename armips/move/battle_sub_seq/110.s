.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// safeguard fade off

.create "build/move/battle_sub_seq/1_110", 0

a001_110:
    printmessage 203, TAG_NONE_DIR, BATTLER_WORK, "NaN", "NaN", "NaN", "NaN", "NaN" // Your team is no longer protected\nby Safeguard!
    waitmessage
    wait 0x1E
    endscript

.close
