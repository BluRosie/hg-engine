.include "asm/include/battle_commands.inc"

.data

_000:
    GotoIfTailwindActive BATTLER_CATEGORY_ATTACKER, _014
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // The Tailwind blew from behind your team!
    PrintMessage 1230, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    SetTailwindCounter 1
    // handle wind power/rider activating on this
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_WIND_POWER, _procCharge
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_WIND_RIDER, _raiseAttack
    End 

_procCharge:

_raiseAttack:

_014:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
