.include "asm/include/battle_commands.inc"

.data

_Start:
    GoToIfFirstHitOfParentalBond _CalcDamage_NoRain
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_MAKE_IT_RAIN
    CalcCrit 
    CalcDamage 
    End 

_CalcDamage_NoRain:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_SP_ATTACK_DOWN_1_STAGE
    CalcCrit 
    CalcDamage 
    End 
