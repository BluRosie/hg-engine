.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_604", 0
// Geomancy
a010_604:
    loadparticlefromspa 0, 340 //cosmic power
    waitparticle
    callfunction 33, 5, 0, 1, 0, 12, 10272, "NaN", "NaN", "NaN", "NaN", "NaN" //draco meteor bg
    addparticle 0, 1, 3
    addparticle 0, 0 ,3

    wait 25
    playsepan 2040, -117
    addparticle 0, 2, 3
    waitparticle
    callfunction 33, 5, 0, 1, 12, 0, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    unloadparticle 0
    waitstate
    end
    

.close
