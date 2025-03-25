.include "asm/include/battle_commands.inc"

.data

_000:
    // {0}’s electromagnetism wore off!
    PrintMessage 1039, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_MAGNET_RISE
    End 
