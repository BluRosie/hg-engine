.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} unleashed energy!
    PrintMessage 335, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_LOCKED_INTO_MOVE
    // But there was no target...
    PrintMessage 1234, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
