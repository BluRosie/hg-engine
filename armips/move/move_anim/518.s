.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_518", 0

// Final Gambit
// Will-O-Wisp with a darkened background and Double-Edge collision sound

a010_518:
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
    loadparticle 0, 279
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3

    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    wait 20

    playsepanmod 1937, -117, 117, 4, 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 1, 16, 0, "NaN", "NaN"
    cmd37 5, 3, 0, 0, 0, 0, "NaN", "NaN", "NaN"
    wait 30
    addparticle 0, 1, 4
    playsepan 1847, 117
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0

    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    end

.close
