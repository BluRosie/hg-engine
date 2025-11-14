.include "asm/include/battle_commands.inc"

.data

// Called by Assurance.
_Start:
    GetCurrentMoveData MOVEATTRIBUTE_POWER
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MOVE_POWER, BSCRIPT_VAR_CALC_TEMP
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_DEFENDER_ASSURANCE_DAMAGE_MASK, 0, _CalcDamage
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MOVE_POWER, BSCRIPT_VAR_CALC_TEMP
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_MOVE_POWER, 2

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
