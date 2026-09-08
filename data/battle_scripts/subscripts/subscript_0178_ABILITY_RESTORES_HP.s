#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    PrintAttackMessage
    Wait
    WaitButtonABTime 15
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP

    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_MAXHP, BSCRIPT_VAR_CALC_TEMP
    CompareMonDataToVar OPCODE_EQU, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_HP, BSCRIPT_VAR_CALC_TEMP, _033
    //this overwrites the target/defence_client
    //UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_TARGET
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK

    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} had its HP restored.
    PrintMessage 1396, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    End

_033:
     // It doesn’t affect {0}...
    PrintMessage 27, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    End
