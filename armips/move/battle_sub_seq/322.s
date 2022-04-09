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
    changevar VAR_OP_SETMASK, VAR_06, 0x4001
    changevar VAR_OP_SETMASK, VAR_60, 0x80

    if IF_EQUAL, VAR_09, 8, lower_stat
    changevar2 VAR_OP_SET, VAR_34, VAR_09 // sp->calc_work
    changevar VAR_OP_ADD, VAR_34, 0x27
    gotosubscript 12

lower_stat:
    if IF_EQUAL, VAR_ABILITY_TEMP2, 8, skip_lower
    changevar2 VAR_OP_SET, VAR_34, VAR_ABILITY_TEMP2 // sp->tokusei_work
    changevar VAR_OP_ADD, VAR_34, ATTACK_DOWN
    gotosubscript 12

skip_lower:
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript






.close
