.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_471", 0

a010_471:
    loadparticlefromspa 0, 486
    waitparticle

    addparticle 0, 2, 3
    addparticle 0, 1, 3
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    playsepan 1908, -117
    wait 10

    addparticle 0, 1, 3
    addparticle 0, 1, 3
    playsepan 1908, -117
    wait 10

    addparticle 0, 2, 3
    addparticle 0, 0, 3
    playsepan 1908, -117
    wait 2
    playsepan 1908, -117
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
