#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data


 _000:
    TryPluck _noitemlost, _notused
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _noitemlost
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_noitemlost:
    End 

_notused:
    End
    