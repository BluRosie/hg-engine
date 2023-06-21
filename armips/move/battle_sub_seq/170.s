.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_170", 0

a001_170:
    gotosubscript 147
    if IF_NOTMASK, VAR_SERVER_STATUS1, 0x400000, _0024
    gotosubscript 25
_0024:
    endscript

.close
