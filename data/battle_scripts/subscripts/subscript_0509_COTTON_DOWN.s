.include "asm/include/battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_DEFENDER
    WaitButtonABTime 15

_013:
    GetMonByCottonDownOrder _endloop
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_SPEED_DOWN_1_STAGE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_PRINT_WORK_ABILITY
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE
    Goto _013


_endloop:
    End
