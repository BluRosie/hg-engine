.include "asm/include/battle_commands.inc"

.data

// Called by Ice Spinner and Steel Roller.
_Start:
    CalcCrit 
    CalcDamage 
    End 
