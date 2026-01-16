.include "asm/include/battle_commands.inc"

.data

_Start:
    // Ensure that the effect does not come from a hazard (important for Mold Breaker).
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _CheckAbilities_Textless
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_IMMUNITY, _AbilityBlock
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_COMATOSE, _AbilityBlock
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_PURIFYING_SALT, _AbilityBlock
    // Skip Leaf Guard check if weather is suppressed.
    CheckIgnoreWeather _CheckFlowerVeil
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, _CheckFlowerVeil
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_LEAF_GUARD, _AbilityBlock

// Check for hazard-inflicted poison (Toxic Spikes).
_CheckFlowerVeil:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_FLOWER_VEIL, _SingleFlowerVeilGrassCheck_Hazard
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_RELATIVE_ALLY|BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_FLOWER_VEIL, _DoubleFlowerVeilGrassCheck_Hazard
    // We can skip the grounded check as this is only reachable via being hit by Toxic Spikes.
    GoTo _CheckTerrain_Hazard

_CheckAbilities_Textless:
    // Ensure that the effect does not come from an item (important for Mold Breaker).
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_HELD_ITEM, _CheckIgnorableAbilities
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_IMMUNITY, _End
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_COMATOSE, _End
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_PURIFYING_SALT, _End
    CheckIgnoreWeather _CheckIgnorableFlowerVeil_Textless
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, _CheckIgnorableFlowerVeil_Textless
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_LEAF_GUARD, _End

// Check for self-inflicted poison via items (Toxic Orb). Yes, it is weird that this case allows Mold Breaker to bypass ally abilities.
_CheckIgnorableFlowerVeil_Textless:
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_FLOWER_VEIL, _FlowerVeilGrassCheck_Textless
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_RELATIVE_ALLY|BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_FLOWER_VEIL, _FlowerVeilGrassCheck_Textless
    GoTo _CheckIfGrounded_Textless

_CheckIgnorableAbilities:
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_IMMUNITY, _AbilityBlock
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_ABILITY, ABILITY_COMATOSE, _AbilityBlock
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_PURIFYING_SALT, _AbilityBlock
    CheckIgnoreWeather _CheckIgnorableFlowerVeil
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, _CheckIgnorableFlowerVeil
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_LEAF_GUARD, _AbilityBlock

// Regular check for Flower Veil.
_CheckIgnorableFlowerVeil:
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_FLOWER_VEIL, _SingleFlowerVeilGrassCheck
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_RELATIVE_ALLY|BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_FLOWER_VEIL, _DoubleFlowerVeilGrassCheck
    GotoIfGrounded BATTLER_CATEGORY_SIDE_EFFECT_MON, _CheckTerrain
    GoTo _CheckShieldDust

_SingleFlowerVeilGrassCheck_Hazard:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_GRASS, _AbilityBlock
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_GRASS, _AbilityBlock
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_GRASS, _AbilityBlock
    // Active Tera type might need to be checked here.
    // We can skip the grounded check as this is only reachable via being hit by Toxic Spikes.
    GoTo _CheckTerrain_Hazard

_DoubleFlowerVeilGrassCheck_Hazard:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_GRASS, _DoubleFlowerVeilHandle
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_GRASS, _DoubleFlowerVeilHandle
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_GRASS, _DoubleFlowerVeilHandle
    // Active Tera type might need to be checked here.
    // We can skip the grounded check as this is only reachable via being hit by Toxic Spikes.
    GoTo _CheckTerrain_Hazard

_SingleFlowerVeilGrassCheck:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_GRASS, _AbilityBlock
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_GRASS, _AbilityBlock
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_GRASS, _AbilityBlock
    GoTo _CheckShieldDust

_DoubleFlowerVeilGrassCheck:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_GRASS, _DoubleFlowerVeilHandle
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_GRASS, _DoubleFlowerVeilHandle
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_GRASS, _DoubleFlowerVeilHandle
    GoTo _CheckShieldDust

_FlowerVeilGrassCheck_Textless:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_GRASS, _End
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_GRASS, _End
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_GRASS, _End
    GoTo _CheckIfGrounded_Textless

_CheckTerrain:
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _MistyTerrainFail
    GoTo _CheckShieldDust

_CheckTerrain_Hazard:
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _MistyTerrainFail
    // We can skip the Shield Dust check as this is only reachable via being hit by Toxic Spikes.
    GoTo _CheckIfSkipAttackMessage

_CheckIfGrounded_Textless:
    GotoIfGrounded BATTLER_CATEGORY_SIDE_EFFECT_MON, _CheckTerrain_Textless
    GoTo _CheckPoisonImmunities_Textless

_CheckTerrain_Textless:
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _MistyTerrainFail
    GoTo _CheckPoisonImmunities_Textless

