.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MULTI_HIT_IGNORE_MESSAGE, _011
    // Hit {0} time(s)!
    PrintMessage 46, TAG_NUMBER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_011:
    End 
