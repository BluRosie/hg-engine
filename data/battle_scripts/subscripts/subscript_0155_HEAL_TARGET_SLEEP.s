.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, _End
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_SLEEP
    // {0} woke up!
    PrintMessage 302, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    SetHealthbarStatus BATTLER_CATEGORY_DEFENDER, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30

_End:
    End 
