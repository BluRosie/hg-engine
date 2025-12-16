.include "asm/include/battle_commands.inc"

.data

// Called by Heavy Slam and Heat Crash.
_Start:
    CalcHeavySlamPower 
    CalcCrit 
    CalcDamage 
    End 
