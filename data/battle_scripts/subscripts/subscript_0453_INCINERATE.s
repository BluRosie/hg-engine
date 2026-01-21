.include "asm/include/battle_commands.inc"

.data

_Start:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _End
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_CUSTAP_FLAG, 0, _End
    TryIncinerate _End
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30

_End:
    End 
