.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_550", 0
// Relic Song
a010_550:
    loadparticlefromspa 0, 537 //Relic Song particles from white 2 version
    waitparticle

    playsepanmod 1936, -117, 117, 4, 2
    //addparticle 0, 6, 3
    //addparticle 0, 5, 3
    //addparticle 0, 2, 3

    addparticle 0, 7, 17
    cmd37 6, 0, 2, 14, 8, 0, 0, "NaN", "NaN"
    wait 20
    playcry 0, -117, 127
    loop 2
    callfunction 34, 6, 8, 0, 1, 31764, 8, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 52, 3, 8, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 52, 3, 16, -16, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 16
    callfunction 52, 3, 8, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    doloop
/*
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 6, 1, 4096, 0, "NaN", "NaN"
    cmd37 5, 3, 0, 0, 0, 0, "NaN", "NaN", "NaN"
    wait 8
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 6, 1, 4096, 0, "NaN", "NaN"
    cmd37 5, 3, 0, 0, 0, 0, "NaN", "NaN", "NaN"
    wait 8
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 6, 1, 4096, 0, "NaN", "NaN"
    cmd37 5, 3, 0, 0, 0, 0, "NaN", "NaN", "NaN"
    wait 30
*/
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 4, 4

    callfunction 34, 6, 8, 0, 1, 31764, 8, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 52, 3, 8, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 52, 3, 16, -16, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 16
    callfunction 52, 3, 8, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8

    unloadparticle 0
    waitstate
    end
    

.close
