.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_494", 0

a010_494:
    loadparticlefromspa 0, 444 // spa from mud bomb
    loadparticlefromspa 1, 507 // new spa for acid spray
    waitparticle

// throw 4 green globs--from mud bomb
    addparticle 0, 0, 3
    callfunction 66, 6, 0, 0, 0, 0, 24, 64, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 0, 0, 3
    callfunction 66, 6, 0, 0, 0, 0, 24, 64, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 0, 0, 3
    callfunction 66, 6, 0, 0, 0, 0, 24, 64, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 0, 0, 3
    callfunction 66, 6, 0, 0, 0, 0, 24, 64, "NaN", "NaN", "NaN", "NaN"
    waitparticle

// shower down on the opponent
    addparticle 1, 1, 4
    addparticle 1, 0, 4
    wait 20
    callfunction 36, 5, 1, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle

    unloadparticle 0
    unloadparticle 1
    waitstate
    end


.close
