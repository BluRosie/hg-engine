.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage
    Wait
    //TODO: different animation
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_BURNED
    Wait 
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // When the flame touched the powder on the Pokémon, it exploded!
    PrintBufferedMessage
    Wait 
    WaitButtonABTime 30
    End
    