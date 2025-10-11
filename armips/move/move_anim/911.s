.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_911", 0

//Burning Bulwark
a010_911:
    loadparticlefromspa 0, 541
    waitparticle
    
    // Change Colour Of Target Pokemon And Begin Sound Effect
    playsepan 1965, -117
    callfunction 34, 6, 2, 0, 1, 31, 10, 20, "NaN", "NaN", "NaN", "NaN"
    
    // Shake Target Pokemon Specific Amount Of Times
    callfunction 36, 5, 3, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    
    // Background Colour Change    
    callfunction 33, 5, 0, 1, 0, 12, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    // Add Emitter 3 Short Flames Going Up
    wait 15
    addparticle 0, 3, 3
    wait 30

    // Add Emitter 5 Engulfing Flame Effect, Fire Spin Sound Effect
    playsepan 2034, 117
    addparticle 0, 5, 3
    wait 15
    
    //Background Colour Change Back To Normal
    callfunction 33, 5, 0, 1, 12, 0, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 30

    // Add Emitter 1 & Protect Sound Effect
    playsepan 1990, -117
    addparticle 0, 1, 3
    waitparticle
    
    unloadparticle 0
    waitstate
    end


.close