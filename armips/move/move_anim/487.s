.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_487", 0

// due to this animation, pokemon that can learn heavy slam should be 8 px *below* the textbox to prevent the empty space from showing below the mon when the animation of the move is shown.

a010_487:
    loadparticlefromspa 0, 500
    waitparticle

// slide mon
    playsepan 1925, -117
    callfunction 57, 4, 4, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide mon down a little bit
    waitstate
    wait 15
    playsepan 1847, 117
    callfunction 57, 4, 4, 32, -16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide mon up forward
    waitstate

// hit + clouds
    playsepanmod 1993, -117, 117, 4, 2
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 4, 0, 1, 7, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake mon
    callfunction 57, 4, 4, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // return mon to original pos
    waitstate

    unloadparticle 0
    waitstate
    end
    

.close
