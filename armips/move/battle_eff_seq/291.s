.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_291", 0

a030_291:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, ADD_STATUS_V_CREATE | ADD_STATUS_ATTACKER | 0x20000000
    critcalc
    damagecalc
    endscript

.close