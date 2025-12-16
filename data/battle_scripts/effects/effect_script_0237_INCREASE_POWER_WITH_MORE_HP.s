.include "asm/include/battle_commands.inc"

.data

// Called by Wring Out and Crush Grip.
_Start:
    CalcWringOutPower 
    CalcCrit 
    CalcDamage 
    End 
