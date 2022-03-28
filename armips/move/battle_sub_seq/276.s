.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_276", 0

a001_276:
    shouldgetexp _0018
_0008:
    initexpget
    getexp
    getexploop _0008
_0018:
    endscript

.close
