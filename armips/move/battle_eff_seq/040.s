.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_040", 0

a030_040:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x800
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x2F, VAR_DAMAGE
    changevar VAR_OP_MUL, VAR_DAMAGE, 0xFFFFFFFF
    damagediv 14, 2
    endscript

.close
