.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_RAIN
    // The rain stopped.
    PrintMessage 803, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
