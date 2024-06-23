.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, _012

_005:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_ATTACK_THEN_SWITCH_OUT

_009:
    CalcCrit 
    CalcDamage 
    End 

_012:
    GotoIfFirstHitOfParentalBond _009
    GoTo _005
