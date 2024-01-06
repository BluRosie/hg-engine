.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

// Handle updating of terrain overlays

GRASSY_TERRAIN_APPLY_MSG equ (1388)
MISTY_TERRAIN_APPLY_MSG equ (1390)
ELECTRIC_TERRAIN_APPLY_MSG equ (1392)
PSYCHIC_TERRAIN_APPLY_MSG equ (1394)

.create "build/move/battle_eff_seq/0_294", 0

Start:
    printattackmessage
    waitmessage
    wait 0x1E
    // move logic up because need to jump if move fails
    updateterrainoverlay FALSE, SameTerrainFail
    playanimation BATTLER_ATTACKER
    waitmessage
    ifterrainoverlayistype GRASSY_TERRAIN, GrassyTerrainMessage
    ifterrainoverlayistype MISTY_TERRAIN, MistyTerrainMessage
    ifterrainoverlayistype ELECTRIC_TERRAIN, ElectricTerrainMessage
    ifterrainoverlayistype PSYCHIC_TERRAIN, PsychicTerrainMessage
    goto DefaultOrEnd
GrassyTerrainMessage:
    printmessage GRASSY_TERRAIN_APPLY_MSG, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // Grass grew to cover the battlefield!
    waitmessage
    wait 0x1E
    endscript
MistyTerrainMessage:
    printmessage MISTY_TERRAIN_APPLY_MSG, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // Mist swirled about the battlefield!
    waitmessage
    wait 0x1E
    endscript
ElectricTerrainMessage:
    printmessage ELECTRIC_TERRAIN_APPLY_MSG, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // An electric current ran across the battlefield!
    waitmessage
    wait 0x1E
    endscript
PsychicTerrainMessage:
    printmessage PSYCHIC_TERRAIN_APPLY_MSG, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The battlefield got weird!
    waitmessage
    wait 0x1E
    endscript
SameTerrainFail:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
DefaultOrEnd:
    endscript

.close
