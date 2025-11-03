.include "asm/include/battle_commands.inc"

.data

// Called by Starf Berry.
_Start:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    WaitButtonABTime 15
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_STAT_BOOST
    Wait 
    // The {1} sharply raised {0}’s {2}!
    PrintMessage 759, TAG_NICKNAME_ITEM_STAT, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_SET, BSCRIPT_VAR_TEMP_DATA, 18
    UpdateVarFromVar OPCODE_ADD, BSCRIPT_VAR_TEMP_DATA, BSCRIPT_VAR_MESSAGE
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_TEMP, 2
    CompareMonDataToValue OPCODE_LTE, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_TEMP, 12, _Cleanup
    // If the stat stage would be raised above the maximum, clamp it down.
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_TEMP, 12

_Cleanup:
    Call BATTLE_SUBSCRIPT_PLUCK_CHECK
    End 
