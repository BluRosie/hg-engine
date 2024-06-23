.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_289", 0

a010_289:
    checkturn _0010, _0080
    end
_0010:
    playsepan 1927, -117
    callfunction 57, 4, 4, -8, 4, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 4, -8, -4, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 4, 16, 0, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_0080:
    callfunction 71, 1, 2, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1940, -117
    waitse 1886, 117, 15
    waitse 1940, -117, 30
    wait 20
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
