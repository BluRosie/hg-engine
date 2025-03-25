.include "asm/include/battle_commands.inc"

.data

_000:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    End 
