.nds
.thumb

.include "armips/include/animscriptcmd.s"

.create "build/move/move_anim/0_676", 0

a010_676:
    loadparticlefromspa 0, 486
    waitparticle

    addparticle 0, 2, 3
    addparticle 0, 1, 3
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    wait 10

    addparticle 0, 1, 3
    addparticle 0, 1, 3
    wait 10

    addparticle 0, 2, 3
    addparticle 0, 0, 3
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
