.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

// Handle updating of terrain overlays

.create "build/move/battle_eff_seq/0_294", 0

Start:
    printattackmessage
    waitmessage
    wait 0x1E
    playanimation BATTLER_ATTACKER
    waitmessage
    updateterrainoverlay
    ifterrainoverlayistype GRASSY_TERRAIN, GrassyTerrainMessage
    ifterrainoverlayistype MISTY_TERRAIN, MistyTerrainMessage
    ifterrainoverlayistype ELECTRIC_TERRAIN, ElectricTerrainMessage
    ifterrainoverlayistype PSYCHIC_TERRAIN, PsychicTerrainMessage
    goto DefaultOrEnd
GrassyTerrainMessage:
    printmessage 1403, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // Grass grew to cover the battlefield!
    waitmessage
    wait 0x1E
    endscript
MistyTerrainMessage:
    printmessage 1405, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // Mist swirled about the battlefield!
    waitmessage
    wait 0x1E
    endscript
ElectricTerrainMessage:
    printmessage 1407, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // An electric current ran across the battlefield!
    waitmessage
    wait 0x1E
    endscript
PsychicTerrainMessage:
    printmessage 1409, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The battlefield got weird!
    waitmessage
    wait 0x1E
    endscript
DefaultOrEnd:
    endscript

.close
