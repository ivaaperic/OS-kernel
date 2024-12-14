//
// Created by marko on 20.4.22..
//

#include "../h/PCB.hpp"
#include "../h/riscv.hpp"

PCB *PCB::running = nullptr;

thread_t PCB::create_thread(Body body, void *arg, uint64 *stack_space) {
    thread_t handle = (thread_t) MemoryAllocator::mem_alloc(sizeof(PCB));
    handle->body = body;
    handle->arg = arg;
    handle->stack = stack_space;
    if (body != nullptr)handle->context.ra = (uint64) &threadWrapper;
    else handle->context.ra = 0;
    if (stack_space != nullptr)handle->context.sp = (uint64) &stack_space[STACK_SIZE];
    else handle->context.sp = 0;
    handle->state = CREATED;
    // handle->threadId = id++;
    if (body != nullptr) { Scheduler::put(handle); }
    return handle;

    // *handle = new PCB(body, arg, stack_space);
    // if (!handle) return -1;
    // return 0;
}


int PCB::thread_exit() {
    if (running->state != FINISHED) {
        running->setState(FINISHED);
        thread_dispatch();
        return 0;
    } else return -1;
}

void PCB::yield() {
    uint64 code = 0x13;
    __asm__ volatile ("mv a0,%0"::"r"(code));
    __asm__ volatile("ecall");
}

void PCB::dispatch() {
    PCB *old = running;
    if (old && old->state != FINISHED && old->state != BLOCKED) { Scheduler::put(old); }
    running = Scheduler::get();

    if (old != running && running != nullptr) {
        Riscv::pushRegisters();
        contextSwitch(&old->context, &running->context);
        Riscv::popRegisters();
    }
}

void PCB::threadWrapper() {
    Riscv::popSppSpie();
    // if (running->body == nullptr)sMode();
    // else uMode();
    running->body(running->arg);
    running->state = FINISHED;
    thread_dispatch();
}
