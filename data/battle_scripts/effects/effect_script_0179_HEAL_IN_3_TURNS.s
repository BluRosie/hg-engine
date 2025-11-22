.include "asm/include/battle_commands.inc"

.data

// Called by Wish.
_Start:
    TryWish _MoveFailed
    End 

_MoveFailed:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
