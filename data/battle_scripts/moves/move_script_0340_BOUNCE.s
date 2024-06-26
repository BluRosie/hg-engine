.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} sprang up!
    BufferMessage 232, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
