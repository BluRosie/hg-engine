.include "asm/include/battle_commands.inc"

.data

// Called by Acid, Apple Acid, Bug Buzz, Earth Power, Energy Ball, Flash Cannon, Focus Blast, Luster Purge, Psychic and Shadow Ball.
_Start:
    CalcCrit 
    CalcDamage 
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_SP_DEFENSE_DOWN_1_STAGE
    End 
