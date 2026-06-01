.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} has been afflicted with an infestation by {1}!
    BufferMessage 1733, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER
    GoToEffectScript 
