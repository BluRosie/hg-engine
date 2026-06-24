.include "asm/include/battle_commands.inc"

.data

_000:
    WaitButtonABTime 15

_013:
    GetMonByCottonDownOrder _endloop
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_SPEED_DOWN_1_STAGE
    Call SUB_SEQ_HANDLE_ABILITY_STAT_CHANGE
    Goto _013


_endloop:
    End
