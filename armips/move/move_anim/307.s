.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_307", 0
//blast burn
a010_307:
    jumpifside 0, _0014, _0FD4
    end
_0014:
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
    loadparticle 0, 325
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
    loadparticle 1, 84
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    repeatse 1968, -117, 1, 2
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 2, 0, 1, 1
    callfunction 75, 5, 0, 31, 3, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 75, 5, 1, 30, 3, 0, 2, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle2 0, 3, 0, 3
    callfunction 72, 10, 3, -90, -90, -90, -90, 48, 24, 7, 0, 0 //adds blast burn particles coming radially from user
    addparticle2 0, 4, 1, 3
    callfunction 72, 10, 4, -90, -90, -90, -90, 48, 24, 7, 0, 0
    addparticle2 0, 5, 2, 3
    callfunction 72, 10, 5, -90, -90, -90, -90, 48, 24, 7, 0, 0
    addparticle2 0, 6, 0, 3
    callfunction 72, 10, 6, -45, -45, -45, -45, 48, 24, 7, 0, 0
    addparticle2 0, 7, 1, 3
    callfunction 72, 10, 7, -45, -45, -45, -45, 48, 24, 7, 0, 0
    addparticle2 0, 8, 2, 3
    callfunction 72, 10, 8, -45, -45, -45, -45, 48, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 0, 0, 0, 0, 48, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 0, 0, 0, 0, 48, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 0, 0, 0, 0, 48, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 45, 45, 45, 45, 48, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 45, 45, 45, 45, 48, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 45, 45, 45, 45, 48, 24, 7, 0, 0
    addparticle2 0, 12, 0, 3
    callfunction 72, 10, 12, 90, 90, 90, 90, 48, 24, 7, 0, 0
    addparticle2 0, 13, 1, 3
    callfunction 72, 10, 13, 90, 90, 90, 90, 48, 24, 7, 0, 0
    addparticle2 0, 14, 2, 3
    callfunction 72, 10, 14, 90, 90, 90, 90, 48, 24, 7, 0, 0
    wait 8
    repeatse 1968, -117, 1, 2
    addparticle2 0, 3, 0, 3
    callfunction 72, 10, 3, -90, -90, -90, -90, 64, 24, 7, 0, 0
    addparticle2 0, 4, 1, 3
    callfunction 72, 10, 4, -90, -90, -90, -90, 64, 24, 7, 0, 0
    addparticle2 0, 5, 2, 3
    callfunction 72, 10, 5, -90, -90, -90, -90, 64, 24, 7, 0, 0
    addparticle2 0, 6, 0, 3
    callfunction 72, 10, 6, -45, -45, -45, -45, 64, 24, 7, 0, 0
    addparticle2 0, 7, 1, 3
    callfunction 72, 10, 7, -45, -45, -45, -45, 64, 24, 7, 0, 0
    addparticle2 0, 8, 2, 3
    callfunction 72, 10, 8, -45, -45, -45, -45, 64, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 0, 0, 0, 0, 64, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 0, 0, 0, 0, 64, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 0, 0, 0, 0, 64, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 45, 45, 45, 45, 64, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 45, 45, 45, 45, 64, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 45, 45, 45, 45, 64, 24, 7, 0, 0
    addparticle2 0, 12, 0, 3
    callfunction 72, 10, 12, 90, 90, 90, 90, 64, 24, 7, 0, 0
    addparticle2 0, 13, 1, 3
    callfunction 72, 10, 13, 90, 90, 90, 90, 64, 24, 7, 0, 0
    addparticle2 0, 14, 2, 3
    callfunction 72, 10, 14, 90, 90, 90, 90, 64, 24, 7, 0, 0
    wait 8
    repeatse 1968, -117, 1, 2
    addparticle2 0, 3, 0, 3
    callfunction 72, 10, 3, -90, -90, -90, -90, 92, 24, 7, 0, 0
    addparticle2 0, 4, 1, 3
    callfunction 72, 10, 4, -90, -90, -90, -90, 92, 24, 7, 0, 0
    addparticle2 0, 5, 2, 3
    callfunction 72, 10, 5, -90, -90, -90, -90, 92, 24, 7, 0, 0
    addparticle2 0, 6, 0, 3
    callfunction 72, 10, 6, -45, -45, -45, -45, 92, 24, 7, 0, 0
    addparticle2 0, 7, 1, 3
    callfunction 72, 10, 7, -45, -45, -45, -45, 92, 24, 7, 0, 0
    addparticle2 0, 8, 2, 3
    callfunction 72, 10, 8, -45, -45, -45, -45, 92, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 0, 0, 0, 0, 92, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 0, 0, 0, 0, 92, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 0, 0, 0, 0, 92, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 45, 45, 45, 45, 92, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 45, 45, 45, 45, 92, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 45, 45, 45, 45, 92, 24, 7, 0, 0
    addparticle2 0, 12, 0, 3
    callfunction 72, 10, 12, 90, 90, 90, 90, 92, 24, 7, 0, 0
    addparticle2 0, 13, 1, 3
    callfunction 72, 10, 13, 90, 90, 90, 90, 92, 24, 7, 0, 0
    addparticle2 0, 14, 2, 3
    callfunction 72, 10, 14, 90, 90, 90, 90, 92, 24, 7, 0, 0
    wait 8
    playsepan 2080, 117
    addparticle 1, 0, 4
    callfunction 34, 6, 8, 0, 1, 31, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    waitstate
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    callfunction 33, 5, 0, 1, 12, 0, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_0FD4:
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
    loadparticle 0, 325
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
    loadparticle 1, 84
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    repeatse 1968, -117, 1, 2
    addparticle2 0, 3, 0, 3
    callfunction 72, 10, 3, 90, 90, 90, 90, 48, 24, 7, 0, 0
    addparticle2 0, 4, 1, 3
    callfunction 72, 10, 4, 90, 90, 90, 90, 48, 24, 7, 0, 0
    addparticle2 0, 5, 2, 3
    callfunction 72, 10, 5, 90, 90, 90, 90, 48, 24, 7, 0, 0
    addparticle2 0, 6, 0, 3
    callfunction 72, 10, 6, 135, 135, 135, 135, 48, 24, 7, 0, 0
    addparticle2 0, 7, 1, 3
    callfunction 72, 10, 7, 135, 135, 135, 135, 48, 24, 7, 0, 0
    addparticle2 0, 8, 2, 3
    callfunction 72, 10, 8, 135, 135, 135, 135, 48, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 180, 180, 180, 180, 48, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 180, 180, 180, 180, 48, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 180, 180, 180, 180, 48, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 225, 225, 225, 225, 48, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 225, 225, 225, 225, 48, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 225, 225, 225, 225, 48, 24, 7, 0, 0
    addparticle2 0, 12, 0, 3
    callfunction 72, 10, 12, 270, 270, 270, 270, 48, 24, 7, 0, 0
    addparticle2 0, 13, 1, 3
    callfunction 72, 10, 13, 270, 270, 270, 270, 48, 24, 7, 0, 0
    addparticle2 0, 14, 2, 3
    callfunction 72, 10, 14, 270, 270, 270, 270, 48, 24, 7, 0, 0
    wait 8
    repeatse 1968, -117, 1, 2
    addparticle2 0, 3, 0, 3
    callfunction 72, 10, 3, 90, 90, 90, 90, 64, 24, 7, 0, 0
    addparticle2 0, 4, 1, 3
    callfunction 72, 10, 4, 90, 90, 90, 90, 64, 24, 7, 0, 0
    addparticle2 0, 5, 2, 3
    callfunction 72, 10, 5, 90, 90, 90, 90, 64, 24, 7, 0, 0
    addparticle2 0, 6, 0, 3
    callfunction 72, 10, 6, 135, 135, 135, 135, 64, 24, 7, 0, 0
    addparticle2 0, 7, 1, 3
    callfunction 72, 10, 7, 135, 135, 135, 135, 64, 24, 7, 0, 0
    addparticle2 0, 8, 2, 3
    callfunction 72, 10, 8, 135, 135, 135, 135, 64, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 180, 180, 180, 180, 64, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 180, 180, 180, 180, 64, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 180, 180, 180, 180, 64, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 225, 225, 225, 225, 64, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 225, 225, 225, 225, 64, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 225, 225, 225, 225, 64, 24, 7, 0, 0
    addparticle2 0, 12, 0, 3
    callfunction 72, 10, 12, 270, 270, 270, 270, 64, 24, 7, 0, 0
    addparticle2 0, 13, 1, 3
    callfunction 72, 10, 13, 270, 270, 270, 270, 64, 24, 7, 0, 0
    addparticle2 0, 14, 2, 3
    callfunction 72, 10, 14, 270, 270, 270, 270, 64, 24, 7, 0, 0
    wait 8
    repeatse 1968, -117, 1, 2
    addparticle2 0, 3, 0, 3
    callfunction 72, 10, 3, 90, 90, 90, 90, 92, 24, 7, 0, 0
    addparticle2 0, 4, 1, 3
    callfunction 72, 10, 4, 90, 90, 90, 90, 92, 24, 7, 0, 0
    addparticle2 0, 5, 2, 3
    callfunction 72, 10, 5, 90, 90, 90, 90, 92, 24, 7, 0, 0
    addparticle2 0, 6, 0, 3
    callfunction 72, 10, 6, 135, 135, 135, 135, 92, 24, 7, 0, 0
    addparticle2 0, 7, 1, 3
    callfunction 72, 10, 7, 135, 135, 135, 135, 92, 24, 7, 0, 0
    addparticle2 0, 8, 2, 3
    callfunction 72, 10, 8, 135, 135, 135, 135, 92, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 180, 180, 180, 180, 92, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 180, 180, 180, 180, 92, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 180, 180, 180, 180, 92, 24, 7, 0, 0
    addparticle2 0, 9, 0, 3
    callfunction 72, 10, 9, 225, 225, 225, 225, 92, 24, 7, 0, 0
    addparticle2 0, 10, 1, 3
    callfunction 72, 10, 10, 225, 225, 225, 225, 92, 24, 7, 0, 0
    addparticle2 0, 11, 2, 3
    callfunction 72, 10, 11, 225, 225, 225, 225, 92, 24, 7, 0, 0
    addparticle2 0, 12, 0, 3
    callfunction 72, 10, 12, 270, 270, 270, 270, 92, 24, 7, 0, 0
    addparticle2 0, 13, 1, 3
    callfunction 72, 10, 13, 270, 270, 270, 270, 92, 24, 7, 0, 0
    addparticle2 0, 14, 2, 3
    callfunction 72, 10, 14, 270, 270, 270, 270, 92, 24, 7, 0, 0
    wait 8
    playsepan 2080, 117
    addparticle 1, 0, 4
    callfunction 34, 6, 8, 0, 1, 31, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    callfunction 33, 5, 0, 1, 12, 0, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
