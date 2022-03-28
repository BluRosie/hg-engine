.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_479", 0

red equ 239 / 8
green equ 49 / 8
blue equ 57 / 8

a010_479:
    loadparticlefromspa 0, 493
    waitparticle

    addparticle 0, 2, 3
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    repeatse 1960, -117, 4, 10
    wait 64
    callfunction 34, 6, 2, 0, 1, red | green << 5 | blue << 10, 10, 10, "NaN", "NaN", "NaN", "NaN"
    wait 48

    unloadparticle 0
    waitstate
    end
    

.close
