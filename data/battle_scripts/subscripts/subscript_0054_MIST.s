.include "asm/include/battle_commands.inc"

.data

_Start:
    TryMist _End
    // Your team became shrouded in mist!
    BufferMessage 271, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER
    Call BATTLE_SUBSCRIPT_ANIMATION_PREPARED_MESSAGE

_End:
    End 
