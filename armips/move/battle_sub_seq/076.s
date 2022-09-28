.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_076", 0

a001_076:
    printattackmessage
    waitmessage
    playanimation BATTLER_ATTACKER
    waitmessage
    endscript

.close
