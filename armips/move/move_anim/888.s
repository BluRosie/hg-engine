.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_888", 0

// Trailblaze
// Quick Attack animation with some Leaf Blade leaves

a010_888:
    loadparticlefromspa 0, 128
    waitparticle
    loadparticlefromspa 1, 366
    waitparticle

    playsepan 1983, -117
    cmd52 2, 0, 4
    callfunction 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 4
    wait 20
    playsepan 1827, 117
    cmd53 0
    resetsprite 4


    callfunction 36, 5, 2, 0, 1, 1, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end

.close
