.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_PLAYER, BATTLE_ANIMATION_WEATHER_SAND
    Wait 
    // The sandstorm is raging!
    PrintMessage 804, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SANDSTORM_PERMANENT
    End 
