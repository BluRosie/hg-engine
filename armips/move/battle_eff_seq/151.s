.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_151", 0

a030_151:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000001D
_0024:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x1000
    critcalc
    damagecalc
    endscript

.close
