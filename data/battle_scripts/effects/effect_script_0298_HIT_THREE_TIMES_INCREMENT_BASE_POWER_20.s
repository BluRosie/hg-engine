.include "asm/include/battle_commands.inc"

.data

_000:
    SetMultiHit 3, MULTIHIT_TRIPLE_KICK
    UpdateVar OPCODE_SET, BSCRIPT_VAR_AFTER_MOVE_MESSAGE_TYPE, AFTER_MOVE_MESSAGE_MULTI_HIT
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_MOVE_POWER, 20
    CalcCrit 
    CalcDamage 
    End 
