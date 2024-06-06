.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_472", 0

// wide guard

a010_472:
    loadparticlefromspa 0, 515
    waitparticle

    addparticle 0, 2, 3

    addparticle 0, 1, 3
    waitparticle

    addparticle 0, 0, 3
    playsepan 1990, -117
    wait 20

    unloadparticle 0
    waitstate
    end
    

.close
