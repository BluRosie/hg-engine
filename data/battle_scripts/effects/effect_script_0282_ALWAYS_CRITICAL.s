.include "asm/include/battle_commands.inc"

.data

// Called by Frost Breath, Storm Throw, Wicked Blow and Flower Trick.
// ... for some reason.
_Start:
    CalcCrit
    CalcDamage
    End
