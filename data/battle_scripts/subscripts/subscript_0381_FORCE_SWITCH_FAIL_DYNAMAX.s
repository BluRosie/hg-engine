.include "asm/include/battle_commands.inc"

.data

_000:
    // The move was blocked by the power of Dynamax!
    BufferMessage 1484, TAG_NONE
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End
