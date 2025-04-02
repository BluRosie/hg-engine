.include "asm/include/battle_commands.inc"

.data

// matcha gotcha -- handle burn part first
Start:
    CheckEffectActivation NoBurn
    Call BATTLE_SUBSCRIPT_BURN

// with no burn, we just restore our health by half of what we dealt.  attacker will always be proper so we're good there
NoBurn:
    Call BATTLE_SUBSCRIPT_DRAIN_HALF_DAMAGE_DEALT
    End
