.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_554", 0
//blue flare

a010_554:
    loadparticlefromspa 0, 525 //blue flare particles from White 2
    waitparticle


    addparticle 0, 3, 4
    addparticle 0, 4, 4
    addparticle 0, 5, 4 //fire comes toward opponent and spins
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    changebg 29, 0x800001
    waitforchangebg //sacred fire bg

    
    wait 35
    playsepan 2034, 117
    
    callfunction 34, 6, 8, 0, 1, 31, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 4
    addparticle 0, 2, 4 //fire bursts outward
    playsepan 1938, 117
    wait 5
    addparticle 0, 1, 4
    shaketargetmon 10, 10
    shadetargetmon 20, 0, 0
    wait 30
    shaketargetmon 10, 10
    shadetargetmon 20, 0, 0
    wait 30
    shaketargetmon 10, 10
    shadetargetmon 20, 0, 0
    waitparticle
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    resetbg 28, 0x1000001
    waitforchangebg


    unloadparticle 0
    waitstate


    end
    

.close
