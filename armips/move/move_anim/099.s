.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_099", 0

a010_099:
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 11
    loadpalette 0, 11, 1
    loadcell 0, 11
    loadcellanm 0, 11
	addsomething 0, 10, 11, 11, 11, 11, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1846, -117
    callfunction 34, 6, 2, 0, 1, 31, 14, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 2027, 117
    wait 8
    playsepan 2027, 117
    waitstate
    freeresources 0
    end

.close
