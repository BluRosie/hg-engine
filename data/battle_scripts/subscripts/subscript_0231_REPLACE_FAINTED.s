.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 1, _EnemySwitching
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _DoSwitch
    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_ATTACKER, BATTLER_PLAYER
    // Use next Pokémon?
    PrintMessage 11, TAG_NONE
    Wait 
    YesNoMenu YES_NO_NEXT_MON
    WaitYesNoResult _DoSwitch, _TryEscape

_DoSwitch:
    ShowParty 
    WaitMonSelection 
    SwitchAndUpdateMon BATTLER_CATEGORY_SWITCHED_MON
    GoTo _FinishSwitchIn

_TryEscape:
    TryEscape BATTLER_CATEGORY_PLAYER, _Escape
    Call BATTLE_SUBSCRIPT_ESCAPE_FAILED
    GoTo _DoSwitch

_Escape:
    Call BATTLE_SUBSCRIPT_ESCAPE
    End 

_EnemySwitching:
    ShowParty 
    WaitMonSelection 

_SwitchPrompt:
    SwitchAndUpdateMon BATTLER_CATEGORY_SWITCHED_MON
    // {0} {1} is about to send in {2}. Will you switch your Pokémon?
    PrintMessage 835, TAG_TRCLASS_TRNAME_NICKNAME_TRNAME, BATTLER_CATEGORY_SWITCHED_MON, BATTLER_CATEGORY_SWITCHED_MON, BATTLER_CATEGORY_SWITCHED_MON, BATTLER_CATEGORY_PLAYER
    Wait 
    YesNoMenu YES_NO_CHANGE_MON
    WaitYesNoResult _DoCounterSwitch, _FinishSwitchIn

_DoCounterSwitch:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_SWITCHED_MON_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    ChoosePokemonMenu
    // Skip ahead if we decide to exit the menu.
    WaitPokemonMenuResult _AfterCounterSwitch
    Call BATTLE_SUBSCRIPT_SWITCH_POKEMON

_AfterCounterSwitch:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SWITCH, BSCRIPT_VAR_SWITCHED_MON_TEMP

_FinishSwitchIn:
    LoadPartyGaugeGraphics 
    ShowPartyGauge BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    PrintSendOutMessage BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    HidePartyGauge BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    FreePartyGaugeGraphics 
    PokemonSendOut BATTLER_CATEGORY_SWITCHED_MON
    WaitTime 72
    HealthbarSlideIn BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    Call BATTLE_SUBSCRIPT_HAZARDS_CHECK
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_FAINTED, _CheckIfMoreSwitches
    Call BATTLE_SUBSCRIPT_FAINT_MON

_CheckIfMoreSwitches:
    GoToIfAnySwitches _SwitchPrompt
    End 
