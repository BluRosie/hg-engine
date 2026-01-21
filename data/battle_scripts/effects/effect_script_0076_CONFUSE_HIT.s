.include "asm/include/battle_commands.inc"

.data

// Called by Dizzy Punch, Dynamic Punch, Magical Torque, Rock Climb, Confusion, Hurricane, Psybeam, Signal Beam, Strange Steam and Water Pulse.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_CONFUSE
    CalcCrit 
    CalcDamage 
    End 
