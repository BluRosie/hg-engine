.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_260", 0

a030_260:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000004
    critcalc
    damagecalc
    endscript

.close
