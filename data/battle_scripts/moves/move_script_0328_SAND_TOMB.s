.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} was trapped by Sand Tomb!
    BufferMessage 245, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoToEffectScript 
