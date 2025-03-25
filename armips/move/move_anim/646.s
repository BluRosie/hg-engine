.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_646", 0
//Baneful Bunker
a010_646:
    loadparticlefromspa 0, 202 //protect
    waitparticle
    loadparticlefromspa 1, 459 //gunk shot
    waitparticle

    playsepan 1990, -117
    addparticle 0, 0, 17 //protect anim
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    wait 10
    playsepan 1894, -117
    addparticle 1, 0, 3
    addparticle 1, 2, 3

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
