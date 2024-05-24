.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_311", 0

a010_311:
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
    loadparticle 0, 329
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 42, 8, 258, 100, 100, 100, 140, 100, 1, 327685, "NaN", "NaN"
    playsepan 2026, -117
    addparticle 0, 1, 3
    addparticle 0, 2, 3
    wait 25
    playsepan 2020, 0
    callfunction 33, 5, 0, 0, 0, 8, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 33, 5, 0, 0, 8, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    wait 10
    jumpbasedonweather _0190, _02E8, _0488, _0218, _03B8
    end
_0190:
    repeatse 2010, 117, 2, 7
    addparticle 0, 3, 4
    addparticle 0, 8, 4
    addparticle 0, 0, 4
    playsepan 2003, -117
    wait 20
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end
_0218:
    callfunction 33, 5, 0, 1, 0, 10, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    repeatse 2010, 117, 2, 7
    addparticle 0, 4, 4
    addparticle 0, 9, 4
    addparticle 0, 0, 4
    playsepan 2003, -117
    wait 20
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 10, 0, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_02E8:
    callfunction 33, 5, 0, 1, 0, 10, 49930, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    repeatse 2010, 117, 2, 7
    addparticle 0, 5, 4
    addparticle 0, 10, 4
    addparticle 0, 0, 4
    playsepan 2003, -117
    wait 20
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 10, 0, 49930, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_03B8:
    callfunction 33, 5, 0, 1, 0, 10, 13741, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    repeatse 2010, 117, 2, 7
    addparticle 0, 6, 4
    addparticle 0, 11, 4
    addparticle 0, 0, 4
    playsepan 2003, -117
    wait 20
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 10, 0, 13741, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_0488:
    callfunction 33, 5, 0, 1, 0, 10, 797, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    repeatse 2010, 117, 2, 7
    addparticle 0, 7, 4
    addparticle 0, 12, 4
    addparticle 0, 0, 4
    playsepan 2003, -117
    wait 20
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 10, 0, 797, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
