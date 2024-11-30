.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_708", 0
//Fleur Cannon
a010_708:
    loadparticlefromspa 0, 424 //dragon pulse
    waitparticle

    loadparticlefromspa 1, 248 //sweet scent
    waitparticle
    cmd43
    cmd0C 7, 1
    changebg 11, 0x800001
    waitforchangebg
    playsepan 2074, -117
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    addparticle 1, 0, 17
    cmd37 6, 0, 2, 3, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -2000, 8000, 0, "NaN", "NaN", "NaN", "NaN"//sweet scent
    //addparticle 0, 2, 0
    addparticle 1, 4, 4
    wait 10
    playsepanmod 2080, -117, 117, 4, 2

    addparticle 0, 3, 17
    cmd37 6, 0, 2, 26, 20, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 26, 20, 0, 0, "NaN", "NaN"
    shaketargetmon 10, 20
    shadetargetmon 15, 15, 15
    waitparticle             //dragon pulse

    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetbg 11, 0x1000001
    waitforchangebg

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end


.close
