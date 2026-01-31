.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_789", 0

//Overdrive move animation
//combines spark, discharge, and uproar
//metal sound for sfx
a010_789:
    loadparticlefromspa 0, 228
    waitparticle
    loadparticlefromspa 1, 453
    waitparticle
    loadparticlefromspa 2, 271
    waitparticle

    //darken screen
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    addparticle 0, 2, 3
    addparticle 0, 3, 3
    addparticle 2, 1, 3
    addparticle 2, 0, 3
    playsepan 2031, -117
    wait 20
    
    callfunction 36, 5, 2, 0, 1, 2, 288, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 1, 4
    addparticle 1, 3, 4
    waitse 1982, 0, 1
    waitse 1982, 0, 3
    waitse 1982, 0, 5
    waitse 1982, 0, 7
    waitse 1982, 0, 10
    waitse 1982, 0, 15
    waitse 1982, 0, 20

    callfunction 34, 6, 8, 0, 1, 13311, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 16, 0, 1, 13311, 14, 0, "NaN", "NaN", "NaN", "NaN"
    waitparticle


    //un-darken screen
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    unloadparticle 2
    waitstate
    end
    

.close
