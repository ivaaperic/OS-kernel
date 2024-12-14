//
// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"

List<PCB> Scheduler::readyCoroutineQueue;

PCB *Scheduler::get() {
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(PCB *ccb) {
    readyCoroutineQueue.addLast(ccb);
}
