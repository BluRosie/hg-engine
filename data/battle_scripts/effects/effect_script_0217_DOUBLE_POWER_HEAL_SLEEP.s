.include "asm/include/battle_commands.inc"

.data

// Called by Wake-Up Slap.
_Start:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _CalcDamage
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_SLEEP, _HitSleepingTarget
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_ABILITY, ABILITY_COMATOSE, _HitSleepingTarget
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    GoTo _CalcDamage

_HitSleepingTarget:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20
    GotoIfFirstHitOfParentalBond _CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_HEAL_TARGET_SLEEP

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
