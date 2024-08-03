#ifndef POKEHEARTGOLD_OPTIONS_H
#define POKEHEARTGOLD_OPTIONS_H

#include "save.h"

typedef struct Options {
    u16 textSpeed:4;
    u16 soundMethod:2;
    u16 battleStyle:1;
    u16 battleScene:1;
    u16 buttonMode:2;
    u16 frame:5;
    u16 dummy:1;
} Options;

#endif