.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_290", 0

a001_290:
    if IF_MASK, VAR_ATTACKER_STATUS, 0x2, _001C
    removeitem BATTLER_xFF
_001C:
    changevar VAR_OP_CLEARMASK, VAR_ATTACKER_STATUS, 0x2
    endscript

.close
