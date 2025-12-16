.include "asm/include/battle_commands.inc"

.data

// Called by Bleakwind Storm, Bubble, Bubble Beam, Bulldoze, Constrict, Drum Beating, Electroweb, Glaciate, Icy Wind, Low Sweep, Mud Shot, Pounce and Rock Tomb.
_Start:
    CalcCrit 
    CalcDamage 
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_SPEED_DOWN_1_STAGE
    End 
