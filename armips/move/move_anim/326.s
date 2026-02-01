.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_326", 0

//Extrasensory

a010_326:
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
    loadparticle 0, 344
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepanmod 1918, -117, 117, 4, 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    cmd1F 0x1, 0
    initspriteresource
    loadspriteresource 0
    callfunction 34, 5, 2, 0, 2, 49930, 10, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 37, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 3
    playsepanmod 2113, -117, 117, 4, 2
    wait 16
    doloop
    wait 40
    playsepan 1930, -117
    loadspritemaybe 0, 0, 0, 0
    loadspriteresource 4
    loadspritemaybe 2, 0, 4, 4
    cmd52 2, 0, 4
    callfunction 35, 8, 0, 8, 10, 15, 10, 1, 589833, 0, "NaN", "NaN"
    waitstate
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    cmd20 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
