.include "asm/include/battle_commands.inc"

.data

// It is quite likely that the this script will eventually be folded into ServerFieldConditionCheck.c.
_Start:
.ifndef DISABLE_END_OF_TURN_WEATHER_MESSAGE
    Call BATTLE_SUBSCRIPT_SHOW_PREPARED_MESSAGE
.endif
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_STRONG_WINDS, _StrongWindsAnimation

_PlayWeatherAnimation:
    PlayBattleAnimationFromVar BATTLER_CATEGORY_PLAYER, BSCRIPT_VAR_TEMP_DATA
    Wait
    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 0

_HandleWeatherDamage_Loop:
    GetMonBySpeedOrder BSCRIPT_VAR_MSG_BATTLER_TEMP
    // EndOfTurnWeatherEffect sets BSCRIPT_VAR_TEMP_DATA to 2 if the effect is Solar Power, or 0 otherwise.
    EndOfTurnWeatherEffect BATTLER_CATEGORY_MSG_TEMP
    // It should also set BSCRIPT_VAR_TEMP_DATA to 1 for effects such as Hydration, but that effect is now handled in ServerFieldConditionCheck.c.
    // CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 1, _RestoreStatusInWeather
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_HP_CALC, 0, _CheckIfLoopShouldContinue
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_HP_CALC, 0, _WeatherHealing

_CheckIfRegularDamageMessage:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, _CheckIfAbilityDamageMessage
    // {1} is buffeted by the {0}!
    PrintMessage 285, TAG_MOVE_NICKNAME, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    GoTo _DealWeatherDamage

_CheckIfAbilityDamageMessage:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 2, _SolarPowerMessage
    // {0} is hurt by its {1}!
    PrintMessage 1090, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    GoTo _DealWeatherDamage

_SolarPowerMessage:
    // {0} lost some HP because of its {1}!
    PrintMessage 1096, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP

_DealWeatherDamage:
    Wait
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_FAINTED, _CheckIfLoopShouldContinue
    Call BATTLE_SUBSCRIPT_FAINT_MON
    GoTo _CheckIfLoopShouldContinue

_WeatherHealing:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} restored HP using its {1}!
    PrintMessage 635, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30

_CheckIfLoopShouldContinue:
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 1
    GoToIfValidMon BSCRIPT_VAR_BATTLER_SPEED_TEMP, _HandleWeatherDamage_Loop
    End

_RestoreStatusInWeather:
    Call BATTLE_SUBSCRIPT_ABILITY_RESTORE_STATUS
    GoTo _CheckIfLoopShouldContinue

_StrongWindsAnimation:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_TAILWIND
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 0
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 0
    GoTo _HandleWeatherDamage_Loop
