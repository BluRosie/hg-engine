.include "asm/include/battle_commands.inc"

.data

_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_POWER, 80
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _HandleElectricTerrain
    GoTo _CalcDamage

_HandleElectricTerrain:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_MOVE_POWER, 40

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
