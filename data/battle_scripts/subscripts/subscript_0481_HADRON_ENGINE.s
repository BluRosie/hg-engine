.include "asm/include/battle_commands.inc"

.data

_Start:
    // Mostly taken from Create Terrain Overlay
    UpdateTerrainOverlay FALSE, _AlreadyElectricTerrain
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _ElectricTerrain
    GoTo _End

_ElectricTerrain:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_ELECTRIC_TERRAIN
    Wait
    // {0} turned the ground into Electric Terrain, energizing its futuristic engine! 
    PrintMessage 1633, TAG_NICKNAME, BATTLER_CATEGORY_ABILITY_MON
    Wait
    WaitButtonABTime 30
    ActivateParadoxAbility ABILITY_QUARK_DRIVE
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    End

_AlreadyElectricTerrain:
    // {0} used the Electric Terrain to energize its futuristic engine!
    PrintMessage 1636, TAG_NICKNAME, BATTLER_CATEGORY_ABILITY_MON
    Wait
    WaitButtonABTime 30

_End:
    End
