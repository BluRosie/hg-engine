.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} flew up high!
    BufferMessage 223, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
