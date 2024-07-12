.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_451", 0

a010_451:
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
    loadparticle 0, 469
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifplayerattack _0204
    jumpifcontest _0338
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 10, 3
    addparticle 0, 11, 3
    addparticle 0, 12, 3
    addparticle 0, 13, 3
    repeatse 1882, -117, 4, 5
    wait 80
    playsepanmod 1895, -117, 117, 4, 2
    addsequentialparticle 0, 1, 2, 3, 4, 5, 6, 0x12
    wait 5
    callfunction 36, 5, 2, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 13311, 10, 10, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_0204:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 10, 3
    addparticle 0, 11, 3
    addparticle 0, 12, 3
    addparticle 0, 13, 3
    repeatse 1882, -117, 4, 5
    wait 80
    playsepanmod 1895, -117, 117, 4, 2
    addparticlebasedonbattler 0, 8, 9, 8, 9, 0x3
    wait 5
    callfunction 36, 5, 2, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 13311, 10, 10, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_0338:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 10, 3
    addparticle 0, 11, 3
    addparticle 0, 12, 3
    addparticle 0, 13, 3
    repeatse 1882, -117, 4, 5
    wait 80
    playsepanmod 1895, -117, 117, 4, 2
    addparticle 0, 7, 0
    wait 5
    callfunction 36, 5, 2, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 13311, 10, 10, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
