.include "asm/include/battle_commands.inc"

.data

// Called by Draco Meteor, Fleur Cannon, Leaf Storm, Overheat and Psycho Boost.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_SP_ATTACK_DOWN_2_STAGES
    CalcCrit 
    CalcDamage 
    End 
