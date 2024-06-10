.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_316", 0

// Zippy Zap

a030_316:
    // Raise evasion by one stage
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x40000015
    critcalc
    damagecalc
    endscript

.close
    

