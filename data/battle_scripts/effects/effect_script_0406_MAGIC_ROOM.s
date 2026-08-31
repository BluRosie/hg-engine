#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    IsFieldCondition2On FIELD_CONDITION_2_MAGIC_ROOM, _alreadyActive
    SetFieldCondition2 OPCODE_FLAG_ON, FIELD_CONDITION_2_MAGIC_ROOM
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_TRICK_ROOM_INIT
    //It created a bizarre area in which Pokémon’s held items lose their effects!
    PrintMessage 1784, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End

_alreadyActive:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    Call BATTLE_SUBSCRIPT_MAGIC_ROOM_END
    End  
