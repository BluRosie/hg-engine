.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_311", 0

// Glitzy Glow

a030_311:
    // Set Light Screen
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000043
    critcalc
    damagecalc
    endscript

.close
    

