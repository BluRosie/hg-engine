.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} is in love with {1}!
    PrintMessage 165, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_INFATUATED
    Wait 
    End 
