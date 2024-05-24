.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_266", 0

a010_266:
    initresources 0, 1, 2, 2, 2, 2, 0, 0
    loadresources 0, 21
    loadpalette 0, 20, 1
    loadcell 0, 21
    loadcellanm 0, 21
    waitse 2032, 117, 2
    addsomething 0, 26, 21, 20, 21, 21, 0, 0, 3, 0, 24, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 30
    waitse 1928, 117, 14
    waitse 1928, 117, 24
    waitse 1928, 117, 34
    waitstate
    freeresources 0
    end
    end

.close
