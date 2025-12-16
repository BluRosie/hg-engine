.include "asm/include/battle_commands.inc"

.data

_Start:
    // Gravity intensified!
    PrintMessage 997, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_GRAVITY_INIT
    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 0

_GravityLoop:
    GetMonBySpeedOrder BSCRIPT_VAR_MSG_BATTLER_TEMP
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HP, 0, _RestartLoop
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MAGNET_RISE_TURNS, 0, _HandleMagnetRise
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_FLY, _HandleSemiInvulnerable
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_ABILITY_SUPPRESSED, _RestartLoop
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_INGRAIN, _RestartLoop
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_ABILITY, ABILITY_LEVITATE, _NoLongerAirborneMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_TYPE_1, TYPE_FLYING, _NoLongerAirborneMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_TYPE_2, TYPE_FLYING, _NoLongerAirborneMessage
    // Type3 and active Tera type should be checked here if for some reason BattleController_BeforeMove.c is not doing enough.
    GoTo _RestartLoop

_HandleMagnetRise:
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MAGNET_RISE_TURNS, 0
    GoTo _NoLongerAirborneMessage

_HandleSemiInvulnerable:
    UnlockMoveChoice BATTLER_CATEGORY_MSG_TEMP
    ToggleVanish BATTLER_CATEGORY_MSG_TEMP, FALSE
    Wait 

_NoLongerAirborneMessage:
    // {0} couldn’t stay airborne because of gravity!
    PrintMessage 998, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_RestartLoop:
    // Get the next battler (if there is one) according to speed order and loop back up.
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 1
    GoToIfValidMon BSCRIPT_VAR_BATTLER_SPEED_TEMP, _GravityLoop
    End 
