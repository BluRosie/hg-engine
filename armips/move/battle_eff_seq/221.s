.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_221", 0

a030_221:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x30, VAR_09
    changevar VAR_OP_DIV, VAR_09, 0x2
    ifmonstat2 IF_GREATER, BATTLER_DEFENDER, VAR_47, 0x9, _0054
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
    goto _0064
_0054:
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xA
_0064:
    critcalc
    damagecalc
    endscript

.close
