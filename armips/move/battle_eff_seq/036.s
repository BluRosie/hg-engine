.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_036", 0

a030_036:
    random 2, 3
    changevar VAR_OP_ADD, VAR_09, 0x80000000
    changevar2 VAR_OP_SET, VAR_ADD_STATUS2, VAR_09
    critcalc
    damagecalc
    endscript

.close
