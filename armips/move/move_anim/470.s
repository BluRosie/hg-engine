.nds
.thumb
.include "armips/include/animscriptcmd.s"

//mega

.create "build/move/move_anim/0_470", 0x0

MegaAnimScript:
    loadparticlefromspa 0, 489
    loadparticlefromspa 1, 490
    waitparticle

    playsepanmod 1939, -117, 0x75, 4, 2

    changebg 47, 0x020001
    waitforchangebg

    addparticle 0,0,3
    addparticle 0,8,3
    wait 15


    addparticle 0,1,3
    addparticle 0,2,3

    //callfunction 0x22, 6, 2, 0, 1, 0x7FFF, 10, 100, 0, 0, 0, 0
    addparticle 1, 1, 3
    addparticle 0, 3, 3
    addparticle 0, 4, 3
    addparticle 0, 5, 3
    addparticle 0, 7, 3
    wait 15
    //addparticle 1, 1, 3
    //addparticle 0, 6, 3
    //addparticle 1, 1, 3
    wait 30
    unloadparticle 1
    loadparticlefromspa 1, 107
    //waitparticle

    addparticle 1,8,3
    addparticle 1,9,3
    addparticle 1,10,3

    wait 15
    callfunction 0x24, 5, 2, 0, 1, 4, 8 | 0x100, 0, 0, 0, 0, 0
    //callfunction 69, 4, 0, 1, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    transform 0
    waitstate
    addparticle 0, 10, 3
    addparticle 0, 12, 3
    wait 15
    unloadparticle 0
    playcry 0, -117, 127
    waitcry 0
    wait 15


    resetbg 47, 0x040001

    waitstate
    waitforchangebg

    //waitparticle

    unloadparticle 1
    waitstate

    end

.close