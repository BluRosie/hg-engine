.include "asm/include/battle_commands.inc"

.data

// Called by Burn Up.
_Start:
    // Failure conditions are handled in src/individual/BeforeMove.c.
    CalcCrit
    CalcDamage
    End
