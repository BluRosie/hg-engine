.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_285", 0

// flame charge battle effect, raises speed

a030_285:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x11 | ADD_STATUS_ATTACKER
    critcalc
    damagecalc
    endscript

.close