.include "asm/include/battle_commands.inc"

.data

// Called by Tri Attack.
_Start:
    // Generate a number between 0 and 2, then offset by 3 (for a range of 3-5).
    // This gives the flags for Burn, Freeze and Paralysis, which can be found in include/constants/battle_script_constants.h.
    Random 2, 3
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_CALC_TEMP, MOVE_SIDE_EFFECT_TO_DEFENDER
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, BSCRIPT_VAR_CALC_TEMP
    CalcCrit
    CalcDamage 
    End 
