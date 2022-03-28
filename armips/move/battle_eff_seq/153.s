.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_153", 0

a030_153:
    if IF_MASK, VAR_BATTLE_TYPE, 0x1, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000065
    endscript
_0028:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
