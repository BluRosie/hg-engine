.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_824", 0
// Freezing Glare
a010_824:
    loadparticlefromspa 0, 89 //ice beam
    waitparticle
    loadparticlefromspa 1, 531 //psystrike
    waitparticle 


    addparticle 1, 0, 3
    addparticle 1, 1, 3//user charges
    shadeattackingmon 25, 0, 25 //purply pink shade
    playsepanmod 2113, -117, 117, 4, 2

    addparticle 1, 2, 4 //delayed damage particles
    addparticle 1, 3, 4
    wait 15

    callfunction 33, 5, 0, 1, 0, 8, 32631, "NaN", "NaN", "NaN", "NaN", "NaN" //shade bg
    addparticle 0, 1, 17    //target opponent with the beam move
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN" //ice beam
    playsepanmod 1520, -117, 117, 4, 2
    wait 15
    addparticle 1, 5, 4 //psychic energy emitts from target
    playsepan 1930, -117
    wait 41

    callfunction 33, 5, 0, 1, 8, 0, 32631, "NaN", "NaN", "NaN", "NaN", "NaN"





    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
