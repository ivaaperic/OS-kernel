//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP


#include "../lib/hw.h"
#include "scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "MemoryAllocator.hpp"
// static int id = 0;

class PCB {
public:
    ~PCB() { delete[] stack; }

    enum threadState {
        CREATED, READY, RUNNING, SLEEPING, BLOCKED, FINISHED, IDLE
    };

    bool isSystem() const { return system; }

    void setSystem(bool value) { system = value; }

    bool isParentWaitng() const { return isWaiting; }

    void parentNotWaitng() { isWaiting = false; }

    PCB *getParent() const { return parent; }

    void setParent(PCB *pcb) { parent = pcb; }

    using Body = void (*)(void *);

    static thread_t create_thread(Body body, void *arg, uint64 *stack_space);

    static void yield();

    static void dispatch();

    threadState getState() const { return state; }

    void setState(threadState st) { state = st; }
    static PCB *running;
    static PCB *main;

    static int thread_exit();

private:
    // stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    // body != nullptr ? (uint64) body : 0,
    // PCB(Body body, void *arg, uint64 *stack) : body(body), arg(arg),
    //                                            stack(stack),
    //                                            context({
    //                                                body != nullptr ? (uint64) &threadWrapper : 0,
    //                                                stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    //                                            }) {
    //     state = CREATED;
    //     threadId = id++;
    //     if (body != nullptr) { Scheduler::put(this); }
    // }


    struct Context {
        uint64 ra;
        uint64 sp;

        Context(uint64 rap, uint64 spp): ra(rap), sp(spp) {
        }

        Context(): ra(0), sp(0) {
        }
    };

    Body body;
    void *arg;
    int threadId;
    uint64 *stack;
    Context context;
    threadState state;
    PCB *parent; //trebace mi mozda za join ako ga budem pravila?
    bool system;
    bool isWaiting;
    friend class Riscv;
    friend class Scheduler;
    friend class _sem;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);


    static int sleep(time_t t);

    // uint64 ma= DEFAULT_STACK_SIZE; 4096
    static uint64 constexpr STACK_SIZE = DEFAULT_STACK_SIZE;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP

