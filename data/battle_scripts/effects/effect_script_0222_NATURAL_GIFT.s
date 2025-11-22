.include "asm/include/battle_commands.inc"

.data

_Start:
    CalcNaturalGiftParams _MoveFailed
    GotoIfFirstHitOfParentalBond _CalcDamage
    RemoveItem BATTLER_CATEGORY_ATTACKER

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
