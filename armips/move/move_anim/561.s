.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_561", 0
//Fusion Flare
a010_561:
    loadparticlefromspa 0, 539
    waitparticle
    callfunction 33, 5, 0, 1, 0, 12, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"

    repeatse 1937, -117, 3, 6
    addparticle 0, 2, 3
    wait 15
    addparticle 0, 1, 3
    wait 10
    addparticle 0, 5, 3
    addparticle 0, 6, 3
    wait 20
    repeatse 1993, 117, 3, 6
    addparticle 0, 3, 4
    addparticle 0, 4, 4
    shakescreen
    shaketargetmon 4, 6
    shadetargetmon 30, 30, 30
    waitparticle

    callfunction 33, 5, 0, 1, 12, 0, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"

    unloadparticle 0
    waitstate
    end


.close
