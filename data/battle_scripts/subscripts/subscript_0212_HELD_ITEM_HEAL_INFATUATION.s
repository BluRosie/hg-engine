.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} cured its {2} status using its {1}!
    PrintMessage 893, TAG_NICKNAME_ITEM_STATUS, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_ATTRACT
    Call BATTLE_SUBSCRIPT_PLUCK_CHECK
    End 
