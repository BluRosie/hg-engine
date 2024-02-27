.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_142", 0

a030_142:
    if IF_NOTEQUAL, VAR_CURRENT_MOVE, MOVE_SHED_TAIL, _BellyDrum 
    changevar VAR_OP_SET, VAR_ADD_STATUS1, ADD_STATUS_WORK | ADD_STATUS_SHED_TAIL
    endscript
_BellyDrum:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000064
    endscript

.close
