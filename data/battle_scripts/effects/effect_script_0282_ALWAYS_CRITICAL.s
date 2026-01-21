.include "asm/include/battle_commands.inc"

.data

// Called by Frost Breath, Storm Throw, Wicked Blow and Flower Trick.
_Start:
    CalcCrit
    CalcDamage
    End
