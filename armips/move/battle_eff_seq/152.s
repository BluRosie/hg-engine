.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_152", 0

//a030_152:
//    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000005
//    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x4
//    critcalc
//    damagecalc
//    endscript

//.close


// Originally Thunder effect
// We add Hurricane here as some checks are specific to the effect ID for Thunder

a030_152:
    if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_HURRICANE, _Confusion
_Paralyze:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000005
    goto _Rest
_Confusion:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000007
_Rest:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x4
    gotosubscript 374
    endscript

.close
