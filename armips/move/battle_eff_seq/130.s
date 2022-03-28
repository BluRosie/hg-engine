.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_130", 0

a030_130:
    if IF_MASK, VAR_RULESET, 0x1, _0038
    changevar VAR_OP_SETMASK, VAR_06, 0x800
    changevar VAR_OP_SET, VAR_DAMAGE, 0xFFFFFFEC
    endscript
_0038:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
