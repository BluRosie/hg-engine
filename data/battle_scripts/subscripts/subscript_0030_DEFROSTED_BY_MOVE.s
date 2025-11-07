.include "asm/include/battle_commands.inc"

.data

// Called by all Fire-type moves, Scald, Steam Eruption, Scorching Sands and Matcha Gotcha.
_Start:
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_FREEZE
    // {0}’s {1} melted the ice!
    PrintMessage 117, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait 
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    End 
