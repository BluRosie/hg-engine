.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} became cloaked in freezing air!
    BufferMessage 1499, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
