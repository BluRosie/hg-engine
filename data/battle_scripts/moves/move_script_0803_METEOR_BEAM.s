.include "asm/include/battle_commands.inc"

.data

_000:
// charge messages are handled in their own individual subscripts now
    // {0} is overflowing with space power!
    // BufferMessage 1477, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript  
