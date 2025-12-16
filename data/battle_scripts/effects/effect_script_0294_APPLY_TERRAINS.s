.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_CREATE_TERRAIN_OVERLAY
    End 
