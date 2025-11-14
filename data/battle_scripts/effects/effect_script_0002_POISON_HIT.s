.include "asm/include/battle_commands.inc"

.data

// Called by Gunk Shot, Noxious Torque, Poison Jab and Poison Sting.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_POISON
    CalcCrit 
    CalcDamage 
    End 
