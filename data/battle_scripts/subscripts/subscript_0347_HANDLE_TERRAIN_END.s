.include "asm/include/battle_commands.inc"

.data

_000:
    GotoIfTerrainOverlayIsType GRASSY_TERRAIN, _grassyTerrain
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _mistyTerrain
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _electricTerrain
    GotoIfTerrainOverlayIsType PSYCHIC_TERRAIN, _psychicTerrain
    GoTo _end

_grassyTerrain:
    UpdateTerrainOverlay TRUE, _end
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The grass disappeared from the battlefield.
    PrintMessage 1389, TAG_NONE
    GoTo _afterMessage

_mistyTerrain:
    UpdateTerrainOverlay TRUE, _end
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The mist disappeared from the battlefield.
    PrintMessage 1391, TAG_NONE
    GoTo _afterMessage

_electricTerrain:
    UpdateTerrainOverlay TRUE, _end
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The electricity disappeared from the battlefield.
    PrintMessage 1393, TAG_NONE
    GoTo _afterMessage

_psychicTerrain:
    UpdateTerrainOverlay TRUE, _end
    ChangePermanentBackground BATTLE_BG_CURRENT, TERRAIN_CURRENT
    // The weirdness disappeared from the battlefield.
    PrintMessage 1395, TAG_NONE

_afterMessage:
    Wait 
    WaitButtonABTime 30
_end:
    End 
