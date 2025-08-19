.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_EAT_BERRY
    Wait 
    End
