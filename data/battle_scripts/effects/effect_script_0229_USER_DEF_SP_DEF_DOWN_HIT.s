.include "asm/include/battle_commands.inc"

.data

// Called by Armor Cannon, Close Combat, Dragon Ascent and Headlong Rush.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_USER_DEF_AND_SPDEF_DOWN_1_STAGE
    CalcCrit 
    CalcDamage 
    End 
