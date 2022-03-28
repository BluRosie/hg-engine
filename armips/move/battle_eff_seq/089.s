.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_089", 0

a030_089:
    changevar VAR_OP_SETMASK, VAR_06, 0x800
    counter
    endscript

.close
