.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_CRITICAL_BOOSTS, 1
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_SPEED_UP_1_STAGE
    CalcCrit 
    CalcDamage 
    End 
