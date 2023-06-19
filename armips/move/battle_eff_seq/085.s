.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_085", 0

a030_085:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x2000
    endscript

.close
