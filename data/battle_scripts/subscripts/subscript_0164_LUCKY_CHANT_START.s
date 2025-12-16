.include "asm/include/battle_commands.inc"

.data

_Start:
    // Lucky Chant has a duration of 5 turns.
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, 5
    UpdateVarFromVar OPCODE_FLAG_ON, BSCRIPT_VAR_SIDE_CONDITION_ATTACKER, BSCRIPT_VAR_CALC_TEMP
    // The Lucky Chant shielded {your team/the foe} from critical hits!
    PrintMessage 1241, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
