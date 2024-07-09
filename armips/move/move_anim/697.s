.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_697", 0

// Aurora Veil
// Light Screen with black screen fade

a010_697:
    loadparticlefromspa 0, 140
    waitparticle
    loadparticlefromspa 1, 93
    waitparticle

    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    playsepanmod 1530, -117, 117, 4, 2
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 6, 1, 4096, 0, "NaN", "NaN"
    cmd37 5, 3, 0, 0, 0, 0, "NaN", "NaN", "NaN"

    wait 80

    addparticle 0, 1, 19
    addparticle 0, 0, 19
    playsepan 1990, -117
    waitparticle
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate

    end

.close
