.include "asm/include/battle_commands.inc"

.data

_000:
    TryFling _034
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_FLING
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
