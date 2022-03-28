.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_041", 0

a001_041:
    trainerslidein BATTLER_OPPONENT, 0x1
    waitmessage
    trainermessage2 BATTLER_OPPONENT
    waitmessage
    wait 0x3C
    preparetrainerslide BATTLER_OPPONENT
    waitmessage
    endscript

.close
