.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} became trapped by swirling magma!
    BufferMessage 1247, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoToEffectScript 
