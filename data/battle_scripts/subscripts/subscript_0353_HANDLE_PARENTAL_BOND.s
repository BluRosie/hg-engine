.include "asm/include/battle_commands.inc"

.data

_000:
    SetParentalBondFlag 
    SetMultiHit 2, MULTIHIT_MULTI_HIT_MOVE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_AFTER_MOVE_MESSAGE_TYPE, AFTER_MOVE_MESSAGE_MULTI_HIT
    End 
