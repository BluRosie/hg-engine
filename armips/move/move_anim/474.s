.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_474", 0

// power split

a010_474:
    loadparticlefromspa 0, 517
    waitparticle

    addparticle 0, 0, 3
    addparticle 0, 0, 4
    playsepanmod 1855, -117, 117, 4, 2
    wait 33
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN" // flash screen black
    playsepan 1903, 0

    waitparticle
    unloadparticle 0
    waitstate
    end
    

.close
