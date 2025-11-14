.include "asm/include/battle_commands.inc"

.data

// Called by Seismic Toss and Night Shade.
_Start:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_LEVEL, BSCRIPT_VAR_DAMAGE
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_DAMAGE, -1
    End 
