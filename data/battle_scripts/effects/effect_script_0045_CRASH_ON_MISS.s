.include "asm/include/battle_commands.inc"

.data

_000:
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_RECKLESS, _008
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 12

_008:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_CRASH_DAMAGE
    CalcCrit 
    CalcDamage 
    End 
