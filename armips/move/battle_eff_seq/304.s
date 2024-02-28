.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_304", 0

// Shed Tail

a030_304:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, ADD_STATUS_WORK | ADD_STATUS_SHED_TAIL
    endscript

.close