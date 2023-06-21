.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_168", 0

a001_168:
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _031C
    gotosubscript 76
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x13, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x13, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x13, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x13, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x14, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x14, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x14, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x14, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x16, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x16, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x16, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x16, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x17, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x17, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x17, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x17, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x15, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x15, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x15, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x15, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x18, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x18, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x18, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x18, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x19, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x19, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x19, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_DEFENDER, 0x19, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x35, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x35, VAR_TEMP_WORK
    if IF_MASK, VAR_CALCULATION_WORK, 0x100000, _02A4
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x35, 0x100000
    goto _02B8
_02A4:
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x35, 0x100000
_02B8:
    if IF_MASK, VAR_TEMP_WORK, 0x100000, _02E8
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x35, 0x100000
    goto _02FC
_02E8:
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x100000
_02FC:
    printmessage 0x400, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_031C:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
