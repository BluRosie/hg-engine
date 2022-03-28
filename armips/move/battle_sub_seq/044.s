.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_044", 0

a001_044:
    random 1, 2
    changevar VAR_OP_LSH, VAR_09, 0xA
    changevartomonvalue2 VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, VAR_09
    changevar2 VAR_OP_SET, VAR_MOVE_BACKUP, VAR_CURRENT_MOVE
    endscript

.close
