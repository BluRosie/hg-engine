.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_567", 0

//Sticky Web

a010_567:
    loadparticlefromspa 0, 543 //electroweb particles from gen 5
    waitparticle

    addparticle 0, 3, 4
    addparticle 0, 4, 4
    playsepan 1919, 117
    wait 10
    playsepan 1919, 117
    wait 5
    playsepan 1919, 117
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
