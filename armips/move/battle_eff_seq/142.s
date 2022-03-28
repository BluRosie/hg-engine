.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_142", 0

a030_142:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000064
    endscript

.close
