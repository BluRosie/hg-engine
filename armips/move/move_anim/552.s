.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_552", 0
//Glaciate
a010_552:
    loadparticlefromspa 0, 536
    waitparticle
    repeatse 1915, 0, 2, 14
    addparticle 0, 5, 3
    addparticle 0, 6, 3
    wait 20
    repeatse 2052, 117, 4, 4
    addparticle 0, 4, 4
    addparticle 0, 2, 4
    addparticle 0, 3, 4

    wait 30
    repeatse 1968, -117, 1, 2
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    
    waitparticle
    unloadparticle 0
    waitstate
    end
    

.close
