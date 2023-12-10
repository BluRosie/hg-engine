.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

// handle printing field effects subscript

GrassFieldInitialMsg equ (1503)
CaveFieldInitialMsg equ (1506)

.create "build/move/battle_sub_seq/1_346", 0x0

handleFieldEffectsSubScript:
    ifcurrentfieldistype TERRAIN_GRASS, IsGrassField
    ifcurrentfieldistype TERRAIN_CAVE, IsCaveField
    goto DefaultOrEnd
IsGrassField:
    printmessage GrassFieldInitialMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The field is in full bloom.
    waitmessage
    wait 0x1E
    endscript
IsCaveField:
    printmessage CaveFieldInitialMsg, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The cave echoes dully...
    waitmessage
    wait 0x1E
    endscript

DefaultOrEnd:
    endscript

.close
