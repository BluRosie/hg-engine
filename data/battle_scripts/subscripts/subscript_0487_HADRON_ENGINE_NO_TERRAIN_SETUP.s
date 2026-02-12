.include "asm/include/battle_commands.inc"

.data

// Hadron Engine with Terrain setup is handled in CREATE_TERRAIN_OVERLAY (subscript 0354)

_Start:
    // {0} used the Electric Terrain to energize its futuristic engine!
    PrintMessage 1647, TAG_NICKNAME, BATTLER_CATEGORY_ABILITY_MON
    Wait
    WaitButtonABTime 30
    End
