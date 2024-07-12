.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS, STATUS_FREEZE
    // {0} thawed out!
    PrintMessage 114, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    SetHealthbarStatus BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    End 
