.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} is trying to take its attacker down with it!
    PrintMessage 388, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_DESTINY_BOND
    End 
