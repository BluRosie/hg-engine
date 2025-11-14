.include "asm/include/battle_commands.inc"

.data

// Called by Smelling Salts.
_Start:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _CalcDamage
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_PARALYSIS, _HandleTargetParalysisBoost
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    GoTo _CalcDamage

_HandleTargetParalysisBoost:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20
    GotoIfFirstHitOfParentalBond _CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_HEAL_TARGET_PARALYSIS

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
