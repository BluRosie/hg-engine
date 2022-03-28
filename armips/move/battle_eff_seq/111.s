.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_111", 0

a030_111:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x50000052
    endscript

.close
