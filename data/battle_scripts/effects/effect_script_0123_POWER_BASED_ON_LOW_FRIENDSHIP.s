.include "asm/include/battle_commands.inc"

.data

// Called by Frustration.
_Start:
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FRIENDSHIP, BSCRIPT_VAR_MOVE_POWER
    // Invert the regular friendship value (which ranges from 0-255).
    UpdateVar OPCODE_SUB, BSCRIPT_VAR_MOVE_POWER, 255
    // Be sure to make the move power positive again.
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_MOVE_POWER, -10
    UpdateVar OPCODE_DIV, BSCRIPT_VAR_MOVE_POWER, 25
    CalcCrit 
    CalcDamage 
    End 
