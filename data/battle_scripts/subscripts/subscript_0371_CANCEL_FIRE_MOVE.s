.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 15
    // The Fire-type attack fizzled out in the heavy rain!
    PrintMessage 1447, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
