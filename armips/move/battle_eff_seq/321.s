.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// dragon tail

.create "build/move/battle_eff_seq/0_321", 0

a030_320:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000055
    critcalc
    damagecalc
    endscript

.close
