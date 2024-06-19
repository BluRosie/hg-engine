.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_306", 0

a010_306:
    initresources 0, 4, 1, 1, 1, 1, 0, 0
    loadresources 0, 17
    loadpalette 0, 37, 1
    loadcell 0, 17
    loadcellanm 0, 17
    addsomething 0, 22, 17, 37, 17, 17, 0, 0, 1, 4, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    loop 2
    playsepan 1910, 117
    callfunction 52, 3, 3, 24, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 52, 3, 3, -24, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    doloop
    waitstate
    freeresources 0
    end

.close
