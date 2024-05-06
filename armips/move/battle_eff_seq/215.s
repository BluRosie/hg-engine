.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_215", 0

// Gravity

a030_215:
    if IF_MASK, VAR_FIELD_EFFECT, FIELD_STATUS_GRAVITY, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000076
    endscript
_0028:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
