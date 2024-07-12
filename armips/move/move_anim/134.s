.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_134", 0

a010_134:
    playsepan 1948, -117
    initresources 0, 3, 1, 1, 1, 1, 0, 0
    loadresources 0, 5
    loadpalette 0, 5, 1
    loadcell 0, 5
    loadcellanm 0, 5
    addsomething 0, 2, 5, 5, 5, 5, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 32
    playsepan 1856, -117
    waitse 1856, -117, 20
    loop 3
    wait 20
    doloop
    wait 27
    playsepan 1852, -117
    wait 13
    waitstate
    freeresources 0
    end

.close
