.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_FLING_SCRIPT, 0, _End
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, _End
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _End
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_HP_CALC, BSCRIPT_VAR_FLING_DATA
    CallFromVar BSCRIPT_VAR_FLING_SCRIPT

_End:
    End 
