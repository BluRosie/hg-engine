.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_537", 0

// Razor Shell
// Ported anim from BW

a010_537:
    loadparticlefromspa 0, 521
    waitparticle
    addparticle 0, 6, 4
    addparticle 0, 5, 4
    addparticle 0, 4, 4
    addparticle 0, 3, 4
    addparticle 0, 2, 4
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    wait 30
    playsepan 1913, 117
    callfunction 36, 5, 3, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
