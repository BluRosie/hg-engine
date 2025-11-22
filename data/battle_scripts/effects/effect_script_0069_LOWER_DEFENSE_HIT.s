.include "asm/include/battle_commands.inc"

.data

// Called by Crunch, Crush Claw, Fire Lash, Grav Apple, Iron Tail, Liquidation, Razor Shell, Rock Smash and Thunderous Kick.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_DEFENSE_DOWN_1_STAGE
    CalcCrit 
    CalcDamage 
    End 
