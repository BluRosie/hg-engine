.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_132", 0

a010_132:
    initresources 0, 4, 1, 1, 1, 1, 0, 0
    loadresources 0, 4
    loadpalette 0, 4, 1
    loadcell 0, 4
    loadcellanm 0, 4
    addsomething 0, 5, 4, 4, 4, 4, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 5
    wait 2
    playsepan 1918, 117
    doloop
    loop 2
    wait 6
    playsepan 1926, 117
    doloop
    waitstate
    freeresources 0
    end

.close
