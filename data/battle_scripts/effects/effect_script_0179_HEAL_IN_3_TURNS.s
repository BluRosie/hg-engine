.include "asm/include/battle_commands.inc"

.data

_000:
    TryWish _002
    End 

_002:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
