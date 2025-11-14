.include "asm/include/battle_commands.inc"

.data

// Called by Triple Axel.
_Start:
    // Utilize the Triple Kick multihit type, where each hit has an accuracy check and any miss will cause the move to cease.
    SetMultiHit 3, MULTIHIT_TRIPLE_KICK
    UpdateVar OPCODE_SET, BSCRIPT_VAR_AFTER_MOVE_MESSAGE_TYPE, AFTER_MOVE_MESSAGE_MULTI_HIT
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_MOVE_POWER, 20
    CalcCrit 
    CalcDamage 
    End 
