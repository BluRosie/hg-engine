.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} was trapped in the vortex!
    BufferMessage 242, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoToEffectScript 
