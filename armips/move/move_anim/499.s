.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_499", 0

// round move animation

red equ 30
blue equ 10
green equ 10

a010_499:
    loadparticlefromspa 0, 510
    waitparticle

// place circles around user
    addparticle 0, 6, 3
    addparticle 0, 5, 3
    wait 10
    
// shoot off blue
    addparticle 0, 7, ANIM_TARGET_MISC
    moveaxistotarget 0, 7
    wait 8
// shoot off notes
    addparticle 0, 4, ANIM_TARGET_MISC
    moveaxistotarget 0, 4

    wait 60
    callfunction 34, 5, 8, 1, 1, red | green << 5 | blue << 10, 12, "NaN", "NaN", "NaN", "NaN", "NaN" // shades target mon rgb555 color
	
	wait 5
    callfunction 36, 5, 3, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon
    
    wait 55
    unloadparticle 0
    waitstate
    end
    

.close
