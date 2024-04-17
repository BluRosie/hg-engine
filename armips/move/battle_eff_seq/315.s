.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_315", 0

// Bouncy Bubble

a030_315:
    // 100% of the damage dealt to the target is restored to the user
    changevar VAR_OP_SET, VAR_ADD_STATUS2, ADD_STATUS_DEFENDER | ADD_STATUS_EFF_DRAIN_FULL
    critcalc
    damagecalc
    endscript

.close
    

