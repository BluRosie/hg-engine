.include "asm/include/battle_commands.inc"

.data

// Called by Blazing Torque, Fire Punch, Flame Wheel, Pyro Ball, Sacred Fire, Sizzly Slide, Blue Flare, Ember, Fire Blast, Flamethrower, Heat Wave, Inferno, Lava Plume, Sandsear Storm, Scald, Scorching Sands, Searing Shot and Steam Eruption.
// ...for some reason.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_BURN
    CalcCrit 
    CalcDamage 
    End 
