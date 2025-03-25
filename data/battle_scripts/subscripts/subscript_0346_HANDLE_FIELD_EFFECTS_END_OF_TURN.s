.include "asm/include/battle_commands.inc"

.data

_000:
    GotoIfTerrainOverlayIsType GRASSY_TERRAIN, _004
    GoTo _end

_004:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0}’s HP was restored.
    PrintMessage 1396, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK
_end:
    End 
