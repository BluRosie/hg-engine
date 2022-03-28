.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_278", 0

a030_278:
    changevar VAR_OP_SET, VAR_ADD_STATUS2,  ADD_STATUS_GUARD_SPLIT | 0x20000000
    endscript

.close