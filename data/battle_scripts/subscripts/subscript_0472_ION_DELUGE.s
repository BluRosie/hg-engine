.include "asm/include/battle_commands.inc"

.data

_Start:
    // A deluge of ions showers the battlefield!
    PrintMessage 1600, TAG_NONE
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_ION_DELUGE
    End
