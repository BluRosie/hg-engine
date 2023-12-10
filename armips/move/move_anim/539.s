.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_539", 0

// Leaf Tornado
// Twister + Leaf Blade leaves

a010_539:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 257
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd3E 0, 0
    addparticle 0, 0, 20
    addparticle 0, 1, 20
    wait 10
    playsepan 1837, 117
    wait 10
    callfunction 36, 5, 3, 0, 1, 15, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 3, 0, 1, 15, 272, "NaN", "NaN", "NaN", "NaN", "NaN"

    loadparticle 0, 366
    addparticle 0, 0, 4
    playsepan 2121, -117

    wait 40

    loadparticle 1, 32
    playsepan 1827, 117
    addparticle 1, 1, 4
    callfunction 36, 5, 3, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    playsepan 1827, 117
    addparticle 1, 1, 4
    wait 8
    playsepan 1827, 117
    addparticle 1, 1, 4
    wait 8

    waitparticle
    unloadparticle 0

    end

.close
