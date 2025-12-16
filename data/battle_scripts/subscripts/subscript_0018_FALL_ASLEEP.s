.include "asm/include/battle_commands.inc"

.data

_Start:
    // Check for disobedience.
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DISOBEDIENCE, _SetSleep
    // Ensure that the effect comes from a move (important for Mold Breaker).
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _CheckIgnorableAbilities
    // Check for abilities that would prevent sleep.
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_INSOMNIA, _AbilityBlock
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_VITAL_SPIRIT, _AbilityBlock
    // Sweet Veil should redirect to _AbilityBlock if for some reason BeforeMove.c isn't doing enough.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_ABILITY, ABILITY_COMATOSE, _AbilityBlock
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_PURIFYING_SALT, _AbilityBlock
    // Skip Leaf Guard check if weather is suppressed.
    CheckIgnoreWeather _CheckIfAlreadyAsleep_MoveEffect
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, _CheckIfAlreadyAsleep_MoveEffect
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_LEAF_GUARD, _AbilityBlock

_CheckIfAlreadyAsleep_MoveEffect:
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_SLEEP, _AlreadyAsleep
    // Check if Uproar is active and able to prevent sleep.
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_SOUNDPROOF, _CheckForExistingStatus
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_UPROAR, _UproarActive

_CheckForExistingStatus:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_NONE, _CheckIfPartialFail
    GoTo _SetSleep

_CheckIgnorableAbilities:
    // Check for abilities that would prevent sleep, unless they would be ignored by Mold Breaker.
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_INSOMNIA, _AbilityBlock
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_VITAL_SPIRIT, _AbilityBlock
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_ABILITY, ABILITY_COMATOSE, _AbilityBlock
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_PURIFYING_SALT, _AbilityBlock
    // Skip Leaf Guard check if weather is suppressed.
    CheckIgnoreWeather _CheckFlowerVeil
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, _CheckFlowerVeil
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_LEAF_GUARD, _AbilityBlock

_CheckFlowerVeil:
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_FLOWER_VEIL, _SingleFlowerVeilGrassCheck
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_RELATIVE_ALLY|BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_FLOWER_VEIL, _DoubleFlowerVeilGrassCheck
    GoTo _CheckIfGrounded

_SingleFlowerVeilGrassCheck:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_GRASS, _AbilityBlock
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_GRASS, _AbilityBlock
    // Type3 and active Tera type should be checked here if for some reason BattleController_BeforeMove.c is not doing enough.
    GoTo _CheckIfGrounded

_DoubleFlowerVeilGrassCheck:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_GRASS, _DoubleFlowerVeilHandle
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_GRASS, _DoubleFlowerVeilHandle
    // Type3 and active Tera type should be checked here if for some reason BattleController_BeforeMove.c is not doing enough.

_CheckIfGrounded:
    GotoIfGrounded BATTLER_CATEGORY_SIDE_EFFECT_MON, _CheckTerrain
    GoTo _CheckShieldDust

_CheckTerrain:
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _ElectricTerrainFail
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _MistyTerrainFail

_CheckShieldDust:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _CheckIfSkipAtackMessage
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_SHIELD_DUST, _CheckIfPartialFail

_CheckIfSkipAtackMessage:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _CheckForSubstitute
    PrintAttackMessage
    Wait

_CheckForSubstitute:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY, _CheckIfAlreadyAsleep
    CheckSubstitute BATTLER_CATEGORY_SIDE_EFFECT_MON, _CheckIfPartialFail

_CheckIfAlreadyAsleep:
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_SLEEP, _AlreadyAsleep
    // Check if Uproar is active and able to prevent sleep.
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_SOUNDPROOF, _CheckMoveAnimationSkips
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_UPROAR, _UproarActive

_CheckMoveAnimationSkips:
    // Verify that the target has no other non-volatile status.
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_NONE, _CheckIfPartialFail
    // Check if the effect is from an ability (e.g. Effect Spore).
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY, _SetSleep
    // Check if the move missed.
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SEMI_INVULNERABLE|MOVE_STATUS_MISSED, _CheckIfPartialFail
    // Check for Safeguard.
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_SIDE_CONDITION_STAT_CHANGE, SIDE_CONDITION_SAFEGUARD, _HandleSafeguard

_BypassSafeguard:
    // Indirect sleep effects should skip the attack animation (since it already played).
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _SetSleep
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait

