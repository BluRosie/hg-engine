.include "asm/include/battle_commands.inc"

.data

// Called by Rollout and Ice Ball.
_Start:
    CalcRolloutPower 
    CalcCrit 
    CalcDamage 
    End 
