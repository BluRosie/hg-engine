#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_STATUS, STATUS_NONE
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_STATUS, STATUS_BAD_POISON|STATUS_POISON, _poison
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_STATUS, STATUS_BURN, _burn
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_STATUS, STATUS_PARALYSIS, _paralysis
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_STATUS, STATUS_FREEZE, _freeze

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
    Wait 
    SetHealthbarStatus BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30

    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK
    End