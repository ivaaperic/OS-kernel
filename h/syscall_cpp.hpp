//
// Created by os on 5/8/23.
//

#ifndef PROJECT_BASE_SYSCALL_CPP_HPP
#define PROJECT_BASE_SYSCALL_CPP_HPP
#include "MemoryAllocator.hpp"
#include "PCB.hpp"
#include "syscall_c.hpp"

void *operator new(size_t);

void operator delete(void *);

void *operator new[](size_t);

void operator delete[](void *ptr);

class PCB;
typedef PCB *thread_t;

class Thread {
public:
    Thread(void (*body)(void *), void *arg): body(body), arg(arg) {
    }


    virtual ~Thread() {
        myHandle->setState(PCB::FINISHED);
        delete myHandle;
    }

    int start() {
        thread_create(&this->myHandle, body, arg);
        return 0;
    }

    void join();

    static void dispatch() {
        thread_dispatch();
    }

    static int sleep(time_t);

protected:
    Thread() {
        this->body = thread_wrapper;
        this->arg = this;
    }

    virtual void run() {
    }

private:
    thread_t myHandle;

    void (*body)(void *);

    static void thread_wrapper(void *t) {
        ((Thread *) t)->run();
    }

    void *arg;
};

class Semaphore {
public:
    Semaphore(unsigned init = 1) {
        sem_open(&myHandle, init);
    }

    virtual ~Semaphore() {
        if (myHandle != nullptr) {
            sem_close(myHandle);
        }
    }

    int wait() {
        if (myHandle != nullptr) {
            return sem_wait(myHandle);
        }
        return -1;
    }

    int signal() {
        if (myHandle != nullptr) {
            return sem_signal(myHandle);
        }
        return -1;
    }

private:
    sem_t myHandle;
};

class Console {
public:
    static char getc();

    static void putc(char);
};

#endif //PROJECT_BASE_SYSCALL_CPP_HPP
