.nds
.thumb

.include "armips/include/animscriptcmd.s"

.create "build/move/move_anim/0_599", 0

//Spiky Shield
a010_599:
    loadparticlefromspa 0, 544
    waitparticle
    
    // Set camera/sprite mask state
    cmd3E 0, 0

    // 1. Spawns Emitter 1 (The green circle spiky animation intro)
    addparticle 0, 1, 17
    cmd37 6, 2, 0, 2, 26, 0, 0, "NAN", "NAN"
        
    // Spawns Emitter 2 (The Spikes)
    addparticle 0, 2, 17
    cmd37 6, 2, 0, 2, 26, 0, 0, "NAN", "NAN"
    
    // Restore normal sprite presentation state
    wait 35
    cmd3E 0, 1
    
    // 3. Spawns Emitter 0 (Protect Animation & Sound Effect)
    playsepan 1990, -117
    addparticle 0, 0, 3

    waitparticle
    unloadparticle 0
    waitstate
    end

.close