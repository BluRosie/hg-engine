.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_199", 0

a010_199:
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 10
    loadpalette 0, 10, 1
    loadcell 0, 10
    loadcellanm 0, 10
    addsomething 0, 9, 10, 10, 10, 10, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 16
    loop 4
    playsepan 1801, 117
    wait 8
    doloop
    playsepan 1840, 117
    waitstate
    freeresources 0
    end

.close
