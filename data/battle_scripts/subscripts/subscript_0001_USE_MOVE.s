.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _End
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION

_End:
    End
