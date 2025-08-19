.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_CRITICAL_BOOSTS, 4
    CalcCrit
    CalcDamage
    End
