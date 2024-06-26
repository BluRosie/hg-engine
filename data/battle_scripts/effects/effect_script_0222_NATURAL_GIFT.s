.include "asm/include/battle_commands.inc"

.data

_000:
    CalcNaturalGiftParams _008
    GotoIfFirstHitOfParentalBond _005
    RemoveItem BATTLER_CATEGORY_ATTACKER

_005:
    CalcCrit 
    CalcDamage 
    End 

_008:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
