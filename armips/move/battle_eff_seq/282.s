.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_282", 0

a030_282:
    //changevar VAR_OP_SET, VAR_WAS_MOVE_CRITICAL, 0x2
    critcalc
    damagecalc
    changevar VAR_OP_SET, VAR_ADD_STATUS1, ADD_STATUS_EFF_BOOST_STATS_EVASION_DOWN | ADD_STATUS_DEFENDER
    endscript
.close