.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_912", 0
//Thunderclap
a010_912:

    loadparticlefromspa 0, 407 //smelling salts
    waitparticle
    loadparticlefromspa 1, 118 //thunder
    waitparticle

    cmd43
    cmd0C 7, 1
    changebg 19, 0x800001
    waitforchangebg
    addparticle 1, 5, 3
    wait 10

    addparticle 1, 4, 4
    addparticle 1, 3, 4
    wait 35

    addparticle 0, 1, 4
    addparticle 0, 0, 4
    playsepan 1849, 117
    wait 10
    playsepan 1849, 117



    addparticle 1, 1, 4
    addparticle 1, 0, 4
    addparticle 1, 2, 4
    playsepan 2007, 117
    waitparticle


    cmd43
    cmd0C 0, 1
    cmd0C 1, 0
    cmd0C 7, 1
    cmd0C 6, 1
    resetbg 19, 0x1000001

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
