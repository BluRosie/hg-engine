.include "asm/include/battle_commands.inc"

.data

_Start:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_TEMP_DATA, BSCRIPT_VAR_TOTAL_TURNS
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_TEMP_DATA, 1

_FakeModuloLoop:
    CompareVarToValue OPCODE_LTE, BSCRIPT_VAR_TEMP_DATA, 2, _CheckTempestRemainder
    UpdateVar OPCODE_SUB, BSCRIPT_VAR_TEMP_DATA, 3
    GoTo _FakeModuloLoop

_CheckTempestRemainder:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _HandleTempestMove
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 2, _HandleTempestBuildup_Strong

_HandleTempestBuildup:
    // A wicked gust starts to stir!
    PrintMessage 1604, TAG_NONE
    // UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_TAILWIND
    // PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    End

_HandleTempestBuildup_Strong:
    // A horrible wind is howling!
    PrintMessage 1605, TAG_NONE
    // UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_TAILWIND
    // PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    End

_HandleTempestMove:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_HURRICANE
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    // A terrible storm tears into you!
    PrintMessage 1606, TAG_NONE
    Wait
    WaitButtonABTime 30
    // Necessary values for Hurricane are cached prior to subscript.
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BATTLER_CATEGORY_PLAYER
    Wait
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // Preemptively set up our burn heal loop vars.
    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 0
    UpdateVar OPCODE_SET, BSCRIPT_VAR_TEMP_DATA, 0
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_FAINTED, _SwitchInAbilityCheck
    Call BATTLE_SUBSCRIPT_FAINT_MON
    GoTo _SwitchInAbilityCheck

_SwitchInAbilityCheck:
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK

_CheckBurn_Loop:
    GetMonBySpeedOrder BSCRIPT_VAR_MSG_BATTLER_TEMP
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_BURN, _HealBurn

_CheckBurn_Loop_End:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 1
    GoToIfValidMon BSCRIPT_VAR_BATTLER_SPEED_TEMP, _CheckBurn_Loop
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_TEMP_DATA, 0, _BurnHealMessage
    End

_HealBurn:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HP, 0, _CheckBurn_Loop_End
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_BURN
    SetHealthbarStatus BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_NONE
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_TEMP_DATA, 1
    GoTo _CheckBurn_Loop_End

_BurnHealMessage:
    // The roaring winds extinguished the burning Pokémon!
    PrintMessage 1608, TAG_NONE
    End
