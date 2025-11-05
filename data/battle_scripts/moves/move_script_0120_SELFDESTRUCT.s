.include "asm/include/battle_commands.inc"

.data

_Start:
    // If used by the player, increment the relevant game record.
    IncrementGameStat BATTLER_CATEGORY_ATTACKER, BATTLER_TYPE_SOLO_PLAYER, GAME_STAT_SELFDESTRUCTS
    GoToEffectScript 
