.include "asm/include/battle_commands.inc"

.data

// Called by Bestow.
_Start:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_QUICK_CLAW_FLAG, 0, _MoveFailed
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_CUSTAP_FLAG, 0, _MoveFailed
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_ABILITY, ABILITY_KLUTZ, _KlutzMessage
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // {0} received {2} from {1}!
    PrintMessage 1611, TAG_NICKNAME_NICKNAME_ITEM, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    // Cache the attacker's held item.
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HELD_ITEM, BSCRIPT_VAR_TEMP_DATA
    // Remove the held item from the attacker.
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HELD_ITEM, ITEM_NONE
    // Set the defender's held item to the cached value.
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HELD_ITEM, BSCRIPT_VAR_TEMP_DATA
    Wait 
    WaitButtonABTime 30
    End 

_KlutzMessage:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    // {0}’s {1} made {2} ineffective!
    PrintMessage 714, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End
