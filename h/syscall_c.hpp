//
// Created by os on 5/8/23.
//

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP
#include "../lib/hw.h"
#include "../lib/console.h"


void *mem_alloc(size_t size);

int mem_free(void *ptr);

class PCB;
typedef PCB *thread_t;

int thread_create(
        thread_t *handle,
        void (*start_routine)(void *),
        void *arg
);

int thread_exit();

void thread_dispatch();

class _sem;
typedef _sem *sem_t;

int sem_open(
        sem_t *handle,
        unsigned init
);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

int sem_trywait(sem_t id);

//
// typedef unsigned long time_t;
//
// int time_sleep(time_t);
const int EOF = -1;

char getc();

void putc(char);

void uMode();

void sMode();

#endif //PROJECT_BASE_SYSCALL_C_HPP
