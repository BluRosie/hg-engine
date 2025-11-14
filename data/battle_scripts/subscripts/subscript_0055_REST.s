.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _MoveFailed
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _MoveFailed
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_INSOMNIA, _StayedAwakeDueToAbility
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_VITAL_SPIRIT, _StayedAwakeDueToAbility
    // Sweet Veil, Purifying Salt & Leaf Guard (in harsh sunlight) should redirect to _StayedAwakeDueToAbility if for some reason BeforeMove.c isn't doing enough.
    // Comatose should redirect to _AlreadyAsleep if for some reason BeforeMove.c isn't doing enough.
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_SLEEP, _AlreadyAsleep
    // Generation V: Soundproof no longer allows the user to rest in an uproar.
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_UPROAR, _UproarActive
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_MAXHP, BSCRIPT_VAR_HP_CALC
    CompareMonDataToVar OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HP, BSCRIPT_VAR_HP_CALC, _HealthFull
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_NOT_SLEEP, _ClearStatus
    // {0} went to sleep!
    PrintMessage 205, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _SetSleep

// STATUS_NOT_SLEEP is shorthand for all non-volatile status conditions (other than sleep).
_ClearStatus:
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_NONE
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_NOT_SLEEP
    // {0} slept and restored its HP!
    PrintMessage 208, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER

_SetSleep:
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_SLEEP_1|STATUS_SLEEP_0
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_ASLEEP
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_NOT_SLEEP, _ClearStatus
    // {0} regained health!
    PrintMessage 184, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _End

_StayedAwakeDueToAbility:
    WaitButtonABTime 30
    // {0} stayed awake because of its {1}!
    PrintMessage 329, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    GoTo _Cleanup

_AlreadyAsleep:
    WaitButtonABTime 30
    // {0} is already asleep!
    PrintMessage 57, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _Cleanup

_UproarActive:
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_UPROAR, _UproarActiveOnSelf
    WaitButtonABTime 30
    // But the uproar kept {0} awake!
    PrintMessage 326, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _Cleanup

_UproarActiveOnSelf:
    WaitButtonABTime 30
    // But {0} can’t sleep in an uproar!
    PrintMessage 323, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _Cleanup

_HealthFull:
    WaitButtonABTime 30
    // {0}’s HP is full!
    PrintMessage 187, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER

_Cleanup:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK

_End:
    Wait 
    WaitButtonABTime 30
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
