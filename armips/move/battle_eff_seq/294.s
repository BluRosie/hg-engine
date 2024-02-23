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

SUB_SEQ_CREATE_TERRAIN_OVERLAY equ (354)

.create "build/move/battle_eff_seq/0_294", 0

Start:
    printattackmessage
    waitmessage
    wait 0x1E
    gotosubscript SUB_SEQ_CREATE_TERRAIN_OVERLAY
    endscript

.close
