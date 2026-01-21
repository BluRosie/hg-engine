.include "asm/include/battle_commands.inc"

.data

// Called by Bolt Beak and Fishious Rend.
_Start:
    CalcCrit 
    CalcDamage 
    End 
