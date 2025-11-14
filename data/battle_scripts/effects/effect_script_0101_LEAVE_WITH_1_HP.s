.include "asm/include/battle_commands.inc"

.data

// Called by False Swipe, for some reason.
_Start:
    CalcCrit 
    CalcDamage 
    End 
