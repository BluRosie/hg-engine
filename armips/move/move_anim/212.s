.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_212", 0

a010_212:
    callfunction 33, 5, 0, 1, 0, 12, 31764, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 12
    loadpalette 0, 12, 1
    loadcell 0, 12
    loadcellanm 0, 12
    addsomething 0, 11, 12, 12, 12, 12, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 8
    playsepan 1948, 117
    wait 6
    doloop
    wait 6
    playsepan 1985, 117
    waitstate
    freeresources 0
    callfunction 33, 5, 0, 1, 12, 0, 31764, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
