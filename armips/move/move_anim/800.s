.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_800", 0

//Expanding force

a010_800:
    loadparticlefromspa 0, 344 //Extrasensory
    waitparticle
    loadparticlefromspa 1, 171 //psywave
    waitparticle

    changebg 52, 0x800001
    waitforchangebg2
    callfunction 76, 1, 50, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitforchangebg
    //psychic bg

    playsepan 1930, -117
    addparticle 0, 0, 3 //extrsensory particle
    wait 10

    addparticle 1, 1, 4
    shaketargetmon 4, 4
    shadetargetmon 255, 255, 255
    repeatse 1903, 117, 4, 2
    waitparticle

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    cmd43
    cmd0C 4, 1
    resetbg 52, 0x1000001
    waitstate
    waitforchangebg

    end
    

.close
