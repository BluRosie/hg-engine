.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_135", 0

a001_135:
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _0170
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x19, _0170
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _0170
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x79, _0170
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x0, _0170
    gotosubscript 76
    changevar2 VAR_OP_SET, VAR_TEMP_WORK, VAR_TURNS
    changevar VAR_OP_AND, VAR_TEMP_WORK, 0x1
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x48, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x1A, VAR_TEMP_WORK
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x1A, VAR_TEMP_WORK
    if IF_NOTEQUAL, VAR_TEMP_WORK, 0x70, _0148
    changevar2 VAR_OP_SET, VAR_TEMP_WORK, VAR_TURNS
    changevar VAR_OP_ADD, VAR_TEMP_WORK, 0x1
    changemondatabyvar VAR_OP_SET, BATTLER_ATTACKER, 0x59, VAR_TEMP_WORK
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x60, 0x0
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x61, 0x0
_0148:
    printmessage 0x20B, 0x20, 0x1, 0x2, 0x2, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0170:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
