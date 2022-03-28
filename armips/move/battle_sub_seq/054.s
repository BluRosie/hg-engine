.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_054", 0

a001_054:
    setmist _0020
    preparemessage 0x10F, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    gotosubscript 53
_0020:
    endscript

.close
