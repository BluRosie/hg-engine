.include "asm/include/battle_commands.inc"

.data

_Start:
    // {0} became trapped in the fiery vortex!
    BufferMessage 1723, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoToEffectScript 
