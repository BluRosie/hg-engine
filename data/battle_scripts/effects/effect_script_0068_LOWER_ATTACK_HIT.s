.include "asm/include/battle_commands.inc"

.data

// Called by Aurora Beam, Bitter Malice, Breaking Swipe, Chilling Water, Lunge, Play Rough, Springtide Storm and Trop Kick.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_ATTACK_DOWN_1_STAGE
    CalcCrit 
    CalcDamage 
    End 
