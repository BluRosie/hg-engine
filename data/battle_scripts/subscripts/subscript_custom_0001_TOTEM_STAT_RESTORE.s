.include "asm/include/battle_commands.inc"

.data

_Start:
    PlayBattleAnimation BATTLER_CATEGORY_ENEMY, BATTLE_ANIMATION_STAT_BOOST
    Wait 
    Call BATTLE_SUBSCRIPT_SHOW_PREPARED_MESSAGE
    End