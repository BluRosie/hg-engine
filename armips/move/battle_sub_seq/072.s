.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_072", 0

a001_072:
    printmessage 369, TAG_NICK, BATTLER_WORK, "NaN", "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0} is no\nlonger disabled!
    waitmessage
    wait 0x1E
    endscript

.close
