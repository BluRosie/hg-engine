.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_664", 0
//Baneful Bunker
a010_664:
    loadparticlefromspa 0, 202 //protect
    waitparticle
    loadparticlefromspa 1, 123 //toxic
    waitparticle

    playsepan 1990, -117
    addparticle 1, 1, 3
    addparticle 1, 2, 3//toxic

    addparticle 0, 0, 17//protect
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    wait 20
    shadeattackingmon 20, 4, 31
    waitparticle


    unloadparticle 0
    waitstate
    end


.close
