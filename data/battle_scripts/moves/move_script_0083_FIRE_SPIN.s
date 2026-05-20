.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} was trapped in the fiery vortex!
    BufferMessage 1730, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoToEffectScript 
