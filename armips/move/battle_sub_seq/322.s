.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_322", 0

// handle moody ability

a001_322:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x4001
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x80

    if IF_EQUAL, VAR_CALCULATION_WORK, 8, lower_stat
    changevar2 VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, VAR_CALCULATION_WORK // sp->calc_work
    changevar VAR_OP_ADD, VAR_ADD_EFFECT_ATTRIBUTE, 0x27
    gotosubscript 12

lower_stat:
    if IF_EQUAL, VAR_ABILITY_TEMP2, 8, skip_lower
    changevar2 VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, VAR_ABILITY_TEMP2 // sp->tokusei_work
    changevar VAR_OP_ADD, VAR_ADD_EFFECT_ATTRIBUTE, ATTACK_DOWN
    gotosubscript 12

skip_lower:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x2
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x80
    endscript






.close
