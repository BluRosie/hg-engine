.include "asm/include/battle_commands.inc"

.data

// Called by Matcha Gotcha.
_Start:
    CheckEffectActivation _DrainHealth
    Call BATTLE_SUBSCRIPT_BURN

_DrainHealth:
    Call BATTLE_SUBSCRIPT_DRAIN_HALF_DAMAGE_DEALT
    End
