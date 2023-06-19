.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_056", 0

a001_056:
    changevar2 VAR_OP_SET, VAR_MOVE_BACKUP, VAR_CURRENT_MOVE
    random 0, 3
    changevar VAR_OP_LSH, VAR_CALCULATION_WORK, 0x4
    changemondatabyvar VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, VAR_CALCULATION_WORK
    changevar2 VAR_OP_TO_BIT, VAR_CALCULATION_WORK, VAR_ATTACKER
    changevar VAR_OP_LSH, VAR_CALCULATION_WORK, 0x8
    changevar2 VAR_OP_SETMASK, VAR_FIELD_EFFECT, VAR_CALCULATION_WORK
    printmessage 0x134, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
