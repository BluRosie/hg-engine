.include "asm/include/battle_commands.inc"

.data

_Start:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait
    // The {0} was used up...
    PrintMessage 1601, TAG_ITEM, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    // {0} used its {2} to activate {1}!
    PrintMessage 1602, TAG_NICKNAME_ABILITY_ITEM, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    RemoveItem BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    // {0}'s {1} was heightened!
    PrintMessage 1611, TAG_NICKNAME_STAT, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    End
