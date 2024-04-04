.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_151", 0

a030_145:
    changevar VAR_OP_SETMASK, VAR_ADD_STATUS2, 0x2000001D
    critcalc
    damagecalc
    endscript

.close
