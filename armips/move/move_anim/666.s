.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_666", 0

// Darkest Lariat
// Submission with red background

a010_666:
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
    loadparticle 0, 97
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3

    callfunction 33, 5, 0, 1, 0, 12, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"

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
    loadparticle 1, 35
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 10, 3, 7, 10, 2, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 10, 3, 7, 10, 8, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    waitse 1983, -117, 1
    waitse 1920, 117, 10
    waitse 1983, -117, 10
    waitse 1920, 117, 20
    waitse 1983, -117, 20
    waitse 1920, 117, 30
    waitse 1983, -117, 30
    waitse 1920, 117, 40
    waitse 1983, -117, 40
    waitse 1920, 117, 50
    waitse 1983, -117, 50
    waitse 1920, 117, 60
    waitse 1983, -117, 60
    waitse 1920, 117, 70
    waitse 1983, -117, 70
    waitse 1920, 117, 80
    loop 5
    wait 8
    addparticle 1, 0, 4
    doloop
    waitparticle
    unloadparticle 0
    unloadparticle 1

    callfunction 33, 5, 0, 1, 12, 0, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"

    waitstate
    end

.close
