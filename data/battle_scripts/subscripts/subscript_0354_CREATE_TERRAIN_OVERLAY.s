.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateTerrainOverlay FALSE, _045
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    GotoIfTerrainOverlayIsType GRASSY_TERRAIN, _019
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _024
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _029
    GotoIfTerrainOverlayIsType PSYCHIC_TERRAIN, _034
    GoTo _049

_019:
    // Grass grew to cover the battlefield!
    PrintMessage 1388, TAG_NONE
    GoTo _037

_024:
    // Mist swirled about the battlefield!
    PrintMessage 1390, TAG_NONE
    GoTo _037

_029:
    // An electric current ran across the battlefield!
    PrintMessage 1392, TAG_NONE
    GoTo _037

_034:
    // The battlefield got weird!
    PrintMessage 1394, TAG_NONE

_037:
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    End 

_045:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED

_049:
    End 
