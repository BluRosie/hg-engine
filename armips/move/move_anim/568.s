.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_568", 0

//Fell Stinger
a010_568:
    loadparticlefromspa 0, 542
    waitparticle

    //Stinger Projectile Launching With Releasing/Inertia Effect
    addparticle 0, 1, 3
    addparticle 0, 2, 3
    addparticle 0, 0, 3
    playsepanmod 2120, -64, 64, 4, 2

    //Small Circles Particles Following Stinger Towards Opponent
    addparticle 0, 4, 3
    wait 10

    //Stinger Hitting/Impacting Opposing Pokemon Sound Effect
    waitse 1905, 117, 3
    wait 10

    //Splash Effect On Enemy With Electric Effect Coming Off It
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    wait 10
    waitse 1952, 117, 2
    addparticle 0, 3, 4
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
