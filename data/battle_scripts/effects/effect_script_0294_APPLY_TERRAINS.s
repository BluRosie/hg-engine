.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    UpdateTerrainOverlay FALSE, _End
    Call BATTLE_SUBSCRIPT_CREATE_TERRAIN_OVERLAY

_End:
    End 
