.include "asm/include/battle_commands.inc"

.data

_000:
    TryFling _034
    CalcCrit 
    CalcDamage 
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // {0} flung its {1}!
    PrintMessage 1144, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    RemoveItem BATTLER_CATEGORY_ATTACKER
    End 

_034:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
