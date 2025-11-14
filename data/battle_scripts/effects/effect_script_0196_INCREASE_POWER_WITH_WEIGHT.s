.include "asm/include/battle_commands.inc"

.data

// Called by Grass Knot and Low Kick.
_Start:
    CalcWeightBasedPower 
    CalcCrit 
    CalcDamage 
    End 
