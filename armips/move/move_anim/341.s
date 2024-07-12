.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_341", 0

a010_341:
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
    loadparticle 0, 359
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifplayerattack _0170
    jumpifcontest _01EC
    playsepanmod 2045, -117, 117, 4, 2
    addsequentialparticle 0, 0, 3, 6, 7, 8, 9, 0x12
    wait 10
    addparticle 0, 14, 4
    callfunction 36, 5, 2, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 2, 1098, 14, 0, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end
_0170:
    playsepanmod 2045, -117, 117, 4, 2
    addparticlebasedonbattler 0, 11, 12, 11, 12, 0x3
    wait 10
    addparticle 0, 14, 4
    callfunction 36, 5, 2, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end
_01EC:
    playsepanmod 2045, -117, 117, 4, 2
    addparticle 0, 10, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 0, 11008, -8256, 0, "NaN", "NaN", "NaN", "NaN"
    wait 10
    addparticle 0, 14, 4
    callfunction 36, 5, 2, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
