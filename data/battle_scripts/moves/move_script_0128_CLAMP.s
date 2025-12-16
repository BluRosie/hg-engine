.include "asm/include/battle_commands.inc"

.data

_Start:
    // {1} clamped {0}!
    BufferMessage 255, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
