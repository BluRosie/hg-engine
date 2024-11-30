.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_596", 0

a010_596: //hyperspace hole
    loadparticlefromspa 0, 417 //dark pulse, 0 doots, 1 ring
    waitparticle
    loadparticlefromspa 1, 467//judgment particles,
    waitparticle

    playsepan 2105, 117
    wait 5
    waitse 1894, 117, 15
    addparticle 1, 1, 3 // dark orb
    addparticle 1, 3, 3 // user charges dark doots
    //addparticle 1, 2, 3 //big dark orb on user
    playsepan 2113, -117 //charging sound
    wait 10
    cmd43
    cmd0C 7, 1
    changebg 14, 0x800001 //hyper beam background
    waitforchangebg
    addparticle 0, 1, 3 //dark ring outward
    addparticle 0, 0, 3 //more dark pulse
    playsepan 1874, 0
    wait 3
    repeatse 2096, -117, 3, 6 //explosion noise
    addparticle 1, 4, 4 //blast opponent
    shaketargetmon 6, 20
    shadetargetmon 4, 4, 4
    waitparticle

    resetbg 14, 0x1000001 //revert bg
    waitforchangebg

    unloadparticle 0
    unloadparticle 1
    waitstate
    end


.close
