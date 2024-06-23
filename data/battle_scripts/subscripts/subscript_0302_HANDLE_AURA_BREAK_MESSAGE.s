.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} reversed all other Pokémon’s auras!
    PrintMessage 1294, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 
