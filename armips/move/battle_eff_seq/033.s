.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_033", 0

a030_033:
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x80, _isDigging
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x40, _isFlying
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80000006
    endscript

_isDigging:
    changevar VAR_OP_SETMASK, VAR_06, 0x8
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80000006
    endscript
_isFlying:
    changevar VAR_OP_SETMASK, VAR_06, 0x4
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80000006
    endscript

.close
