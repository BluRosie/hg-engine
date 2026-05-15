.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage
    Wait 
    WaitButtonABTime 30
    PrintBufferedMessage
    Wait 
    WaitButtonABTime 30
    End 
