//
// Created by os on 6/4/24.
//

#ifndef WAITSEMLIST_HPP
#define WAITSEMLIST_HPP
#include "PCB.hpp"
#include "../lib/mem.h"
#include "_sem.hpp"


class waitSemList {
public:
    waitSemList():head(nullptr), tail(nullptr){}
    struct waitSemElem {
        PCB *thread;
        waitSemElem *next;
    };

    waitSemElem *head;
    waitSemElem *tail;
    bool empty() { return head == nullptr; }

    PCB *get();

    void add(PCB *thread);
};


#endif //WAITSEMLIST_HPP
