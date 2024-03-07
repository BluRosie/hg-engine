.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_596", 0

a010_596: //hyperspace hole
    loadparticlefromspa 0, 417 //dark pulse, 0 doots, 1 ring
    waitparticle
    loadparticlefromspa 1, 467//judgment particles,
    waitparticle

    playsepan 2105, 117
    callfunction 57, 4, 4, 0, -4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 4, 0, -4, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 57, 4, 4, 0, -4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 57, 4, 4, 0, -4, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 57, 4, 4, 0, -8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 57, 4, 4, 0, -8, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    wait 5
    waitse 1894, 117, 15
    loop 16
    callfunction 57, 4, 4, 0, -4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 4, 0, -4, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    doloop
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
    shaketargetmon 6, 8
    shadetargetmon 4, 4, 4
    waitparticle

    resetbg 14, 0x1000001 //revert bg
    waitforchangebg

    callfunction 57, 4, 4, 0, 80, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 4, 0, 80, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
   
    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
