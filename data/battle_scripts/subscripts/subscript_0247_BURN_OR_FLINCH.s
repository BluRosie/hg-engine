.include "asm/include/battle_commands.inc"

.data

// Called by Fire Fang.
_Start:
    CheckEffectActivation _CheckFlinch
    Call BATTLE_SUBSCRIPT_BURN

_CheckFlinch:
    CheckEffectActivation _End
    Call BATTLE_SUBSCRIPT_FLINCH_MON

_End:
    End 
