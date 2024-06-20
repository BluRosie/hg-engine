.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_POWER, 80
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _008
    GoTo _012

_008:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_MOVE_POWER, 40

_012:
    CalcCrit 
    CalcDamage 
    End 
