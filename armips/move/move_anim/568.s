.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_568", 0
//致命针刺
a010_568:
    //----这部分主要在初始化和加载需要的图形资源。---
    // 加载资源0-3
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3

    // 加载额外的资源
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3


    // 加载粒子效果
    loadparticle 0, 71
    waitstate

    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    
    waitstate

    //影响背景是否是动态的命令
    cmd0C 0, -32
    //改变背景
    changebg 13, 0x20001
    waitforchangebg 

    //影响我方的精灵动作，作冲击状
    callfunction 47, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
 
    addparticle 0, 2, 17

    // 可能是控制camera或视角的命令
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"

    addparticle 0, 1, 4

    //毒针冒有毒气泡的动画效果
    //addparticle 0, 0, 4





    // 播放带有声道调制的音效
    playsepanmod 2120, -117, 117, 4, 2
    wait 5

    // 影响对面的精灵动作 被冲击状
    callfunction 48, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5

     // 影响对面的精灵动作
    callfunction 68, 5, 5, 0, 1, 6, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
 


    callfunction 34, 6, 8, 0, 1, 31764, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 1, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    
    waitse 1905, 117, 3
    repeatse 1979, 117, 8, 4
    waitstate
    waitparticle
    unloadparticle 0

    // 重置背景
    resetbg 13, 0x40001
    waitforchangebg
    end

.close
