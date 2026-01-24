.include "asm/include/battle_commands.inc"

.data

_Start:
    // {0} got trapped by a snap trap!
    BufferMessage 1621, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoToEffectScript 
