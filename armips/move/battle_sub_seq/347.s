.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

// handle ending terrains

GRASSY_TERRAIN_END_MSG equ (1389)
MISTY_TERRAIN_END_MSG equ (1391)
ELECTRIC_TERRAIN_END_MSG equ (1393)
PSYCHIC_TERRAIN_END_MSG equ (1395)

.create "build/move/battle_sub_seq/1_347", 0

a001_347:
    ifterrainoverlayistype GRASSY_TERRAIN, IsGrassyTerrain
    ifterrainoverlayistype MISTY_TERRAIN, IsMistyTerrain
    ifterrainoverlayistype ELECTRIC_TERRAIN, IsElectricTerrain
    ifterrainoverlayistype PSYCHIC_TERRAIN, IsPsychicTerrain
    goto DefaultOrEnd
IsGrassyTerrain:
    updateterrainoverlay TRUE, DefaultOrEnd
    changepermanentbg BATTLE_BG_CURRENT, TERRAIN_CURRENT
    printmessage GRASSY_TERRAIN_END_MSG, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The grass disappeared from the battlefield.
    waitmessage
    wait 0x1E
    endscript
IsMistyTerrain:
    updateterrainoverlay TRUE, DefaultOrEnd
    changepermanentbg BATTLE_BG_CURRENT, TERRAIN_CURRENT
    printmessage MISTY_TERRAIN_END_MSG, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The mist disappeared from the battlefield.
    waitmessage
    wait 0x1E
    endscript
IsElectricTerrain:
    updateterrainoverlay TRUE, DefaultOrEnd
    changepermanentbg BATTLE_BG_CURRENT, TERRAIN_CURRENT
    printmessage ELECTRIC_TERRAIN_END_MSG, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The electricity disappeared from the battlefield.
    waitmessage
    wait 0x1E
    endscript
IsPsychicTerrain:
    updateterrainoverlay TRUE, DefaultOrEnd
    changepermanentbg BATTLE_BG_CURRENT, TERRAIN_CURRENT
    printmessage PSYCHIC_TERRAIN_END_MSG, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The weirdness disappeared from the battlefield.
    waitmessage
    wait 0x1E
    endscript
DefaultOrEnd:
    endscript

.close
