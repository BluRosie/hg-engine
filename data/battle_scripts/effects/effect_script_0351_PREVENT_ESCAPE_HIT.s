.include "asm/include/battle_commands.inc"

.data

// Called by Anchor Shot and Spirit Shackle.
// Possibly called by Thousand Waves.
// Will be called by G-Max Terror, if/when Gigantamax is implemented.
_Start:
    GotoIfFirstHitOfParentalBond _CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_MEAN_LOOK

_CalcDamage:
    CalcCrit
    CalcDamage
    End 
