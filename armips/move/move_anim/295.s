.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_295", 0

a010_295:
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
    loadparticle 0, 313
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1957, -117
    addparticle 0, 1, 3
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    addparticle 0, 4, 3
    wait 60
    callfunction 33, 5, 0, 1, 0, 16, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2050, 0, 1, 32767, 16, 30, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2056, 0, 1, 32767, 16, 30, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2052, 0, 1, 32767, 16, 30, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2064, 0, 1, 32767, 16, 30, "NaN", "NaN", "NaN", "NaN"
    wait 20
    repeatse 1926, 117, 4, 8
    addparticle 0, 0, 4
    wait 20
    callfunction 33, 5, 0, 1, 16, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 4, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
