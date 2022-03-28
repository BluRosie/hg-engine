.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_086", 0

a030_086:
    changevar VAR_OP_SETMASK, VAR_ADD_STATUS1, 0xA0000049
    endscript

.close
