.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 15

    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP

    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_FLASH_FIRE, 0, _023
    // The power of {0}’s Fire-type moves rose!
    PrintMessage 656, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_FLASH_FIRE, 1
    End 

_023:
    // It doesn’t affect {0}...
    PrintMessage 27, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 
