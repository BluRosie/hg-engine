#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    ShowParty 
    WaitMonSelection 

_001:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    Call BATTLE_SUBSCRIPT_TRY_CLEAR_UNNERVE
    Call BATTLE_SUBSCRIPT_TRY_CLEAR_PRIMAL_WEATHERS
    SwitchAndUpdateMon BATTLER_CATEGORY_SWITCHED_MON
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
    SetCurrentMoveSwitchingStatus CURRENT_MOVE_NO_SWITCH

_030:
    GoToIfAnySwitches _001
    End 
