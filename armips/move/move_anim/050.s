.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_050", 0

a010_050:
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
    loadparticle 0, 81
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifcontest _0568
    jumpifside 0, _0258, _03E0
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 0, -4128, 0, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1840, -117
    wait 5
    callfunction 74, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepan 1838, 117
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0
    wait 1
    loadspriteresource 4
    loadspritemaybe 3, 0, 4, 4
    cmd52 3, 0, 4
    callfunction 35, 8, 1, 8, 10, 12, 10, 1, 589833, 0, "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 6342, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 63, 6, 2, 0, 1, 14, 14, 6342, "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 74, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    end
_0258:
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 4128, 6192, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1840, -117
    wait 5
    callfunction 74, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepan 1838, 117
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0
    wait 1
    loadspriteresource 4
    loadspritemaybe 3, 0, 4, 4
    cmd52 3, 0, 4
    callfunction 35, 8, 1, 8, 10, 12, 10, 1, 589833, 0, "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 6342, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 63, 6, 2, 0, 1, 14, 14, 6342, "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 74, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    end
_03E0:
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -4128, 6192, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1840, -117
    wait 5
    callfunction 74, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepan 1838, 117
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0
    wait 1
    loadspriteresource 4
    loadspritemaybe 3, 0, 4, 4
    cmd52 3, 0, 4
    callfunction 35, 8, 1, 8, 10, 12, 10, 1, 589833, 0, "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 6342, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 63, 6, 2, 0, 1, 14, 14, 6342, "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 74, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    end
_0568:
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -4128, 6192, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1840, -117
    wait 5
    callfunction 74, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepan 1838, 117
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0
    wait 1
    loadspriteresource 4
    loadspritemaybe 3, 0, 4, 4
    cmd52 3, 0, 4
    callfunction 35, 8, 1, 8, 10, 12, 10, 1, 589833, 0, "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 6342, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 63, 6, 2, 0, 1, 14, 14, 6342, "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 74, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    end

.close
