.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_787", 0

// Breaking Swipe
// Slam animation

a010_787:
    loadparticlefromspa 0, 52

    addparticle 0, 0, ANIM_TARGET_MISC
    cmd37 6, 0, 0, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, ANIM_TARGET_MISC
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    callfunction 57, 4, 2, 14, 4, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 57, 4, 2, -14, -4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 2, -14, -4, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 2, -14, -4, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 4, 14, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 4, 14, 4, 272, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1920, 117
    waitparticle

    unloadparticle 0
    end

.close
