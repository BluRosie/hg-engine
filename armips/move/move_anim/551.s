.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_551", 0
// Secret Sword
a010_551:
    loadparticlefromspa 0, 527 //secret sword from white 2 version
    waitparticle

    playsepan 2113, 117
    addparticle 0, 6, 4
    addparticle 0, 5, 4
    addparticle 0, 7, 4 //initial slice

    wait 35

    addparticle 0, 3, 4
    wait 10
    playsepan 1910, 117
    addparticle 0, 2, 4
    addparticle 0, 1, 4
    addparticle 0, 0, 4 //slash hit
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
