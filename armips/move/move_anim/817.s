.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_817", 0

//Dual Wingbeat
//wing attack twice
a010_817:
    loadparticlefromspa 0, 48
    waitparticle

    addparticle 0, 0, 4
    addparticle 0, 1, 4
    repeatse 1916, 117, 2, 2
    callfunction 36, 5, 3, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 20
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    repeatse 1916, 117, 2, 2
    callfunction 36, 5, 3, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    end

.close
