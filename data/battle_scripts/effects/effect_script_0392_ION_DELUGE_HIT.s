.include "asm/include/battle_commands.inc"

.data

_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_ION_DELUGE
    CalcCrit
    CalcDamage
    End