_SetSleep:
    PlayBattleAnimation BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLE_ANIMATION_ASLEEP
    Wait
    // Generation 5: Sleep now lasts a total of 1-3 turns.
    // Generate 0-2, then offset by 2 (sleep turns are consumed before checking for wake-up).
    Random 2, 2
    UpdateMonDataFromVar OPCODE_FLAG_ON, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, BSCRIPT_VAR_CALC_TEMP
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY, _AbilityMessage
    // {0} fell asleep!
    PrintMessage 47, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _AfterMessage

_AbilityMessage:
    // {0}’s {1} made {2} fall asleep!
    PrintMessage 50, TAG_NICKNAME_ABILITY_NICKNAME, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_SIDE_EFFECT_MON

_AfterMessage:
    Wait
    WaitButtonABTime 30
    SetHealthbarStatus BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLE_ANIMATION_ASLEEP
    Wait
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_SEMI_INVULNERABLE, _StopMultiTurn
    UnlockMoveChoice BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _End

_StopMultiTurn:
    UnlockMoveChoice BATTLER_CATEGORY_SIDE_EFFECT_MON
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_STAT_CHANGE
    Call BATTLE_SUBSCRIPT_VANISH_OFF
    GoTo _End

_AbilityBlock:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _StayedAwakeDueToAbility
    PrintAttackMessage
    Wait
    WaitButtonABTime 30

_StayedAwakeDueToAbility:
    // {0} stayed awake because of its {1}!
    PrintMessage 329, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _Cleanup

    // TODO: Deal with unreachable code from vanilla.
    // {0}’s {1} suppressed {2}’s {3}!
    PrintMessage 727, TAG_NICKNAME_ABILITY_NICKNAME_ABILITY, BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    GoTo _Cleanup

_CheckIfPartialFail:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _End
    WaitButtonABTime 30
    // Check for other potential targets of the effect.
    GetCurrentMoveData MOVEATTRIBUTE_RANGE
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, RANGE_ADJACENT_OPPONENTS, _MoveMissed
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, RANGE_ALL_ADJACENT, _MoveMissed
    Call BATTLE_SUBSCRIPT_BUT_IT_FAILED
    GoTo _End

_MoveMissed:
    Call BATTLE_SUBSCRIPT_MOVE_FAIL_MISSED
    GoTo _End

_AlreadyAsleep:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY, _End
    WaitButtonABTime 30
    // {0} is already asleep!
    PrintMessage 57, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _Cleanup

_UproarActive:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS2, STATUS2_UPROAR, _UproarActiveOnSelf
    WaitButtonABTime 30
    // But the uproar kept {0} awake!
    PrintMessage 326, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _Cleanup

_UproarActiveOnSelf:
    WaitButtonABTime 30
    // But {0} can’t sleep in an uproar!
    PrintMessage 323, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _Cleanup

_CheckInfiltrator:
    // Infiltrator bypasses Safeguard but only on moves that are used (which allows us to check the attacker directly).
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_ABILITY, ABILITY_INFILTRATOR, _BypassSafeguard
    GoTo _SafeguardMessage

_CheckInfiltrator_MoveEffect:
    // Infiltrator bypasses Safeguard but only on moves that are used (which allows us to check the attacker directly).
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_ABILITY, ABILITY_INFILTRATOR, _BypassSafeguard
    GoTo _End

_HandleSafeguard:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _CheckInfiltrator_MoveEffect
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _CheckInfiltrator

_SafeguardMessage:
    WaitButtonABTime 30
    // {0} is protected by Safeguard!
    PrintMessage 200, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON

_Cleanup:
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK

_End:
    End

_DoubleFlowerVeilHandle:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _FlowerVeilAllyFail
    PrintAttackMessage
    Wait
    WaitButtonABTime 30

_FlowerVeilAllyFail:
    // {0} stayed awake because of its ally’s {1}!
    PrintMessage 1385, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLER_RELATIVE_ALLY|BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _Cleanup

_ElectricTerrainFail:
    // {0} is protected by the Electric Terrain!
    PrintMessage 1484, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    Wait
    WaitButtonABTime 30
    GoTo _MoveFailed

_MistyTerrainFail:
    // {0} surrounds itself with a protective mist!
    PrintMessage 1496, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    Wait
    WaitButtonABTime 30

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End
