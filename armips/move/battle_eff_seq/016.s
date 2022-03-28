.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_016", 0

a030_016:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x40000015
    endscript

.close
