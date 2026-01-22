.include "asm/include/battle_commands.inc"

.data

_Start:
    // {0} trapped {1}!
    BufferMessage 1623, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
