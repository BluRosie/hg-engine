.include "asm/include/battle_commands.inc"

.data

// Called by Dire Claw.
_Start:
    // Generate a random number between 0 and 2, which is automatically stored in CALC_TEMP.
    Random 2, 0
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0, _SetSleep
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 1, _SetPoison
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 2, _SetParalysis

_SetSleep:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_SLEEP
    GoTo _CalcDamage

_SetPoison:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_POISON
    GoTo _CalcDamage

_SetParalysis:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_PARALYZE
    GoTo _CalcDamage

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
