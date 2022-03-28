.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_279", 0

a030_279:
    changevar VAR_OP_SET, VAR_ADD_STATUS2,  ADD_STATUS_POWER_SPLIT | 0x20000000
    endscript

.close