.include "asm/include/battle_commands.inc"

.data

_000:
    IncrementGameStat BATTLER_CATEGORY_ATTACKER, BATTLER_TYPE_SOLO_PLAYER, 80
    GoToEffectScript 
