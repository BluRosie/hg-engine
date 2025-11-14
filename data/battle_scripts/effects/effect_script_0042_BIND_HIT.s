.include "asm/include/battle_commands.inc"

.data

// Called by Bind, Wrap, Fire Spin, Clamp, Sand Tomb and Magma Storm.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SIDE_EFFECT_CHECK_HP_AND_SUBSTITUTE|MOVE_SUBSCRIPT_PTR_BIND_TARGET
    CalcCrit 
    CalcDamage 
    End 
