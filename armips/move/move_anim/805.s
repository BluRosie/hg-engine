.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_805", 0

//Misty Explosion

a010_805:

    loadparticlefromspa 0, 248 //sweet scent
    waitparticle
    loadparticlefromspa 1, 175 //explosion
    waitparticle

    addparticle 0, 2, 0
    addparticle 0, 4, 3
    
    playsepan 2037, 0

    addparticle 1, 0, 3
    addparticle 1, 3, 3
    addparticle 1, 1, 3
    wait 40
    addparticle 0, 2, 0
    callfunction 33, 5, 0, 0, 0, 15, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 4, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 16, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    wait 1
    playsepan 1874, 0
    wait 14
    repeatse 2096, -117, 3, 4
    callfunction 36, 5, 4, 0, 1, 2, 320, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    callfunction 33, 5, 0, 0, 15, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 8, 8, 0, 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle



    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
