.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_sub_anim/1_042", 0

a061_042:
    callfunction 77, 5, 0, 2, 20, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1792, -117
    wait 1
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
