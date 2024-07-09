.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_317", 0

a010_317:
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
    loadparticle 0, 335
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
    loadparticle 1, 335
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    wait 10
    repeatse 1954, 117, 4, 4
    wait 20
    cmd3E 1, 0
    jumpifside 1, _01E4, _03E4
    end
_01E4:
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -6000, 0, 3000, "NaN", "NaN", "NaN", "NaN"
    playsepan 1951, 117
    wait 5
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 4000, 0, 3000, "NaN", "NaN", "NaN", "NaN"
    playsepan 1951, 117
    wait 5
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 1000, 1000, -4000, "NaN", "NaN", "NaN", "NaN"
    playsepan 1951, 117
    wait 5
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -1000, -1000, 4000, "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1951, 117
    waitparticle
    unloadparticle 0
    unloadparticle 1
    end
_03E4:
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -6000, -3000, 3000, "NaN", "NaN", "NaN", "NaN"
    playsepan 1951, 117
    wait 5
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 4000, -3000, 3000, "NaN", "NaN", "NaN", "NaN"
    playsepan 1951, 117
    wait 5
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 1000, 1000, -4000, "NaN", "NaN", "NaN", "NaN"
    playsepan 1951, 117
    wait 5
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -1000, -3000, 4000, "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1951, 117
    waitparticle
    unloadparticle 0
    unloadparticle 1
    end

.close
