.include "asm/include/battle_commands.inc"

.data

_Start:
    TryLightScreen _End
    Call BATTLE_SUBSCRIPT_ANIMATION_PREPARED_MESSAGE

_End:
    End 
