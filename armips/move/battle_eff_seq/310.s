.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_310", 0

// Sappy Seed

a030_310:
    // Plant a seed, seems like VAR_ADD_STATUS2 lets the effect go after damage
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x90000048
    critcalc
    damagecalc
    endscript

.close
    

