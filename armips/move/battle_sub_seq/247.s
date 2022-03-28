.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_247", 0

a001_247:
    checkeffectactivation _0010
    gotosubscript 25
_0010:
    checkeffectactivation _0020
    gotosubscript 14
_0020:
    endscript

.close
