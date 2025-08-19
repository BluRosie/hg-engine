.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_CRITICAL_BOOSTS, 4
    SetMultiHit 3, MULTIHIT_MULTI_HIT_MOVE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_AFTER_MOVE_MESSAGE_TYPE, AFTER_MOVE_MESSAGE_MULTI_HIT
    CalcCrit 
    CalcDamage 
    End 
