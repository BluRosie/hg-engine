.include "asm/include/battle_commands.inc"

.data

// Called by Air Slash, Astonish, Bite, Bone Club, Dark Pulse, Extrasensory, Fiery Wrath, Floaty Fall, Headbutt, Heart Stamp, Hyper Fang, Icicle Crash, Iron Head, Mountain Gale, Needle Arm, Rock Slide, Rolling Kick, Waterfall, Zen Headbutt and Zing Zap.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_FLINCH
    CalcCrit 
    CalcDamage 
    End 
