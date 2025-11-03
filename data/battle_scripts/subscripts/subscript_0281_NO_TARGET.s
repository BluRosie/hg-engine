.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // But it failed!
    PrintMessage 796, TAG_NONE
    Wait
    WaitButtonABTime 30
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_RAGE, _End
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_RAGE, _End
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_RAGE

_End:
    End 
