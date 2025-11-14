.include "asm/include/battle_commands.inc"

.data

_Start:
    // Still adheres to type immunity, but otherwise ignores the type chart.
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS
    Counter 
    End 
