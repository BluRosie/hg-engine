.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_495", 0

a010_495:
    loadparticlefromspa 0, 508 // new spa for foul play
    waitparticle

// move
    callfunction 57, 4, 4, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide mon down a little bit
    wait 2
    callfunction 57, 4, 4, 16, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide mon to original pos
    waitstate

// sprite part
    addparticle 0, 2, 4
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 4, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon
    waitparticle

    unloadparticle 0
    waitstate
    end


.close
