.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_547", 0

/*
// Gear Grind
Very simple shake Pokemon + shake floor animation + Horn Drill sound
Ported over gear particle from W2
*/

a010_547:
    loadparticlefromspa 0, 523
    waitparticle

    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 4, 4
    addparticle 0, 5, 4
    addparticle 0, 6, 4
    addparticle 0, 7, 4
    addparticle 0, 8, 4
    addparticle 0, 10, 4

    playsepan 2038, 117 // metal claw sound

    wait 15
    playsepan 2038, 117 // metal claw sound

    wait 15
    playsepan 1910, 117 // slashing sound

    wait 30
    
    addparticle 0, 0, 4
    addparticle 0, 9, 4
    callfunction 36, 5, 4, 0, 1, 14, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 3, 0, 14, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    waitse 1850, 117, 3 // horn drill sound

    wait 7
    addparticle 0, 0, 4
    addparticle 0, 9, 4

    waitparticle

    unloadparticle 0
    waitstate

    end

.close
