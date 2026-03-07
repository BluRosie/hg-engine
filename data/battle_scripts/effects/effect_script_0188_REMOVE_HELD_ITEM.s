.include "asm/include/battle_commands.inc"

.data

_000:
    GotoIfCanApplyKnockOffBoost _011
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 15

_011:
    CalcCrit 
    CalcDamage 
    End 
