.include "asm/include/battle_commands.inc"

.data

_000:
	UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    CalcPunishmentPower 
    CalcCrit 
    CalcDamage 
    End 
