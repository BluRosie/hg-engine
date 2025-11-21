.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} boosted the accuracy of its next move using its {1}!
    PrintMessage 1157, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MICLE_BERRY_FLAG, 1
    Call BATTLE_SUBSCRIPT_CHEEK_POUCH
    Call BATTLE_SUBSCRIPT_PLUCK_CHECK
    End 
