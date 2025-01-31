.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} is fast asleep.
    PrintMessage 299, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_ASLEEP
    Wait 
    End 
