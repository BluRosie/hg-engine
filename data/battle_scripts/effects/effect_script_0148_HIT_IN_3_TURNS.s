.include "asm/include/battle_commands.inc"

.data

_000:
    TryFutureSight _010
     Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // {0} foresaw an attack!
    PrintMessage 472, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    End 

_010:
    End 
