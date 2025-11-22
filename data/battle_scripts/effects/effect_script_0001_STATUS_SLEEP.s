.include "asm/include/battle_commands.inc"

.data

// Called by Dark Void, Grass Whistle, Hypnosis, Lovely Kiss, Sing, Sleep Powder and Spore.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_SLEEP
    End 
