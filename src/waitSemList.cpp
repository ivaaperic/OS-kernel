//
// Created by os on 6/4/24.
//

#include "../h/_sem.hpp"
#include "../h/waitSemList.hpp"
#include "../h/syscall_c.hpp"

PCB *waitSemList::get() {
    if (empty()) return nullptr;
    PCB *first = head->thread;
    waitSemElem *p = head;
    head = head->next;
    if (empty())tail = nullptr;
    mem_free(p);
    return first;
}

void waitSemList::add(PCB *thread) {
    waitSemElem *elem = (waitSemElem *) mem_alloc(sizeof(waitSemElem));
    elem->thread = thread;
    elem->next = nullptr;
    if (tail) {
        tail->next = elem;
        tail = elem;
    } else {
        head = elem;
        tail = head;
    }
}
