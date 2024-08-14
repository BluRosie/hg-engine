.include "asm/include/battle_commands.inc"

.data

Begin:
    // Use a new temp var for this
    SwitchInAbilityCheck
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, LoopEnd
    CallFromVar BSCRIPT_VAR_TEMP_DATA
    GoTo Begin

LoopEnd:
    End 

