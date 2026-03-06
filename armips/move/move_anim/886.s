.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_886", 0

// Snowscape

a010_886:
    loadparticlefromspa 0, 336
    waitstate
    loadparticlefromspa 1, 314
    waitstate

    addparticle 0, 1, 17
    cmd37 6, 0, 2, 0, 0, 0, 0, "NaN", "NaN"
    playsepan 2041, 0
    wait 7
    addparticle 1, 5, 0
    addparticle 1, 6, 0
    waitparticle

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end

.close
