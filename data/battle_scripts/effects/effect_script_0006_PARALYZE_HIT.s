.include "asm/include/battle_commands.inc"

.data

// Called by Body Slam, Bolt Strike, Combat Torque, Force Palm, Lick, Nuzzle, Spark, Thunder Punch, Buzzy Buzz, Discharge, Dragon Breath, Splishy Splash, Stoked Sparksurfer, Thunder, Thunder Shock, Thunderbolt, Wildbolt Storm and Zap Cannon.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_PARALYZE
    CalcCrit 
    CalcDamage 
    End 
