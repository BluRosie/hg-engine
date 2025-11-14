.include "asm/include/battle_commands.inc"

.data

// Called by Eruption, Water Spout and Dragon Energy.
_Start:
    CalcHPFalloffPower 
    CalcCrit 
    CalcDamage 
    End 
