.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_696", 0

// Brutal Swing
// Punishment animation

a010_696:
    loadparticlefromspa 0, 404

    playsepan 1983, 117
    waitse 2123, 117, 10
    addparticle 0, 2, ANIM_TARGET_MISC
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, ANIM_TARGET_MISC
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 0, ANIM_TARGET_MISC
    cmd37 6, 0, 0, 2, 0, 0, 0, "NaN", "NaN"
    wait 5
    shakeallbutuser 1, 2

    playsepan 1827, 117
    waitparticle
    unloadparticle 0
    end

.close
