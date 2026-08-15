#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP
    WaitButtonABTime 15
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_MSG_DEFENDER, BMON_DATA_ABILITY, BSCRIPT_VAR_CALC_TEMP
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_ABILITY, BSCRIPT_VAR_CALC_TEMP
    // It traced {1}’s {2}!
    PrintMessage 679, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_DEFENDER, BATTLER_CATEGORY_MSG_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
