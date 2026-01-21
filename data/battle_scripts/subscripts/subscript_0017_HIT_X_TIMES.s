.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MULTI_HIT_IGNORE_MESSAGE, _End
    // Hit {0} time(s)!
    PrintMessage 46, TAG_NUMBER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_End:
    End 
