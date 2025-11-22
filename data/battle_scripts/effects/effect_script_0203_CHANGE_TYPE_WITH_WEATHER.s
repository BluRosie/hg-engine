.include "asm/include/battle_commands.inc"

.data

// Called by Weather Ball.
_Start:
    CalcWeatherBallParams 
    CalcCrit 
    CalcDamage 
    End 
