.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_088", 0

a030_088:
    changevar VAR_OP_SETMASK, VAR_06, 0x800
    random 10, 5
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2B, VAR_DAMAGE
    changevar2 VAR_OP_MUL, VAR_DAMAGE, VAR_09
    changevar VAR_OP_DIV, VAR_DAMAGE, 0xA
    if IF_NOTEQUAL, VAR_DAMAGE, 0x0, _0074
    changevar VAR_OP_SET, VAR_DAMAGE, 0x1
_0074:
    changevar VAR_OP_MUL, VAR_DAMAGE, 0xFFFFFFFF
    endscript

.close
