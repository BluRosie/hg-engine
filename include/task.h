#ifndef POKEHEARTGOLD_UNK_0200E320_H
#define POKEHEARTGOLD_UNK_0200E320_H

#include "types.h"

typedef struct SysTask SysTask;
typedef void (*SysTaskFunc)(SysTask *task, void *data);

SysTask *__attribute__((long_call)) CreateSysTask(SysTaskFunc func, void *data, int priority);
void __attribute__((long_call)) DestroySysTask(SysTask *task);

#endif
