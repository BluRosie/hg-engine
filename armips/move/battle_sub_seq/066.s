.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_066", 0

a001_066:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x800000
    endscript

.close
