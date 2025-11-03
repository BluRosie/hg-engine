.include "asm/include/battle_commands.inc"

.data

// Called by Thunder Fang.
_Start:
    CheckEffectActivation _CheckFlinch
    Call BATTLE_SUBSCRIPT_PARALYZE

_CheckFlinch:
    CheckEffectActivation _End
    Call BATTLE_SUBSCRIPT_FLINCH_MON

_End:
    End 
