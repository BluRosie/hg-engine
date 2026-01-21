.include "asm/include/battle_commands.inc"

.data

// Called by Circle Throw and Dragon Tail.
_Start:
    CalcCrit 
    CalcDamage 
    End 
