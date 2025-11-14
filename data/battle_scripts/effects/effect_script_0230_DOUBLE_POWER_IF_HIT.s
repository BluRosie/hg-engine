.include "asm/include/battle_commands.inc"

.data

// Called by Payback, Revenge and Avalanche.
_Start:
    CalcPaybackPower 
    CalcCrit 
    CalcDamage 
    End 
