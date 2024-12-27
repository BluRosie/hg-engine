.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_833", 0

a010_833:
    //----断崖之剑的前半段特效---
	
	//前面一段应该是定义粒子类型，但是没有真正使用
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 432
    loadparticle 1, 434
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    //callfunction 33, 5, 0, 1, 0, 12, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

	//播放“撞击”的音效
    playsepan 1847, -117
	//精灵动作往前移
    callfunction 57, 4, 4, 16, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
	
	//表现粒子动画
	
	//一个圈缩小
    addparticle 1, 4, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
	
    addparticle 1, 2, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
	
    addparticle 1, 3, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
	
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
	
    addparticle 1, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
	//精灵动作往后缩
    callfunction 57, 4, 4, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate	
	
	
	//播放音效
    playsepan 1859, 117
	//画面晃动代码，背景画面上下晃动，敌方贴图左右晃一次
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    end


.close
