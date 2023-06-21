.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_162", 0

a030_162:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_STOCKPILE_COUNT, 0x0, _013C
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x45, VAR_HP_TEMP
    changevar VAR_OP_SUB, VAR_HP_TEMP, 0x3
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    changevar VAR_OP_SET, VAR_CALCULATION_WORK, 0x1
    changevar2 VAR_OP_LSH, VAR_CALCULATION_WORK, VAR_HP_TEMP
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    damagediv2 32, 9
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x45, 0x0
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x46, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_SUB_TO_ZERO, BATTLER_ATTACKER, 0x14, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x47, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_SUB_TO_ZERO, BATTLER_ATTACKER, 0x17, VAR_CALCULATION_WORK
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x46, 0x0
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x47, 0x0
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000068
    endscript
_013C:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x32F, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    endscript

.close
