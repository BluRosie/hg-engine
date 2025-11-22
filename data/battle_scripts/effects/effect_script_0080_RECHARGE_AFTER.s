.include "asm/include/battle_commands.inc"

.data

// Called by Blast Burn, Eternabeam, Frenzy Plant, Giga Impact, Hydro Cannon, Hyper Beam, Meteor Assault, Prismatic Laser, Roar of Time and Rock Wrecker.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_RECHARGE_TURN
    CalcCrit 
    CalcDamage 
    End 
