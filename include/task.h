#ifndef POKEHEARTGOLD_UNK_0200E320_H
#define POKEHEARTGOLD_UNK_0200E320_H

#include "types.h"

typedef struct SysTask SysTask;
typedef void (*SysTaskFunc)(SysTask *task, void *data);

typedef struct TaskManagerUnkSub1C {
    u32 unk0;
} TaskManagerUnkSub1C;

typedef struct TaskManager TaskManager;
typedef struct FieldSystem FieldSystem;

typedef BOOL (*TaskFunc)(TaskManager *taskman);

struct TaskManager { //declared in field_system.h
    TaskManager *prev;
    TaskFunc func;
    u32 state;
    void *env;
    u32 unk10;
    void *unk14;
    FieldSystem *fieldSystem;
    TaskManagerUnkSub1C *unk1C; // size=4
};

SysTask *__attribute__((long_call)) CreateSysTask(SysTaskFunc func, void *data, int priority);
void __attribute__((long_call)) DestroySysTask(SysTask *task);

#endif
