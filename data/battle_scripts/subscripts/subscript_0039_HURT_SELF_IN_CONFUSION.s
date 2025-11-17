.include "asm/include/battle_commands.inc"

.data

// TODO: Modernise confusion damage
_000:
    // {0} is confused!
    PrintMessage 150, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_CONFUSED
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    End 
