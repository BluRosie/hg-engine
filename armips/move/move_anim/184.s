.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_184", 0

a010_184:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1948, 0
    waitstate
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 8
    loadpalette 0, 8, 1
    loadcell 0, 8
    loadcellanm 0, 8
    addsomething 0, 7, 8, 8, 8, 8, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    playsepan 1933, 0
    waitstate
    freeresources 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
