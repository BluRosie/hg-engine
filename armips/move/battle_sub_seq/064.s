.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_064", 0

a001_064:
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x400000
    changevar2 VAR_OP_SET, VAR_MOVE_BACKUP, VAR_CURRENT_MOVE
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x57, VAR_TURNS
    endscript

.close
