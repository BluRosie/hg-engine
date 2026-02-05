.include "asm/include/battle_commands.inc"

.data

_000:
    SetMoveConditionFlag MOVE_GLAIVE_RUSH, BATTLER_CATEGORY_ATTACKER
    CalcCrit 
    CalcDamage 
    End 
    
