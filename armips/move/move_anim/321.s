.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_321", 0

a010_321:
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
    loadparticle 0, 217
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifcontest _0470
    jumpifside 0, _01E0, _02F0
    callfunction 34, 6, 2, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN"
    wait 2
    wait 8
    playsepan 2020, -117
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    callfunction 25, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 1
    playsepan 1928, 117
    callfunction 52, 3, 5, 10, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepan 1928, 117
    callfunction 52, 3, 10, -20, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    playsepan 1928, 117
    callfunction 52, 3, 5, 10, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    doloop
    waitparticle
    unloadparticle 0
    end
_01E0:
    callfunction 34, 6, 2, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN"
    wait 2
    wait 8
    playsepan 2020, -117
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    callfunction 25, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 1
    playsepan 1928, 117
    callfunction 52, 3, 5, 10, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepan 1928, 117
    callfunction 52, 3, 10, -20, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    playsepan 1928, 117
    callfunction 52, 3, 5, 10, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    doloop
    waitparticle
    unloadparticle 0
    end
_02F0:
    callfunction 34, 6, 2, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN"
    wait 2
    wait 8
    playsepan 2020, -117
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -8256, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -8256, 0, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 25, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 1
    playsepan 1928, 117
    callfunction 52, 3, 5, 10, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepan 1928, 117
    callfunction 52, 3, 10, -20, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    playsepan 1928, 117
    callfunction 52, 3, 5, 10, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    doloop
    waitparticle
    unloadparticle 0
    end
_0470:
    callfunction 34, 6, 2, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN"
    wait 2
    wait 8
    playsepan 2020, -117
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -8256, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -8256, 0, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 25, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 1
    playsepan 1928, 117
    callfunction 52, 3, 5, 10, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    playsepan 1928, 117
    callfunction 52, 3, 10, -20, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    playsepan 1928, 117
    callfunction 52, 3, 5, 10, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    doloop
    waitparticle
    unloadparticle 0
    end

.close
