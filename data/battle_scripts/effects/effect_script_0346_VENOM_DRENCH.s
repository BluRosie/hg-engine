.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_BAD_POISON|STATUS_POISON, _005
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_TARGET_ATK_SP_ATK_SPEED_DOWN_1_STAGE
    End

_005:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
