.include "asm/include/battle_commands.inc"

.data

_Start:
    // TODO: Investigate binding message format.
    // {0} was wrapped by {1}!
    BufferMessage 248, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
