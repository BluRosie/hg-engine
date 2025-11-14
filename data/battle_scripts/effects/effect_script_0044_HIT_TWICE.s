.include "asm/include/battle_commands.inc"

.data

// Called by Bonemerang, Double Hit, Double Kick, Dual Chop, Dual Wingbeat, Gear Grind, Tachyon Cutter and Twin Beam.
_Start:
    SetMultiHit 2, MULTIHIT_MULTI_HIT_MOVE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_AFTER_MOVE_MESSAGE_TYPE, AFTER_MOVE_MESSAGE_MULTI_HIT
    CalcCrit 
    CalcDamage 
    End 
