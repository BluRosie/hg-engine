#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_DEFENDER
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_ABILITY, BSCRIPT_VAR_TEMP_DATA
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_ABILITY, BSCRIPT_VAR_TEMP_DATA
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP

    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_ABILITY, ABILITY_MUMMY, _handleMummy
// else assume lingering aroma
    // A lingering aroma clings to {0}!
    PrintMessage 1453, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    GoTo _postMessage

_handleMummy:
    // {0}’s ability became Mummy!
    PrintMessage 1306, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 

_postMessage:
    WaitButtonABTime 30
    End 
