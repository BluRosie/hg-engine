.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_463", 0

a010_463:
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
    loadparticle 0, 481
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
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
    loadparticle 1, 481
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
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
    loadparticle 2, 481
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, 32
    changebg 43, 0x20001
    waitforchangebg
    playsepan 2104, 117
    addparticle2 0, 0, 0, 3
    callfunction 72, 10, 0, 0, 360, 0, 360, 64, 48, 40, 1, 0
    addparticle2 0, 1, 1, 3
    callfunction 72, 10, 1, 0, 360, 0, 360, 64, 48, 40, 1, 0
    addparticle2 0, 2, 2, 3
    callfunction 72, 10, 2, 0, 360, 0, 360, 64, 48, 40, 1, 0
    wait 5
    callfunction 34, 6, 8, 0, 3, 31, 10, 10, "NaN", "NaN", "NaN", "NaN"
    addparticle2 0, 3, 0, 3
    callfunction 72, 10, 3, 0, 360, 0, 360, 64, 48, 40, 1, 0
    addparticle2 0, 4, 1, 3
    callfunction 72, 10, 4, 0, 360, 0, 360, 64, 48, 40, 1, 0
    addparticle2 0, 5, 2, 3
    callfunction 72, 10, 5, 0, 360, 0, 360, 64, 48, 40, 1, 0
    wait 5
    addparticle2 1, 0, 0, 3
    callfunction 72, 10, 0, 0, 360, 0, 360, 64, 48, 40, 1, 1
    addparticle2 1, 1, 1, 3
    callfunction 72, 10, 1, 0, 360, 0, 360, 64, 48, 40, 1, 1
    addparticle2 1, 2, 2, 3
    callfunction 72, 10, 2, 0, 360, 0, 360, 64, 48, 40, 1, 1
    wait 5
    addparticle2 1, 3, 0, 3
    callfunction 72, 10, 3, 0, 360, 0, 360, 64, 48, 40, 1, 1
    addparticle2 1, 4, 1, 3
    callfunction 72, 10, 4, 0, 360, 0, 360, 64, 48, 40, 1, 1
    addparticle2 1, 5, 2, 3
    callfunction 72, 10, 5, 0, 360, 0, 360, 64, 48, 40, 1, 1
    wait 5
    addparticle2 2, 0, 0, 3
    callfunction 72, 10, 0, 0, 360, 0, 360, 64, 48, 40, 1, 2
    addparticle2 2, 1, 1, 3
    callfunction 72, 10, 1, 0, 360, 0, 360, 64, 48, 40, 1, 2
    addparticle2 2, 2, 2, 3
    callfunction 72, 10, 2, 0, 360, 0, 360, 64, 48, 40, 1, 2
    wait 5
    waitparticle
    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, 32
    resetbg 43, 0x40001
    waitforchangebg
    end

.close
