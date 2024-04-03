.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_305", 0

// After You

a030_305:
    changevar VAR_OP_SET, VAR_ADD_STATUS1,  ADD_STATUS_AFTER_YOU | ADD_STATUS_DEFENDER
    endscript

.close