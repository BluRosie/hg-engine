#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data


 _000:
    TryPluck _noBerry, _stickyHold
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _noBerry
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_noBerry:
    End 

_stickyHold:
    AbilityPopup BATTLER_CATEGORY_DEFENDER
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    End
    