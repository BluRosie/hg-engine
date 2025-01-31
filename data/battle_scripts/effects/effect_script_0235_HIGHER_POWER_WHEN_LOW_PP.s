.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVarFromVar OPCODE_ADD, BSCRIPT_VAR_MOVE_POWER, BSCRIPT_VAR_CALC_TEMP
    CalcCrit 
    CalcDamage 
    End 
