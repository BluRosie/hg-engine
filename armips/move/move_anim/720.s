.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_720", 0
//Nature's Madness
a010_720:
    loadparticlefromspa 0,  340 //cosmic power
    waitparticle
    loadparticlefromspa 1, 465 //grass knot
    waitparticle
    cmd43
    cmd0C 0, 0
    cmd0C 1, 16
    changebg 34, 0x20001
    waitforchangebg

    addparticle 0, 1, 3
    addparticle 0, 0, 3
    playsepan 2074, -117
    wait 30
    repeatse 1920, 117, 3, 6
    addparticle 1, 0, 4
    addparticle 1, 1, 4
    shaketargetmon 8, 4
    waitparticle

    cmd43
    cmd0C 0, 0
    cmd0C 1, 16
    resetbg 34, 0x40001
    waitforchangebg
    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end


.close
