#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    SetFieldCondition2 OPCODE_FLAG_OFF, FIELD_CONDITION_2_MAGIC_ROOM
    //Magic Room wore off, and held items’ effects returned to normal!
    PrintMessage 1785, TAG_NONE
    Wait 
    WaitButtonABTime 30
    //Animation
    End  