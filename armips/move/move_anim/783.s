.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_783", 0
//Pyro Ball
a010_783:
    loadparticlefromspa 0, 414//aura sphere
    waitparticle

    loadparticlefromspa 1, 454//lava plume
    waitparticle

    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, 32
    changebg 43, 0x20001
    waitforchangebg  //magma storm bg


    playsepan 2004, -117
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"//chucks the pyro ball
    waitparticle

    playsepan 2096, -117
    addparticle 1, 2, 4
    addparticle 1, 0, 4
    shaketargetmon 10, 4
    shadetargetmon 31, 1, 1
    waitparticle
    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, 32
    resetbg 43, 0x40001
    waitforchangebg
    end
    

.close
