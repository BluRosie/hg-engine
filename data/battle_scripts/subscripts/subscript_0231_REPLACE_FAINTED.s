.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 1, _038
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _022
    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_ATTACKER, BATTLER_PLAYER
    // Use next Pokémon?{YESNO 0}
    PrintMessage 11, TAG_NONE
    Wait 
    YesNoMenu YES_NO_NEXT_MON
    WaitYesNoResult _022, _028

_022:
    ShowParty 
    WaitMonSelection 
    SwitchAndUpdateMon BATTLER_CATEGORY_SWITCHED_MON
    GoTo _068

_028:
    TryEscape BATTLER_CATEGORY_PLAYER, _035
    Call BATTLE_SUBSCRIPT_ESCAPE_FAILED
    GoTo _022

_035:
    Call BATTLE_SUBSCRIPT_ESCAPE
    End 

_038:
    ShowParty 
    WaitMonSelection 

_040:
    SwitchAndUpdateMon BATTLER_CATEGORY_SWITCHED_MON
    // {0} {1} is about to send in {2}. Will you switch your Pokémon?{YESNO 0}
    PrintMessage 835, TAG_TRCLASS_TRNAME_NICKNAME_TRNAME, BATTLER_CATEGORY_SWITCHED_MON, BATTLER_CATEGORY_SWITCHED_MON, BATTLER_CATEGORY_SWITCHED_MON, BATTLER_CATEGORY_PLAYER
    Wait 
    YesNoMenu YES_NO_CHANGE_MON
    WaitYesNoResult _055, _068

_055:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_SWITCHED_MON_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    ChoosePokemonMenu 
    WaitPokemonMenuResult _064
    Call BATTLE_SUBSCRIPT_SWITCH_POKEMON

_064:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SWITCH, BSCRIPT_VAR_SWITCHED_MON_TEMP

_068:
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
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_FAINTED, _095
    Call BATTLE_SUBSCRIPT_FAINT_MON

_095:
    GoToIfAnySwitches _040
    End 
