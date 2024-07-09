.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS2, STATUS2_FORESIGHT
    // {0} identified {1}!
    PrintMessage 432, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
