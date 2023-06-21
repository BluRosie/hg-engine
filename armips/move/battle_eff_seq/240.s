.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_240", 0

a030_240:
    if IF_MASK, VAR_SIDE_EFFECT_PLAYER, 0x7000, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000007D
    endscript
_0028:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
