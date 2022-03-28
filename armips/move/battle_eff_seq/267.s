.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_267", 0

a030_267:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0xA000008E
    critcalc
    damagecalc
    endscript

.close
