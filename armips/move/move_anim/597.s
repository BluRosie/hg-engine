.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_597", 0

// Water Shuriken
// Last part of Aqua Jet/Dive (not sure which)
// also include water shuriken particle made by Twist for white 2

a010_597:
    loadparticlefromspa 0, 309
    waitparticle
    loadparticlefromspa 1, 524
    waitparticle

    addparticle 1, 0, ANIM_TARGET_MISC
    moveaxistotarget 1, 0
    playsepanmod 2075, -117, 117, 4, 2
    wait 5

    repeatse 2060, 117, 3, 4
    addparticle 0, 1, ANIM_TARGET_MISC
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -3440, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, ANIM_TARGET_MISC
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -3440, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, ANIM_TARGET_MISC
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -3440, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"

    waitparticle
    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    
.close
