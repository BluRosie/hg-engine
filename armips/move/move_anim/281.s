.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_281", 0

a010_281:
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
    loadparticle 0, 299
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepanmod 2057, -117, 117, 4, 2
    callfunction 42, 8, 258, 100, 80, 100, 160, 100, 1, 327695, "NaN", "NaN"
    wait 5
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    wait 20
    repeatse 2047, 117, 4, 2
    addparticle 0, 1, 4
    callfunction 42, 8, 264, 100, 80, 100, 160, 100, 1, 327695, "NaN", "NaN"
    wait 20
    waitparticle
    unloadparticle 0
    end

.close
