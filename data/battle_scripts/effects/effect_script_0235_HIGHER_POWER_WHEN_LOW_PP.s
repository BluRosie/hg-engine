.include "asm/include/battle_commands.inc"

.data

// Called by Trump Card.
_Start:
    CalcTrumpCardPower 
    CalcCrit 
    CalcDamage 
    End 
