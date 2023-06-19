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
    changevar VAR_OP_LSH, VAR_CALCULATION_WORK, 0xA
    changemondatabyvar VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, VAR_CALCULATION_WORK
    changevar2 VAR_OP_SET, VAR_MOVE_BACKUP, VAR_CURRENT_MOVE
    endscript

.close
