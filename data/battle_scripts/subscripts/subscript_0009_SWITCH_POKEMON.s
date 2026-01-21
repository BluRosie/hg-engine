.include "asm/include/battle_commands.inc"

.data

_Start:
    TryRestoreStatusOnSwitch BATTLER_CATEGORY_SWITCHED_MON, _PrintMessageAndCheckPursuit
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_STATUS, STATUS_NONE

_PrintMessageAndCheckPursuit:
    PrintRecallMessage BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    Call BATTLE_SUBSCRIPT_PURSUIT
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_HP, 0, _SwitchOutPokemon
    GoTo _BeginSwitchInPokemon

_SwitchOutPokemon:
    RecallPokemon BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    HealthbarSlideOut BATTLER_CATEGORY_SWITCHED_MON
    Wait 

_BeginSwitchInPokemon:
    Call BATTLE_SUBSCRIPT_TRY_CLEAR_PRIMAL_WEATHERS
    SwitchAndUpdateMon BATTLER_CATEGORY_SWITCHED_MON
    LoadPartyGaugeGraphics 
    ShowPartyGauge BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 1, _GoMessage
    PrintSendOutMessage BATTLER_CATEGORY_SWITCHED_MON
    GoTo _FinishSwitchInPokemon

_GoMessage:
    // Go! {0}!
    PrintMessage 979, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON

_FinishSwitchInPokemon:
    Wait 
    HidePartyGauge BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    FreePartyGaugeGraphics 
    PokemonSendOut BATTLER_CATEGORY_SWITCHED_MON
    WaitTime 72
    HealthbarSlideIn BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    Call BATTLE_SUBSCRIPT_HAZARDS_CHECK
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_BATTLER_FAINTED, BATTLER_ENEMY2, _End
    UpdateVarFromVar OPCODE_FLAG_INDEX, BSCRIPT_VAR_TEMP_DATA, BSCRIPT_VAR_BATTLER_FAINTED
    UpdateVar OPCODE_LEFT_SHIFT, BSCRIPT_VAR_TEMP_DATA, 24
    CompareVarToVar OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS, BSCRIPT_VAR_TEMP_DATA, _End
    Call BATTLE_SUBSCRIPT_FAINT_MON

_End:
    End 
