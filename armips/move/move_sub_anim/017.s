.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_sub_anim/1_017", 0

a061_017:
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 31
    loadpalette 0, 31, 1
    loadcell 0, 31
    loadcellanm 0, 31
    playsepan 1983, -117
    addsomething 0, 28, 31, 31, 31, 31, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
