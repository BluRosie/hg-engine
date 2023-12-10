.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_679", 0

// Pollen Puff
// Covet bouncing around + Barrage

a010_679:
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
    callfunction 27, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 2025, -117, 2, 4
    wait 20
    loadparticle 0, 164
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle2 0, 1, 0, 3
    callfunction 66, 6, 1, 0, 0, 0, 15, 64, "NaN", "NaN", "NaN", "NaN"
    playsepanmod 2026, -117, 117, 4, 2
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    wait 15
    callfunction 68, 5, 0, 5, 1, 3, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1972, 117
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
