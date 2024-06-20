.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_501", 0

// chip away move animation

red equ 31
green equ 31
blue equ 31

a010_501:
    loadparticlefromspa 0, 513
    waitparticle


    // rotate mon like rolling kick
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 1
    loadspriteresource 4
    loadspritemaybe 2, 0, 4, 4
    cmd52 2, 0, 4
    wait 1
    callfunction 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    cmd53 0
    resetsprite 4


    wait 1

    callfunction 36, 5, 3, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
