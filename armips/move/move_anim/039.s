.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_039", 0

a010_039:
    loop 2
    playsepan 1844, -117
    callfunction 60, 3, 2, 1, 12, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    doloop
    end

.close
