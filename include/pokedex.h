#pragma once

#include "types.h"

struct Save_DexData
{
    u32 zukan_magic;                            ///<マジックナンバー
    u32 get_flag[16];          ///<捕まえたフラグ用ワーク
    u32 see_flag[16];          ///<見つけたフラグ用ワーク
    u32 sex_flag[2][16];       ///<オスメスフラグ用ワーク
    u32 PachiRandom;                            ///<パッチール用個性乱数保持ワーク
    
    u8 SiiusiTurn;                              ///<シーウシ用見つけた順保持ワーク		2bit必要	1bit*2種類
    u8 SiidorugoTurn;                           ///<シードルゴ用見つけた順保持ワーク	2bit必要	1bit*2種類
    u8 MinomuttiTurn;                           ///<ミノムッチ用見つけた順保持ワーク	6bit必要	2bit*3種類
    u8 MinomesuTurn;                            ///<ミノメス用見つけた順保持ワーク		6bit必要	2bit*3種類
    
    u16 UnknownTurn[28];

    //旧的文本flag，现在拿来做其他内存， 0x144
    u8 count_lure;
    u8 shiny_flag;
    u16 link_caught_count;
    u16 lure;
};
