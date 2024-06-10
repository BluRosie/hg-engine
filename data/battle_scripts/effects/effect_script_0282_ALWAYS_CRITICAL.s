.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CRIT_MULTIPLIER, 0x2
    CalcCrit
    CalcDamage
    End
