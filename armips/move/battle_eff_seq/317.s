.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Diamond Storm

.create "build/move/battle_eff_seq/0_317", 0

a030_317:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, ADD_STATUS_ATTACKER | ADD_STATUS_EFF_BOOST_STATS_DEFENSE_UP_2
    critcalc
    damagecalc
    endscript

.close
