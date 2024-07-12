.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} was squeezed by {1}!
    BufferMessage 235, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
