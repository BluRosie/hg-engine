.include "asm/include/battle_commands.inc"

.data

_Start:
    GotoIfTerrainOverlayIsType GRASSY_TERRAIN, _EndGrassyTerrain
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _EndMistyTerrain
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _EndElectricTerrain
    GotoIfTerrainOverlayIsType PSYCHIC_TERRAIN, _EndPsychicTerrain
    End

_EndGrassyTerrain:
    UpdateTerrainOverlay TRUE, _End
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The grass disappeared from the battlefield.
    PrintMessage 1389, TAG_NONE
    GoTo _Cleanup

_EndMistyTerrain:
    UpdateTerrainOverlay TRUE, _End
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The mist disappeared from the battlefield.
    PrintMessage 1391, TAG_NONE
    GoTo _Cleanup

_EndElectricTerrain:
    UpdateTerrainOverlay TRUE, _End
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The electricity disappeared from the battlefield.
    PrintMessage 1393, TAG_NONE
    GoTo _Cleanup

_EndPsychicTerrain:
    UpdateTerrainOverlay TRUE, _End
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The weirdness disappeared from the battlefield.
    PrintMessage 1395, TAG_NONE

_Cleanup:
    Wait 
    WaitButtonABTime 30

_End:
    End 
