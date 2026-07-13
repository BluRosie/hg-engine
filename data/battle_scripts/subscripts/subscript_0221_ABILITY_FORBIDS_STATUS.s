.include "asm/include/battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_MSG_TEMP

    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 0, _sleep
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 1, _poison
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 2, _burn
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 3, _paralysis
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 4, _freeze
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 5, _confusion
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 6, _attract
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 7, _taunt

_sleep:
    // {0} woke up!
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_NIGHTMARE
    PrintMessage 302, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _updateHealthbar

_poison:
    // {0} was cured of its poisoning!
    PrintMessage 1768, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _updateHealthbar

_burn:
    // {0}’s burn was cured!
    PrintMessage 1771, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _updateHealthbar

_paralysis:
    // {0} was cured of paralysis!
    PrintMessage 1774, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _updateHealthbar

_freeze:
    // {0} thawed out!
    PrintMessage 114, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _updateHealthbar

_confusion:
    // {0} snapped out of its confusion!
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_CONFUSION
    PrintMessage 153, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _end

_attract:
    // {0} got over its infatuation.
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_ATTRACT
    PrintMessage 1777, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _end

_taunt:
     UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_TAUNTED_TURNS, 0
    // {0} shook off the taunt!
    PrintMessage 1707, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _end

_updateHealthbar:
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_NONE
    SetHealthbarStatus BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_NONE

_end:
    Wait 
    WaitButtonABTime 30
    End 