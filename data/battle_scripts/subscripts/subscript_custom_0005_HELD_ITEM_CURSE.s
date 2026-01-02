.include "asm/include/battle_commands.inc"

.data

_Start:
    // TODO: Replace with Curse FX
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    WaitButtonABTime 15
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_CURSE
    // {0} was cursed by the {1}!
    PrintMessage 1630, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    End
