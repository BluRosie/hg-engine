.include "asm/include/battle_commands.inc"

.data

_000:
    // The effects of Throat Chop prevent {0} from using certain moves!
    PrintMessage 1619, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
