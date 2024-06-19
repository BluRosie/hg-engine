.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_259", 0

a010_259:
    initresources 0, 7, 2, 2, 2, 2, 0, 0
    loadresources 0, 19
    loadpalette 0, 18, 1
    loadcell 0, 19
    loadcellanm 0, 19
    addsomething 0, 12, 19, 18, 19, 19, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 2
    playsepan 1925, -117
    wait 16
    doloop
    loop 2
    wait 4
    playsepan 1925, -117
    wait 4
    doloop
    loop 2
    wait 4
    playsepan 1925, -117
    doloop
    waitstate
    loadresources 0, 11
    loadpalette 0, 11, 1
    loadcell 0, 11
    loadcellanm 0, 11
    addsomething 0, 10, 11, 11, 11, 11, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 31, 14, 0, "NaN", "NaN", "NaN", "NaN"
    wait 4
    repeatse 2027, 117, 10, 2
    wait 10
    waitstate
    freeresources 0
    end

.close
