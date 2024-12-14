//
// Created by os on 6/4/24.
//

#ifndef _SEM_HPP
#define _SEM_HPP


#include "list.hpp"
#include "syscall_c.hpp"
#include "waitSemList.hpp"
#include "MemoryAllocator.hpp"


class _sem {
    int value;
    waitSemList *waitlist;

public:
    static int close(sem_t handler);

    friend class PCB;

    static sem_t open(unsigned int init = 1);

    static int wait(sem_t id);

    static int signal(sem_t id);

    static int trywait(sem_t id);

    unsigned getValue() const { return value; }
    void setValue(unsigned value) { this->value = value; }

protected:
    bool opened;
};


#endif //_SEM_HPP
