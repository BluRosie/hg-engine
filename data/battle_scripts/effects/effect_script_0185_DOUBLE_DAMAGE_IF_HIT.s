.include "asm/include/battle_commands.inc"

.data

// Called by Revenge and Avalanche.
_Start:
    CalcRevengePowerMul 
    CalcCrit 
    CalcDamage 
    End 
