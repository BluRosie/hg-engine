.include "asm/include/battle_commands.inc"

.data

// Called by Brick Break, Psychic Fangs and Raging Bull.
_Start:
    TryBreakScreens _NoScreensToBreak
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 1
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // It shattered the barrier!
    PrintMessage 606, TAG_NONE
    Wait 
    WaitButtonABTime 30
    GoTo _End

_NoScreensToBreak:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_DID_NOT_HIT, _End
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION

_End:
    End 
