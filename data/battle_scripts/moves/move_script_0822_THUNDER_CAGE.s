.include "asm/include/battle_commands.inc"

.data

_Start:
    // {0} trapped {1}!
    BufferMessage 1624, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_DEFENDER
    GoToEffectScript 
