.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_077", 0

a001_077:
    checksubstitute BATTLER_DEFENDER, _0130
    gotosubscript 76
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2F, VAR_CALCULATION_WORK
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x2F, VAR_HP_TEMP
    changevar2 VAR_OP_ADD, VAR_CALCULATION_WORK, VAR_HP_TEMP
    changevar VAR_OP_DIV, VAR_CALCULATION_WORK, 0x2
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2F, VAR_HP_TEMP
    changevar2 VAR_OP_SUB, VAR_HP_TEMP, VAR_CALCULATION_WORK
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    gotosubscript 2
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x2F, VAR_HP_TEMP
    changevar2 VAR_OP_SUB, VAR_HP_TEMP, VAR_CALCULATION_WORK
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    gotosubscript 2
    printmessage 0x334, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0130:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
