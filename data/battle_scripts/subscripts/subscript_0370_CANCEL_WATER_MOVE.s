.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 15
    // The Water-type attack evaporated in the harsh sunlight!
    PrintMessage 1443, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
