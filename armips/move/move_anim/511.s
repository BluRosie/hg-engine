.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_511", 0

/*
// Shift Gear
Just shakes the user a bit and plays Horn Drill SE.  Ported SPA file from White 2
*/

a010_511:
    loadparticlefromspa 0, 520
    waitparticle

    addparticle 0, 0, 3
    addparticle 0, 1, 3
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    addparticle 0, 4, 3
    addparticle 0, 5, 3

    playsepan 2038, 117 // metal claw sound

    wait 30
    callfunction 36, 5, 4, 0, 1, 14, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitse 1850, 117, 3
    addparticle 0, 6, 3
    addparticle 0, 7, 3
    waitparticle

    unloadparticle 0
    waitstate

    end

.close
