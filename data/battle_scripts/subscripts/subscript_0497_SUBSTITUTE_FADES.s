.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_SUBSTITUTE_OUT
    Wait 
    RestoreSprite BATTLER_CATEGORY_MSG_TEMP
    Wait 
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_SUB_IN
    Wait 
    // {0}’s substitute faded!
    PrintMessage 357, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
