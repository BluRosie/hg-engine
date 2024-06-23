.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_sub_anim/1_028", 0

a061_028:
    loop 2
    playsepan 1927, 117
    callfunction 4, 6, 65535, 66445, 10, 2, 0, 32, "NaN", "NaN", "NaN", "NaN"
    waitstate
    doloop
    end

.close
