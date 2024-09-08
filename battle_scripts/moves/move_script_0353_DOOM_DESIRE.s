.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} chose {1} as its destiny!
    BufferMessage 478, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
