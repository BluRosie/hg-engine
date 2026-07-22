#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY
    TryPerishSong _045
    AbilityPopup BATTLER_CATEGORY_DEFENDER
    // All Pokémon hearing the song will faint in three turns!
    PrintMessage 1571, TAG_NONE
    Wait
    WaitButtonABTime 30

_045:
    End
