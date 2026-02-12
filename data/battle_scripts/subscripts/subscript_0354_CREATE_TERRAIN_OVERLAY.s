.include "asm/include/battle_commands.inc"

.data

_000:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_MSG_BATTLER_TEMP, ABILITY_HADRON_ENGINE, _HadronEngineTerrain
    GotoIfTerrainOverlayIsType GRASSY_TERRAIN, _019
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _024
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _029
    GotoIfTerrainOverlayIsType PSYCHIC_TERRAIN, _034
    GoTo _049

_HadronEngineTerrain:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_ELECTRIC_TERRAIN
    Wait
    // {0} turned the ground into Electric Terrain, energizing its futuristic engine!
    PrintMessage 1644, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    GoTo _ActivateParadoxTerrainAbility

_019:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_GRASSY_TERRAIN
    Wait
    // Grass grew to cover the battlefield!
    PrintMessage 1388, TAG_NONE
    GoTo _ResetParadoxTerrainAbility

_024:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_MISTY_TERRAIN
    Wait
    // Mist swirled about the battlefield!
    PrintMessage 1390, TAG_NONE
    GoTo _ResetParadoxTerrainAbility

_029:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_ELECTRIC_TERRAIN
    Wait
    // An electric current ran across the battlefield!
    PrintMessage 1392, TAG_NONE
    Wait
    WaitButtonABTime 30
    GoTo _ActivateParadoxTerrainAbility

_034:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_PSYCHIC_TERRAIN
    Wait
    // The battlefield got weird!
    PrintMessage 1394, TAG_NONE

// TODO: something weird is happening after using Terrain move rather than Surge ability

_ResetParadoxTerrainAbility:
    Wait
    WaitButtonABTime 30
    ResetParadoxAbility ABILITY_QUARK_DRIVE

// Other Terrains reach this command to activate through Booster Energy
_ActivateParadoxTerrainAbility:
    ActivateParadoxAbility ABILITY_QUARK_DRIVE

_037:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    End

_049:
    End
