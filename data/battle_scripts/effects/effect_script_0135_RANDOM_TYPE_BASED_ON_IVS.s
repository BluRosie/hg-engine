.include "asm/include/battle_commands.inc"

.data

// Called by Hidden Power.
_Start:
    CalcHiddenPowerParams 
    CalcCrit 
    CalcDamage 
    End 
