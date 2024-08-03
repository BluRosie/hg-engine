.include "asm/include/battle_commands.inc"

.data

// TODO: clear MOVE_STICKY_WEB

_000:
    // toxic spikes can inflict poison through magic guard, but not subsequently damage the mon (which is already handled in the damage subscript)
    //CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_MAGIC_GUARD, _105
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_GRAVITY, _checkToxicSpikes
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_SPEED_DOWN_GROUNDED, _checkToxicSpikes
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_LEVITATE, _checkStealthRock
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_TYPE_1, TYPE_FLYING, _checkStealthRock
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_TYPE_2, TYPE_FLYING, _checkStealthRock
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_MAGNET_RISE, _checkStealthRock
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT, _checkStealthRock

_checkToxicSpikes:
    CheckToxicSpikes BATTLER_CATEGORY_SWITCHED_MON, _checkSpikes
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000002, _badlyPoison
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000001, _regularPoison
    // The poison spikes disappeared from around your team’s feet!
    PrintMessage 1065, TAG_NONE_SIDE, BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    WaitButtonABTime 30
    GoTo _checkSpikes

_regularPoison:
    // a mon with comatose can not be poisoned by toxic spikes
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_COMATOSE, _end
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _end
    Call BATTLE_SUBSCRIPT_POISON
    GoTo _checkSpikes

_badlyPoison:
    // a mon with comatose can not be poisoned by toxic spikes
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_COMATOSE, _end
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _end
    Call BATTLE_SUBSCRIPT_BADLY_POISON

_checkSpikes:
    // ignore any further entry hazards with heavy duty boots
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _end
    CheckSpikes BATTLER_CATEGORY_SWITCHED_MON, _checkStealthRock
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} is hurt by the spikes!
    PrintMessage 429, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    WaitButtonABTime 30

_checkStealthRock:
    CheckStealthRock BATTLER_CATEGORY_SWITCHED_MON, _end
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // Pointed stones dug into {0}!
    PrintMessage 1079, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    WaitButtonABTime 30

_end:
    End 
