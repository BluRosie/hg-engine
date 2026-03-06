.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_788", 0

//Branch Poke

a010_788:
    loadparticlefromspa 0, 470
    waitparticle

    callfunction 52, 3, 3, 24, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 52, 3, 3, -24, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"

    addparticle 0, 4, 4
    addparticle 0, 3, 4

    playsepan 2123, 117
    wait 5
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 2127, 117
    wait 20
    unloadparticle 0
    waitstate
    end
    

.close
