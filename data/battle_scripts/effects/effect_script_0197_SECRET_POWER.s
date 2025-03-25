.include "asm/include/battle_commands.inc"

.data

_000:
    GotoIfFirstHitOfParentalBond _005
    CalcCrit 
    CalcDamage 
    GetTerrainSecondaryEffect 
    End 

_005:
    CalcCrit 
    CalcDamage 
    End 
