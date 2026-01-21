.include "asm/include/battle_commands.inc"

.data

// Called by False Swipe and Hold Back.
_Start:
    CalcCrit 
    CalcDamage 
    End 
