.include "asm/include/battle_commands.inc"

.data

// Called by Present.
_Start:
    GotoIfSecondHitOfParentalBond _MultiHitMessage
    Present _HealTarget
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_ATTACKER, BMON_DATA_ABILITY, ABILITY_PARENTAL_BOND, _CalcDamage
    SetParentalBondFlag 

_MultiHitMessage:
    SetMultiHit 2, MULTIHIT_MULTI_HIT_MOVE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_AFTER_MOVE_MESSAGE_TYPE, AFTER_MOVE_MESSAGE_MULTI_HIT

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 

_HealTarget:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_TARGET
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PRESENT_HEAL
    // As we are healing by dealing negative damage, we need to ignore the type chart.
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_IGNORE_TYPE_IMMUNITY
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 1
    End 
