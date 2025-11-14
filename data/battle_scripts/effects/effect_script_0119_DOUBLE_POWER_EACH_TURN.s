.include "asm/include/battle_commands.inc"

.data

// Called by Fury Cutter.
_Start:
    CalcFuryCutterPower 
    CalcCrit 
    CalcDamage 
    End 
