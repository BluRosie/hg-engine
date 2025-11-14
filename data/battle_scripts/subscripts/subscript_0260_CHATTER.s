.include "asm/include/battle_commands.inc"

.data

_Start:
    CheckChatterActivation _End
    Call BATTLE_SUBSCRIPT_CONFUSE

_End:
    End 
