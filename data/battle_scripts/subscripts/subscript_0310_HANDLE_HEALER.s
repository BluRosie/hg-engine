#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_SIDE_EFFECT_MON
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 0, _sleep
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 1, _poison
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 2, _burn
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 3, _paralysis
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 4, _freeze
    End

_sleep:
    // {0} woke up!
    PrintMessage 302, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    GoTo _end

_poison:
    // {0} was cured of its poisoning!
    PrintMessage 1768, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    GoTo _end

_burn:
    // {0}’s burn was cured!
    PrintMessage 1771, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    GoTo _end

_paralysis:
    // {0} was cured of paralysis!
    PrintMessage 1774, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    GoTo _end

_freeze:
    // {0} thawed out!
    PrintMessage 114, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    GoTo _end

_end:
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_STATUS, STATUS_NONE
    Wait 
    SetHealthbarStatus BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30

    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK
    End