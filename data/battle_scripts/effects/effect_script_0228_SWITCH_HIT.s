.include "asm/include/battle_commands.inc"

.data

// Called by U-Turn, Volt Switch and Flip Turn.
_Start:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, _CheckParentalBond

_QueueSubscript:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_ATTACK_THEN_SWITCH_OUT

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 

_CheckParentalBond:
    GotoIfFirstHitOfParentalBond _CalcDamage
    GoTo _QueueSubscript
