.include "asm/include/battle_commands.inc"

.data

// Called by all Terrain moves, but also by the Surge abilities, Hadron Engine and Seed Sower.
_Start:
    UpdateTerrainOverlay FALSE, _MoveFailed
    GotoIfTerrainOverlayIsType GRASSY_TERRAIN, _ShowGrassyTerrain
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _ShowMistyTerrain
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _ShowElectricTerrain
    GotoIfTerrainOverlayIsType PSYCHIC_TERRAIN, _ShowPsychicTerrain
    End

_ShowGrassyTerrain:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_GRASSY_TERRAIN
    Wait
    // Grass grew to cover the battlefield!
    PrintMessage 1388, TAG_NONE
    GoTo _Cleanup

_ShowMistyTerrain:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_MISTY_TERRAIN
    Wait
    // Mist swirled about the battlefield!
    PrintMessage 1390, TAG_NONE
    GoTo _Cleanup

_ShowElectricTerrain:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_ELECTRIC_TERRAIN
    Wait
    // An electric current ran across the battlefield!
    PrintMessage 1392, TAG_NONE
    GoTo _Cleanup

_ShowPsychicTerrain:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_PSYCHIC_TERRAIN
    Wait
    // The battlefield got weird!
    PrintMessage 1394, TAG_NONE

_Cleanup:
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    // Restore the setter's current move to their original one if this was a side effect of an ability (such as Seed Sower).
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY, _End
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MOVE_NO_CUR, BSCRIPT_VAR_CALC_TEMP
    End

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED

_End:
    End
