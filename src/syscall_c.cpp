//
// Created by os on 5/8/23.
//

#include "../h/syscall_c.hpp"

#include "../test/printing.hpp"

void uMode() {
    __asm__ volatile("mv a0, %0" : : "r" (0x43));
    __asm__ volatile("ecall");
}

void sMode() {
    __asm__ volatile("mv a0, %0" : : "r" (0x44));
    __asm__ volatile("ecall");
}

void *mem_alloc(size_t size) {
    if (size == 0) return nullptr;
    uint64 blocks = (size % MEM_BLOCK_SIZE) ? (size / MEM_BLOCK_SIZE + 1) : size / MEM_BLOCK_SIZE;
    __asm__ volatile("mv a1, %0" :: "r" (blocks));
    __asm__ volatile("mv a0, %0" :: "r" (0x01));
    __asm__ volatile("ecall");
    void *ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

int mem_free(void *ptr) {
    if (ptr == nullptr)
        return 0;

    asm volatile("mv a1, %0" :: "r" (ptr));
    __asm__ volatile("mv a0, %0" :: "r" (0x02));
    __asm__ volatile("ecall");
    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}


int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    uint64 *stack = nullptr;
    if (start_routine != nullptr) stack = (uint64 *) mem_alloc(DEFAULT_STACK_SIZE);

    __asm__ volatile("mv a4, %0" : : "r" (stack));
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" :: "r" (0x11));
    __asm__ volatile("ecall");
    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

int thread_exit() {
    __asm__ volatile("mv a0, %0" :: "r" (0x12));
    __asm__ volatile("ecall");
    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

void thread_dispatch() {
    __asm__ volatile("mv a0, %0" :: "r" (0x13));
    __asm__ volatile("ecall");
}

int sem_open(sem_t *handle, unsigned init) {
    __asm__ volatile("mv a2, %0" : : "r" (init));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r"(0x21));
    __asm__ volatile("ecall");
    int res;
    __asm__ volatile ("mv %0, a0" : "=r"(res));
    return res;
}

int sem_close(sem_t handle) {
    __asm__ volatile("mv a1, %0": : "r"(handle));
    __asm__ volatile("mv a0, %0" : : "r"(0x22));
    __asm__ volatile("ecall");
    int res;
    __asm__ volatile ("mv %0, a0" : "=r"(res));
    return res;
}

int sem_wait(sem_t id) {
    __asm__ volatile("mv a1, %0": : "r"(id));
    __asm__ volatile("mv a0, %0" : : "r"(0x23));
    __asm__ volatile("ecall");
    int res;
    __asm__ volatile ("mv %0, a0" : "=r"(res));
    return res;
}

int sem_signal(sem_t id) {
    __asm__ volatile("mv a1, %0": : "r"(id));
    __asm__ volatile("mv a0, %0" : : "r"(0x24));
    __asm__ volatile("ecall");
    int res;
    __asm__ volatile ("mv %0, a0" : "=r"(res));
    return res;
}

int sem_trywait(sem_t id) {
    __asm__ volatile("mv a1, %0": : "r"(id));
    __asm__ volatile("mv a0, %0" : : "r"(0x26));
    __asm__ volatile("ecall");
    int res;
    __asm__ volatile ("mv %0, a0" : "=r"(res));
    return res;
}

char getc() {
    __asm__ volatile("mv a0, %0" : : "r"(0x41));
    __asm__ volatile("ecall");
    char ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    return ret;
}

void putc(char c) {
    __asm__ volatile("mv a1, %0": : "r"(c));
    __asm__ volatile("mv a0, %0" : : "r"(0x42));
    __asm__ volatile("ecall");
}
