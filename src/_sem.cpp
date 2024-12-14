//
// Created by os on 6/4/24.
//

#include "../h/_sem.hpp"

sem_t _sem::open(unsigned init) {
    sem_t sem = (sem_t) mem_alloc(sizeof(_sem));
    if (!sem) return nullptr;
    sem->value = init;
    sem->opened = true;
    sem->waitlist = new waitSemList();
    return sem;
}

int _sem::wait(sem_t id) {
    if (!id)return -1;
    if (!id->opened) { return -1; }
    if (--id->value < 0) {
        PCB::running->setState(PCB::BLOCKED);
        id->waitlist->add(PCB::running);
        PCB::dispatch();
    }
    return id->opened ? 0 : -1;
}

int _sem::trywait(sem_t id) {
    if (!id)return -1;
    if (!id->opened) {
        return -1;
    }
    if (--id->value >= 0) {
        return 1;
    }
    return 0;
}

int _sem::signal(sem_t id) {
    if (!id) return -1;
    if (!id->opened) { return -1; }
    if (++id->value <= 0) {
        PCB *thread = id->waitlist->get();
        thread->setState(PCB::READY);
        Scheduler::put(thread);
    }
    return 0;
}

int _sem::close(sem_t handler) {
    if (!handler) { return -1; }
    if (!handler->opened) { return -1; }
    handler->opened = false;
    handler->value = 0;

    while (!handler->waitlist->empty() && handler->waitlist->head->thread) {
        PCB *thread = handler->waitlist->get();
        thread->setState(PCB::READY);
        Scheduler::put(thread);
    }
    delete handler->waitlist;
    mem_free(handler);
    return 0;
}
