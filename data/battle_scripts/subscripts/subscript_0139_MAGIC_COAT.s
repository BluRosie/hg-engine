.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 15
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_DEFENDER, ABILITY_MAGIC_BOUNCE, _MagicBounceMessage
    // {0} bounced the {1} back!
    PrintMessage 574, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER
    GoTo _MagicCoat

_MagicBounceMessage:
    // {0}’s {1} was bounced back by Magic Bounce!
    PrintMessage 1336, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    // TODO: add ability popup
    // {0} bounced the {1} back!
    //PrintMessage 574, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER

_MagicCoat:
    Wait
    WaitButtonABTime 30
    MagicCoat
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    End 
