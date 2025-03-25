.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_520", 0

a010_520:
    loadparticlefromspa 0, 325  //blast burn particles
    waitparticle
    loadparticlefromspa 1, 114 //dark cloud swirl (fire spin)
    waitparticle

    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, 32
    changebg 43, 0x20001
    waitforchangebg
    playsepan 2104, 117 //magma storm bg


    repeatse 1968, -117, 1, 2 //blast burn sound
    addparticle2 0, 3, 0, 3
    callfunction 72, 10, 3, -90, -90, -90, -90, 48, 24, 7, 0, 0 //adds blast burn particles coming radially from user
    addparticle2 0, 4, 1, 3
    callfunction 72, 10, 4, -90, -90, -90, -90, 48, 24, 7, 0, 0
    addparticle2 0, 5, 2, 3
    callfunction 72, 10, 5, -90, -90, -90, -90, 48, 24, 7, 0, 0
    addparticle2 0, 6, 0, 3
    callfunction 72, 10, 6, -45, -45, -45, -45, 48, 24, 7, 0, 0
    addparticle2 0, 7, 1, 3
    callfunction 72, 10, 7, -45, -45, -45, -45, 48, 24, 7, 0, 0
    addparticle2 0, 8, 2, 3
    callfunction 72, 10, 8, -45, -45, -45, -45, 48, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 0, 0, 0, 0, 48, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 0, 0, 0, 0, 48, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 0, 0, 0, 0, 48, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 45, 45, 45, 45, 48, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 45, 45, 45, 45, 48, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 45, 45, 45, 45, 48, 24, 7, 0, 0
    addparticle2 0, 12, 0, 3
    callfunction 72, 10, 12, 90, 90, 90, 90, 48, 24, 7, 0, 0
    addparticle2 0, 13, 1, 3
    callfunction 72, 10, 13, 90, 90, 90, 90, 48, 24, 7, 0, 0
    addparticle2 0, 14, 2, 3
    callfunction 72, 10, 14, 90, 90, 90, 90, 48, 24, 7, 0, 0
    wait 8
    repeatse 1968, -117, 1, 2
    addparticle2 0, 3, 0, 3
    callfunction 72, 10, 3, -90, -90, -90, -90, 64, 24, 7, 0, 0 //more blast burn 
    addparticle2 0, 4, 1, 3
    callfunction 72, 10, 4, -90, -90, -90, -90, 64, 24, 7, 0, 0
    addparticle2 0, 5, 2, 3
    callfunction 72, 10, 5, -90, -90, -90, -90, 64, 24, 7, 0, 0
    addparticle2 0, 6, 0, 3
    callfunction 72, 10, 6, -45, -45, -45, -45, 64, 24, 7, 0, 0
    addparticle2 0, 7, 1, 3
    callfunction 72, 10, 7, -45, -45, -45, -45, 64, 24, 7, 0, 0
    addparticle2 0, 8, 2, 3
    callfunction 72, 10, 8, -45, -45, -45, -45, 64, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 0, 0, 0, 0, 64, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 0, 0, 0, 0, 64, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 0, 0, 0, 0, 64, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 45, 45, 45, 45, 64, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 45, 45, 45, 45, 64, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 45, 45, 45, 45, 64, 24, 7, 0, 0
    addparticle2 0, 12, 0, 3
    callfunction 72, 10, 12, 90, 90, 90, 90, 64, 24, 7, 0, 0
    addparticle2 0, 13, 1, 3
    callfunction 72, 10, 13, 90, 90, 90, 90, 64, 24, 7, 0, 0
    addparticle2 0, 14, 2, 3
    callfunction 72, 10, 14, 90, 90, 90, 90, 64, 24, 7, 0, 0
    wait 8

    playsepan 2104, 117 
    shadetargetmon 31, 0, 0 //make the target red
    shaketargetmon 5, 3 //shake 'em a bit
    addparticle 1, 0, 4 //fire spin
    addparticle 1, 1, 4 //smoke
    waitparticle
    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, 32
    resetbg 43, 0x40001
    waitforchangebg //reset background

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
