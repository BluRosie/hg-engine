.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

// fix helping hand: original makes target go left 1 pixel

.create "build/move/move_anim/0_270", 0

a010_270:
    initresources 0, 6, 1, 1, 1, 1, 0, 0
    loadresources 0, 23
    loadpalette 0, 22, 1
    loadcell 0, 23
    loadcellanm 0, 23
    addsomething 0, 20, 23, 22, 23, 23, 0, 0, 1, 6, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitse 2035, 0, 20
    wait 14
    loop 2
    callfunction 52, 3, 2, 12, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 1, 260, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 3
    callfunction 52, 3, 2, -12, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    playsepan 2035, 0
    doloop
    wait 1
    callfunction 52, 3, 2, 12, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 260, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 3
    callfunction 52, 3, 2, -12, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 34, 5, 4, 0, 2, 1003, 8, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    freeresources 0
    end

.close
