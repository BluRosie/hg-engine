.include "asm/include/battle_commands.inc"

.data

_000:
    // The move was blocked by the power of Dynamax!
    BufferMessage 1490, TAG_NONE
    PrintAttackMessage
    Wait
    WaitButtonABTime 30
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    End
