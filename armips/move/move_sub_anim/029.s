.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_sub_anim/1_029", 0

a061_029:
    initresources 0, 7, 2, 2, 2, 2, 0, 0
    loadresources 0, 11
    loadpalette 0, 11, 1
    loadcell 0, 11
    loadcellanm 0, 11
    repeatse 2027, 117, 10, 2
    addsomething 0, 10, 11, 11, 11, 11, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 16
    waitstate
    freeresources 0
    end

.close
