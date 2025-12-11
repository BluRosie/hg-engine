#ifndef POKEHEARTGOLD_UNK_0200E320_H
#define POKEHEARTGOLD_UNK_0200E320_H

#include "types.h"

typedef struct SysTaskQueue SysTaskQueue;
typedef struct SysTask SysTask;
typedef void (*SysTaskFunc)(SysTask *task, void *data);

typedef struct TaskManagerUnkSub1C {
    u32 unk0;
} TaskManagerUnkSub1C;

typedef struct TaskManager TaskManager;
typedef struct FieldSystem FieldSystem;

typedef BOOL (*TaskFunc)(TaskManager *taskman);

typedef struct SysTask {
    SysTaskQueue *queue;
    SysTask *prev;
    SysTask *next;
    u32 priority;
    void *data;
    SysTaskFunc func;
    u32 runNow;
} SysTask;

typedef struct SysTaskQueue {
    u16 limit;
    u16 activeCount;
    SysTask headSentinel;
    SysTask **taskStack;
    SysTask *taskList;
    BOOL isInsertingTask;
    SysTask *runningTask;
    SysTask *nextTask;
} SysTaskQueue;

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

SysTask *LONG_CALL CreateSysTask(SysTaskFunc func, void *data, int priority);
void LONG_CALL DestroySysTask(SysTask *task);
SysTask *LONG_CALL SysTask_CreateOnVBlankQueue(SysTaskFunc func, void *data, int priority);
void LONG_CALL TaskManager_Call(TaskManager *taskman, TaskFunc taskFunc, void *env);
BOOL LONG_CALL Task_TutorialBattle(TaskManager *taskManager);

#endif
