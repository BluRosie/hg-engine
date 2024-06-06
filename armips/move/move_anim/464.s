.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_464", 0

a010_464:
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
    loadparticle 0, 482
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
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
    loadparticle 1, 482
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, -1
    changebg 44, 0x800001
    waitforchangebg
    jumpifside 0, _0504, _01B8
    end
_01B8:
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -860, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 2105, 117
    cmd3E 1, 0
    addparticle 1, 1, 17
    cmd37 6, 2, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -600, -4500, -600, "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 2, 17
    cmd37 6, 2, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -600, -4500, -600, "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 1, 0, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 1, 0, 4, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 57, 4, 1, 0, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 57, 4, 1, 0, 4, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 57, 4, 1, 0, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 57, 4, 1, 0, 8, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    wait 5
    waitse 1894, 117, 15
    loop 16
    callfunction 57, 4, 1, 0, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 1, 0, 4, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    doloop
    wait 20
    waitparticle
    unloadparticle 0
    unloadparticle 1
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, -1
    cmd0C 4, 1
    resetbg 44, 0x1000001
    waitforchangebg
    callfunction 57, 4, 1, 0, -80, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 1, 0, -80, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    end
_0504:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 1, 0, 0, 0
    loadspritemaybe 3, 0, 1, 1
    callfunction 75, 7, 0, 80, 3, 0, 1, 255, 1, "NaN", "NaN", "NaN"
    callfunction 75, 7, 1, 80, 3, 0, 3, 255, 1, "NaN", "NaN", "NaN"
    wait 1
    callfunction 40, 2, 8, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 40, 2, 16, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 2105, 117
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -860, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 1, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 2, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    waitse 1894, 117, 35
    waitparticle
    unloadparticle 0
    unloadparticle 1
    waitstate
    wait 1
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, -1
    cmd0C 4, 1
    resetbg 44, 0x1000001
    waitforchangebg
    callfunction 40, 2, 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 40, 2, 16, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    end

.close
