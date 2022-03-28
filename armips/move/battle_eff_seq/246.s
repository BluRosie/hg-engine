.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_246", 0

a030_246:
    trylastresort _0014
    critcalc
    damagecalc
    endscript
_0014:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
