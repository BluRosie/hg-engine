.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_558", 0
//snarl animation
a010_558:
    loadparticlefromspa 0, 417 //dark pulse bursts
    waitparticle
    loadparticlefromspa 1, 76 // other sound particles (emitter 0 only)
    waitparticle
    loadparticlefromspa 2, 238// hit markers
    waitparticle

    playcry 3, -117, 127 //user's cry
    addparticle 1, 1, 3 //sound effect zappies
    wait 5
    addparticle 0, 1, 3 //3 dark pulses
    wait 2
    addparticle 0, 1, 3
    wait 2
    addparticle 0, 1, 3
    waitparticle

    playsepan 1920, 117
    addparticle 2, 1, 4 //hit markers and hit noise
    shadetargetmon 0, 0, 0 //make the target black
    shaketargetmon 5, 3 //shake 'em a bit
    waitparticle

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
