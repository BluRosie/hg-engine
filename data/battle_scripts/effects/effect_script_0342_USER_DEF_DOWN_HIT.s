.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_USER_DEF_DOWN_HIT
    CalcCrit
    CalcDamage
    End
