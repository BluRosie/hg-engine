.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_716", 0
// Sunsteel Strike
a010_716:
    loadparticlefromspa 0, 412 //flare blitz particle
    waitparticle
    loadparticlefromspa 1, 371 //doom desire
    waitparticle

    repeatse 2038, -117, 8, 2
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 0
    loadspritemaybe 2, 0, 2, 1
    callfunction 83, 2, 3, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetsprite 0
    resetsprite 1
    resetsprite 2
    unloadspriteresource
    waitstate
    addparticle 0, 0, 3
    // slide mon
    playsepan 1925, -117
    slideattackingmon -16, 8
    waitstate
    wait 15
    playsepan 1847, 117
    slideattackingmon 32, -16
    waitstate

    // hit + fire +doom desire explosions

    addparticle 0, 1, 4
    playsepan 2107, 0
    addparticle 1, 2, 17
    cmd37 6, 0, 2, 0, 0, 0, 0, "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 0, 0, 0, 0, "NaN", "NaN"
    wait 30
    repeatse 1993, 117, 6, 5
    addparticle 1, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    callfunction 36, 5, 4, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"


    shaketargetmon 4, 7 // 4 times magnitude 7
    slideattackingmon -16, 8
    waitstate

    unloadparticle 0
    waitstate
    end

    unloadparticle 1
    waitstate
    end
    

.close
