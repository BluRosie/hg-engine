.include "asm/include/battle_commands.inc"

.data

// Called by Absorb, Mega Drain, Giga Drain, Bitter Blade, Drain Punch, Horn Leech, Leech Life and Parabolic Charge.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_DRAIN_HALF_DAMAGE_DEALT
    CalcCrit 
    CalcDamage 
    End 
