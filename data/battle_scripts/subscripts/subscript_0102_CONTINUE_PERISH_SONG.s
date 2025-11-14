.include "asm/include/battle_commands.inc"

.data

_Start:
    // {0}’s perish count fell to {1}!
    PrintMessage 439, TAG_NICKNAME_NUM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_PERISH_SONG, _End
    Call BATTLE_SUBSCRIPT_UPDATE_HP

_End:
    End 
