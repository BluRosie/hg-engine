.include "asm/include/battle_commands.inc"

.data

_000:
    SetPsychicTerrainMoveUsedFlag 
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    Metronome 
    GotoIfCurrentMoveIsValidForParentalBond _012

_010:
    GoToMoveScript FALSE

_012:
    Call BATTLE_SUBSCRIPT_HANDLE_PARENTAL_BOND
    GoTo _010
