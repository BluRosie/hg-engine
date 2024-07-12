.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_491", 0

red equ 31
green equ 0
blue equ 0

a010_491:
    loadparticlefromspa 0, 504 // new spa for flame charge
    loadparticlefromspa 1, 114 // fire spin gfx
    waitparticle

// flames around attacker
    addparticle 0, 2, 3 // fire column around attacker (plays after the final wait 23 pretty much)
    //addparticle 0, 1, 3 // sideways flames from b2
    //addparticle 0, 0, 3 // sideways flames from b2
    addparticle 1, 0, 3 // fire spin particles
    addparticle 1, 1, 3 // fire spin particles
    wait 22
    addparticle 1, 0, 3
    addparticle 1, 1, 3
    wait 23
    addparticle 1, 0, 3
    addparticle 1, 1, 3
    wait 22
    addparticle 1, 0, 3
    addparticle 1, 1, 3
    wait 23
    callfunction 34, 6, 2, 0, 1, red | green << 5 | blue << 10, 10, 10, "NaN", "NaN", "NaN", "NaN" // shades attacking mon rgb555 color
    wait 20

    callfunction 57, 4, 4, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide mon down a little bit
    wait 10
    callfunction 57, 4, 4, 16, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide mon to original pos
    callfunction 36, 5, 4, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon
    callfunction 34, 5, 8, 1, 1, red | green << 5 | blue << 10, 12, "NaN", "NaN", "NaN", "NaN", "NaN" // shades target mon rgb555 color
    addparticle 0, 4, 4 // fire hit from new spa
    addparticle 0, 3, 4 // fire hit from new spa
    waitparticle

    unloadparticle 0
    waitstate
    end


.close
