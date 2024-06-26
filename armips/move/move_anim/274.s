.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_274", 0

a010_274:
    initresources 0, 12, 1, 1, 1, 1, 0, 0
    loadresources 0, 25
    loadpalette 0, 24, 1
    loadcell 0, 25
    loadcellanm 0, 25
    addsomething 0, 21, 25, 24, 25, 25, 0, 0, 1, 12, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1908, 0, 10, 4
    waitstate
    freeresources 0
    end

.close