_CheckPoisonImmunities_Textless:
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_POISON, _End
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_BAD_POISON, _End
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_CORROSION, _CheckItemAnimationSkips
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_POISON, _End
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_POISON, _End
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_POISON, _End
    // Active Tera type might need to be checked here.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_STEEL, _End
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_STEEL, _End
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_STEEL, _End
    // Active Tera type might need to be checked here.

_CheckItemAnimationSkips:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_NONE, _End
    // Generation V: Safeguard no longer prevents status conditions inflicted by held items.
    // CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_SIDE_CONDITION_STAT_CHANGE, SIDE_CONDITION_SAFEGUARD, _End
    GoTo _CheckForItemAnimation

_CheckShieldDust:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _CheckIfSkipAttackMessage
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_SHIELD_DUST, _MoveFailed

_CheckIfSkipAttackMessage:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _CheckPoisonImmunities
    PrintAttackMessage
    Wait

_CheckPoisonImmunities:
    CheckSubstitute BATTLER_CATEGORY_SIDE_EFFECT_MON, _MoveFailed
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_POISON, _AlreadyPoisoned
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_BAD_POISON, _AlreadyPoisoned
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_CORROSION, _CheckMoveAnimationSkips
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_POISON, _CannotBePoisoned
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_POISON, _CannotBePoisoned
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_POISON, _CannotBePoisoned
    // Active Tera type might need to be checked here.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_STEEL, _CannotBePoisoned
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_STEEL, _CannotBePoisoned
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_STEEL, _CannotBePoisoned
    // Active Tera type might need to be checked here.

_CheckMoveAnimationSkips:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_NONE, _MoveFailed
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SEMI_INVULNERABLE|MOVE_STATUS_MISSED, _MoveFailed
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_SIDE_CONDITION_STAT_CHANGE, SIDE_CONDITION_SAFEGUARD, _HandleSafeguard

_BypassSafeguard:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _CheckForItemAnimation
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait

_CheckForItemAnimation:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_HELD_ITEM, _SetBadPoison
    PlayBattleAnimation BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLE_ANIMATION_HELD_ITEM
    Wait
    WaitButtonABTime 15

_SetBadPoison:
    PlayBattleAnimation BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLE_ANIMATION_POISONED
    Wait
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_BAD_POISON
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_HELD_ITEM, _ItemMessage
    // {0} was badly poisoned!
    PrintMessage 79, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _AfterMessage

_ItemMessage:
    // {0} was badly poisoned by the {1}!
    PrintMessage 1168, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLER_CATEGORY_MSG_TEMP

_AfterMessage:
    Wait
    SetHealthbarStatus BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLE_ANIMATION_POISONED
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SYNCRONIZE, _CleanupSynchronize
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SYNCRONIZE
    End

_CleanupSynchronize:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SYNCRONIZE

_End:
    End

_AbilityBlock:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _ImmuneDueToAbility
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _ImmuneDueToAbility
    PrintAttackMessage
    Wait

_ImmuneDueToAbility:
    WaitButtonABTime 30
    // {0}’s {1} prevents poisoning!
    PrintMessage 650, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _Cleanup

_MoveFailed:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _End
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_BUT_IT_FAILED
    End

_AlreadyPoisoned:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _End
    WaitButtonABTime 30
    // {0} is already poisoned!
    PrintMessage 76, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _Cleanup

_CannotBePoisoned:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _End
    WaitButtonABTime 30
    // It doesn’t affect {0}...
    PrintMessage 27, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _Cleanup

_CheckInfiltrator:
    // Infiltrator bypasses Safeguard but only on moves that are used (which allows us to check the attacker directly).
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_ABILITY, ABILITY_INFILTRATOR, _BypassSafeguard
    GoTo _SafeguardMessage

_CheckInfiltrator_MoveEffect:
    // Infiltrator bypasses Safeguard but only on moves that are used (which allows us to check the attacker directly).
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_ABILITY, ABILITY_INFILTRATOR, _BypassSafeguard
    End

_HandleSafeguard:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _CheckInfiltrator
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _CheckInfiltrator_MoveEffect
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _End

_SafeguardMessage:
    WaitButtonABTime 30
    // {0} is protected by Safeguard!
    PrintMessage 200, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON

_Cleanup:
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End

_DoubleFlowerVeilHandle:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _FlowerVeilAllyFail
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _FlowerVeilAllyFail
    PrintAttackMessage
    Wait

_FlowerVeilAllyFail:
    WaitButtonABTime 30
    // {0}’s {1} prevents poisoning!
    PrintMessage 650, TAG_NICKNAME_ABILITY, BATTLER_RELATIVE_ALLY|BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLER_RELATIVE_ALLY|BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _Cleanup

_MistyTerrainFail:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _End
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End