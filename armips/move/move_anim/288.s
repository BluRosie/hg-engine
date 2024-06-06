.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_288", 0

a010_288:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1948, -117
    waitstate
    initresources 0, 10, 1, 1, 1, 1, 0, 0
    loadresources 0, 28
    loadpalette 0, 27, 1
    loadcell 0, 28
    loadcellanm 0, 28
    repeatse 1937, -117, 16, 3
    addsomething 0, 15, 28, 27, 28, 28, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 2, 8296, 14, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate
    freeresources 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
