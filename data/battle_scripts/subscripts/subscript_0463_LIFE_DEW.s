#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    CompareMonDataToVar OPCODE_EQU, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_HP, BMON_DATA_MAXHP, _end
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_MAXHP, BSCRIPT_VAR_HP_CALC
    DivideVarByValueRoundUp BSCRIPT_VAR_HP_CALC, 4
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} had its HP restored.
    PrintMessage 1396, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30

_end:
    End
