.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_232", 0

a030_232:
    checksubstitute BATTLER_DEFENDER, _0020
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0xA0000086
    endscript
_0020:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
