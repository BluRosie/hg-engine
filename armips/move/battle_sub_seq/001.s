.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_001", 0

a001_001:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x1, _001C
    gotosubscript 76
_001C:
    endscript

.close
