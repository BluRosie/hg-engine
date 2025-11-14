.include "asm/include/battle_commands.inc"

.data

// Called by Gyro Ball.
_Start:
    CalcGyroBallPower 
    CalcCrit 
    CalcDamage 
    End 
