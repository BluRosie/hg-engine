.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_284", 0

a030_284:
    changevar VAR_OP_SET, VAR_ADD_STATUS1,  ADD_STATUS_SOAK | ADD_STATUS_DEFENDER
    endscript

.close