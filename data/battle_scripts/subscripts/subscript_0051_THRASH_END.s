.include "asm/include/battle_commands.inc"

.data

_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT
    Call BATTLE_SUBSCRIPT_CONFUSE
    // Skip the fatigue message if we were not confused.
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS2, STATUS2_CONFUSION, _End
    // {0} became confused due to fatigue!
    PrintMessage 338, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON
    Wait 
    WaitButtonABTime 30

_End:
    End 
