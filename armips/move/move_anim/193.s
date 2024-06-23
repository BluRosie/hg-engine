.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_193", 0

a010_193:
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 9
    loadpalette 0, 9, 1
    loadcell 0, 9
    loadcellanm 0, 9
    addsomething 0, 8, 9, 9, 9, 9, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 6
    wait 2
    playsepan 1841, 117
    wait 10
    doloop
    wait 2
    playsepan 1930, 117
    waitstate
    freeresources 0
    end

.close
