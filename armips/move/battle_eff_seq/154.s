.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_154", 0

a030_154:
    changevar VAR_OP_SETMASK, VAR_06, 0x8000
    critcalc
    beatupdamagecalc
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000066
    changevar VAR_OP_SETMASK, VAR_06, 0x10000
    endscript

.close
