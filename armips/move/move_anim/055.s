.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_055", 0

a010_055:
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
    loadparticle 0, 86
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifplayerattack _0160
    jumpifcontest _01F0
    addsequentialparticle 0, 2, 3, 4, 5, 7, 6, 0x12
    playsepanmod 1941, -117, 117, 4, 2
    wait 10
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    end
_0160:
    addparticlebasedonbattler 0, 9, 10, 9, 10, 0x3
    playsepanmod 1941, -117, 117, 4, 2
    wait 10
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    end
_01F0:
    addparticle 0, 8, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 0, 9976, -7568, 0, "NaN", "NaN", "NaN", "NaN"
    playsepanmod 1941, -117, 117, 4, 2
    wait 10
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    end

.close
