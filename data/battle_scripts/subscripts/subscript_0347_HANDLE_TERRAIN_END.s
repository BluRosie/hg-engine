.include "asm/include/battle_commands.inc"

.data

_000:
    GotoIfTerrainOverlayIsType GRASSY_TERRAIN, _013
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _026
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _039
    GotoIfTerrainOverlayIsType PSYCHIC_TERRAIN, _052
    GoTo _065

_013:
    UpdateTerrainOverlay TRUE, _065
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The grass disappeared from the battlefield.
    PrintMessage 1389, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 

_026:
    UpdateTerrainOverlay TRUE, _065
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The mist disappeared from the battlefield.
    PrintMessage 1391, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 

_039:
    UpdateTerrainOverlay TRUE, _065
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The electricity disappeared from the battlefield.
    PrintMessage 1393, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 

_052:
    UpdateTerrainOverlay TRUE, _065
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The weirdness disappeared from the battlefield.
    PrintMessage 1395, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 

_065:
    End 
