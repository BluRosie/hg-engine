.include "asm/include/battle_commands.inc"

.data

_Start:
    GoTo _FollowupMessageAlly

_FollowupMessageAlly:
    BatchFollowupMessage BATTLER_CATEGORY_ATTACKER_PARTNER
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_ATTACKER_PARTNER
    GoTo _FollowupMessageOppLeft

_FollowupMessageOppLeft:
    BatchFollowupMessage BATTLER_CATEGORY_ATTACKER_OPP_LEFT
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_ATTACKER_OPP_LEFT
    GoTo _FollowupMessageOppRight

_FollowupMessageOppRight:
    BatchFollowupMessage BATTLER_CATEGORY_ATTACKER_OPP_RIGHT
    Wait
    Call BATTLE_SUBSCRIPT_MOVE_FOLLOWUP_MESSAGE
    TryFaintMon BATTLER_CATEGORY_ATTACKER_OPP_RIGHT

_End:
    End
