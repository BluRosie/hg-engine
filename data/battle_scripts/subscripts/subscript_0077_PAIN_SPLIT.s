.include "asm/include/battle_commands.inc"

.data

_Start:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _MoveFailed
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // Assign attacker HP to our generic temp value.
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HP, BSCRIPT_VAR_CALC_TEMP
    // Assign defender HP to our HP calculation temp value.
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, BSCRIPT_VAR_HP_CALC
    // Add them together into the generic temp value and divide by 2.
    UpdateVarFromVar OPCODE_ADD, BSCRIPT_VAR_CALC_TEMP, BSCRIPT_VAR_HP_CALC
    UpdateVar OPCODE_DIV, BSCRIPT_VAR_CALC_TEMP, 2
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    // Assign attacker HP to our HP calculation temp value (overwriting the previous).
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HP, BSCRIPT_VAR_HP_CALC
    // Get the difference between our current HP and target HP.
    UpdateVarFromVar OPCODE_SUB, BSCRIPT_VAR_HP_CALC, BSCRIPT_VAR_CALC_TEMP
    // Invert that value to move towards (rather than away from) it.
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_HP_CALC, -1
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // Do the same thing again, but for the defender.
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_TARGET
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, BSCRIPT_VAR_HP_CALC
    UpdateVarFromVar OPCODE_SUB, BSCRIPT_VAR_HP_CALC, BSCRIPT_VAR_CALC_TEMP
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_HP_CALC, -1
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // The battlers shared their pain!
    PrintMessage 820, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
