.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_sub_anim/1_027", 0

a061_027:
    loop 2
    playsepan 1821, 117
    callfunction 57, 4, 4, 0, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    callfunction 57, 4, 4, 0, -8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    doloop
    end

.close
