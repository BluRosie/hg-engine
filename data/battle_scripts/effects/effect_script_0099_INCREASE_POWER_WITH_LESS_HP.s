.include "asm/include/battle_commands.inc"

.data

// Called by Flail and Reversal.
_Start:
    CalcFlailPower 
    CalcCrit 
    CalcDamage 
    End 
