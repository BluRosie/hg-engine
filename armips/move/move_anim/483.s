.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_483", 0

a010_483:
    loadparticlefromspa 0, 496
    waitparticle

// binding part
    addparticle 0, 3, 4
    addparticle 0, 2, 4
    wait 12
    playsepan 1919, 117
    callfunction 42, 8, 264, 100, 70, 100, 100, 100, 1, 327685, "NaN", "NaN"
    waitstate
    playsepan 1919, 117
    callfunction 42, 8, 264, 100, 70, 100, 100, 100, 1, 327685, "NaN", "NaN"
    waitstate
    playsepan 1919, 117
    callfunction 42, 8, 264, 100, 70, 100, 100, 100, 1, 327685, "NaN", "NaN"
    waitparticle

// hit part
    playsepanmod 1993, -117, 117, 4, 2
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 3, 0, 1, 5, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
