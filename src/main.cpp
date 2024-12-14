//
// Created by marko on 20.4.22..
//

#include "../h/PCB.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"

// extern "C" void interrupt();

void test_basic_allocation_and_free() {
    MemoryAllocator::mem_init();
    void *ptr = mem_alloc(128);
    if (ptr == nullptr) printInt(91);

    int free_result = mem_free(ptr);
    if (free_result != 0) printInt(92); // Proverava da li je memorija uspešno oslobođena
    printInt(1);
}

void test_multiple_allocations() {
    MemoryAllocator::mem_init();
    void *pointers[10]; // Array to store pointers

    for (int i = 0; i < 10; i++) {
        pointers[i] = mem_alloc(64);
        if (pointers[i] == nullptr) printInt(93); // Checks if each block was successfully allocated
    }

    for (int i = 0; i < 10; i++) {
        mem_free(pointers[i]);
    }

    printInt(2);
}

void test_free_and_coalesce() {
    MemoryAllocator::mem_init();
    void *ptr1 = mem_alloc(64);
    void *ptr2 = mem_alloc(64);

    mem_free(ptr1);
    mem_free(ptr2);

    void *ptr3 = mem_alloc(128);
    if (ptr3 == nullptr) printInt(94); // Proverava da li je spajanje uspelo

    printInt(3);
}

void test_edge_cases() {
    MemoryAllocator::mem_init();
    void *ptr = mem_alloc(0);
    if (ptr == nullptr) printInt(95); // Provera alokacije nulte veličine

    ptr = mem_alloc(91);
    if (ptr == nullptr) printInt(96); // Provera alokacije sa negativnom veličinom

    printInt(4);
}


extern void userMain();

int finished = 0;

void wrapper(void *arg) {
    userMain();
    finished = 1;
}


int main() {
    MemoryAllocator::mem_init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap | 1);
    thread_t thread;
    thread_create(&thread, nullptr, nullptr);
    PCB::running = thread;
    uMode();
    thread_t u;
    thread_create(&u, wrapper, nullptr);
    while (!finished) {
        thread_dispatch();
    }
    printString("Vracen iz thread_dispatch\n");
    sMode();
    delete u;
    delete thread;
    printString("MAIN FINISHED\n");
    return 0;
}

// MemoryAllocator::mem_init();
// Test test = Test(2);
// size_t t = sizeof(test);
// __putc(t);
// __putc(MEM_BLOCK_SIZE);
// void *a[15];
// for (int i = 0; i < 15; i++) a[i] = nullptr;
// for (int i = 0; i < 15; i++) {
//     a[i] = MemoryAllocator::mem_alloc(sizeof(t));
//     if (a[i]) {
//         __putc('0');
//     } else {
//         __putc('2');
//     }
// }
// for (int i = 0; i < 15; i++) {
//     MemoryAllocator::mem_free(a[i]);
// }

// test_basic_allocation_and_free();
// test_multiple_allocations();
// test_free_and_coalesce();
// test_edge_cases();

// printInt(5);

// return 0;


// CCB *coroutines[3];
//
// coroutines[0] = CCB::createCoroutine(nullptr);
// CCB::running = coroutines[0];
//
// coroutines[1] = CCB::createCoroutine(workerBodyA);
// printString("CoroutineA created\n");
// coroutines[2] = CCB::createCoroutine(workerBodyB);
// printString("CoroutineB created\n");
//
// while (!(coroutines[1]->isFinished() &&
//          coroutines[2]->isFinished())) {
//     CCB::yield();
// }
//
// for (auto &coroutine: coroutines) {
//     delete coroutine;
// }
// printString("Finished\n");
// return 0;
// }
