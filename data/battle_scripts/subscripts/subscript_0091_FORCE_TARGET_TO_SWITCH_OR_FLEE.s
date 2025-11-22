.include "asm/include/battle_commands.inc"

.data

// Called by Whirlwind and Roar.
_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SEMI_INVULNERABLE, _MoveFailed
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_DEFENDER, ABILITY_SUCTION_CUPS, _SuctionCupsMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_INGRAIN, _RootedMessage
    // Forced-switch effects do not work in wild double battles.
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_AI|BATTLE_TYPE_MULTI|BATTLE_TYPE_DOUBLES, _MoveFailed
    CompareVarToValue OPCODE_LTE, BSCRIPT_VAR_BATTLER_FAINTED, BATTLER_FORCED_OUT, _MoveFailed
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_WILD_MON, _CheckLevel

_ReplacementLoop:
    TryReplaceFaintedMon BATTLER_CATEGORY_DEFENDER, TRUE, _MoveFailed
    TryWhirlwind _ReplacementLoop

_IntoSwitchTarget:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_WILD_MON, _CheckLevel
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // Handle Natural Cure.
    TryRestoreStatusOnSwitch BATTLER_CATEGORY_DEFENDER, _SwitchTarget
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_NONE

_SwitchTarget:
    DeletePokemon BATTLER_CATEGORY_DEFENDER
    Wait 
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _EndBattle
    HealthbarSlideOut BATTLER_CATEGORY_DEFENDER
    Wait 
    SwitchAndUpdateMon BATTLER_CATEGORY_FORCED_OUT
    Wait 
    PokemonSendOut BATTLER_CATEGORY_DEFENDER
    WaitTime 72
    HealthbarSlideIn BATTLER_CATEGORY_DEFENDER
    Wait 
    // {0} was dragged out!
    PrintMessage 603, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SWITCH, BSCRIPT_VAR_BATTLER_TARGET
    Call BATTLE_SUBSCRIPT_HAZARDS_CHECK
    End 

_EndBattle:
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_PLAYER_FLED
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 

_SuctionCupsMessage:
    // {0} is anchored in place with its suction cups!
    BufferMessage 659, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    GoTo _Cleanup

_RootedMessage:
    // {0} is anchored in place with its roots!
    BufferMessage 542, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER

_Cleanup:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End 

_CheckLevel:
    // Generation V: Whirlwind always fails if the attacker's level is lower than the defender's.
    IsAttackerLevelLowerThanDefender _MoveFailed
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // Handle Natural Cure.
    TryRestoreStatusOnSwitch BATTLER_CATEGORY_DEFENDER, _SwitchTarget
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_NONE
    GoTo _SwitchTarget
