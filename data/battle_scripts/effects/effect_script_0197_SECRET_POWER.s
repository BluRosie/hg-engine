.include "asm/include/battle_commands.inc"

.data

_Start:
    GotoIfFirstHitOfParentalBond _CalcDamage
    CalcCrit 
    CalcDamage 
    GetTerrainSecondaryEffect 
    End 

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
