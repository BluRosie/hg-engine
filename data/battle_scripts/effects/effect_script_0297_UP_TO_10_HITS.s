.include "asm/include/battle_commands.inc"

.data

// Called by Population Bomb.
_Start:
    // Utilize the Triple Kick multihit type, where each hit has an accuracy check and any miss will cause the move to cease.
    SetMultiHit 10, MULTIHIT_TRIPLE_KICK
    UpdateVar OPCODE_SET, BSCRIPT_VAR_AFTER_MOVE_MESSAGE_TYPE, AFTER_MOVE_MESSAGE_MULTI_HIT
    CalcCrit 
    CalcDamage
    End 
