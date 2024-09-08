.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} foresaw an attack!
    BufferMessage 472, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
