.nds
.thumb
.include "armips/include/animscriptcmd.s"

//mega

.create "build/move/move_anim/0_470", 0x0

MegaAnimScript:
	//加载编号为489，490的粒子效果
    loadparticlefromspa 0, 489
    loadparticlefromspa 1, 490
	loadparticlefromspa 1, 500

	//等待粒子效果结束
    waitparticle

	//播放声音
	playsepanmod 1958, -117, 117, 4, 2
	wait 15

	//改变背景
    //changebg 14, 0x800001
	changebg 47, 0x020001
    waitforchangebg
	

	//添加粒子效果，并等待15帧。
    addparticle 0,0,3
    addparticle 0,8,3
    wait 15

	//添加更多的粒子效果。
    addparticle 0,1,3
    addparticle 0,2,3
	wait 30

	//调用函数
    //callfunction 0x22, 6, 2, 0, 1, 0x7FFF, 10, 100, 0, 0, 0, 0
    addparticle 1, 1, 3
    addparticle 0, 3, 3
    addparticle 0, 4, 3
    addparticle 0, 5, 3
    addparticle 0, 7, 3
    wait 15
    //addparticle 1, 1, 3
    //addparticle 0, 6, 3
    //addparticle 1, 1, 3
    wait 15
	
	//卸载编号为1的粒子效果，加载新的粒子效果107
    unloadparticle 1
    loadparticlefromspa 1, 107
    //waitparticle

    addparticle 1,8,3
    addparticle 1,9,3
    addparticle 1,10,3

    wait 15
    callfunction 0x24, 5, 2, 0, 1, 4, 8 | 0x100, 0, 0, 0, 0, 0

    wait 15
	
	//调用变身（技能）的动画,会导致melonds卡住
    //callfunction 69, 4, 0, 1, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
	
    transform 0
    waitstate
    addparticle 0, 10, 3
    addparticle 0, 12, 3
    wait 30
    unloadparticle 0
	
	//播放叫声
    playcry 0, -117, 127
    waitcry 0
    wait 15

	//重置背景
    resetbg 47, 0x040001

    waitstate
    waitforchangebg

    //waitparticle

    unloadparticle 1
    waitstate

    end

.close