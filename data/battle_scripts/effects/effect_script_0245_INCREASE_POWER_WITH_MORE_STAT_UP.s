.include "asm/include/battle_commands.inc"

.data

// Called by Punishment.
_Start:
    CalcPunishmentPower 
    CalcCrit 
    CalcDamage 
    End 
