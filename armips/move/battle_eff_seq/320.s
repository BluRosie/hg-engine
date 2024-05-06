.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Psychic Noise

.create "build/move/battle_eff_seq/0_320", 0

a030_320:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0xA0000084
    critcalc
    damagecalc
    endscript

.close
