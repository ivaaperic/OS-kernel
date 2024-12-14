//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"

#include "../h/PCB.hpp"
#include "../h/_sem.hpp"

extern "C" void handle_interrupt();

void Riscv::popSppSpie() {
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::supervisorTrapHandler() {
    uint64 volatile a1, a2, a3, a4;
    __asm__ volatile ("mv %0, a4" : "=r"(a4));
    uint64 scause = r_scause();
    uint64 code;
    __asm__ volatile ("mv %0, a0" : "=r" (code));
    __asm__ volatile ("mv %0, a1" : "=r"(a1));
    __asm__ volatile ("mv %0, a2" : "=r"(a2));
    __asm__ volatile ("mv %0, a3" : "=r"(a3));

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
        uint64 sstatus = r_sstatus();
        uint64 sepc = r_sepc() + 4;
        //sepc ukazuje na instrukciju ecall

        if (code == 0x01) {
            size_t size = (size_t) a1 * MEM_BLOCK_SIZE;
            void *allocated = MemoryAllocator::mem_alloc(size);
            __asm__ volatile("mv a0, %0" : : "r"(allocated));
        } else if (code == 0x02) {
            void *ptr = (void *) a1;
            int res = MemoryAllocator::mem_free(ptr);
            __asm__ volatile("mv a0, %0" : : "r"(res));
        } else if (code == 0x11) {
            thread_t *handle = (thread_t *) a1;
            PCB::Body body = (PCB::Body) a2;
            void *arg = (void *) a3;
            uint64 *stack_space = (uint64 *) a4;
            *handle = PCB::create_thread(body, arg, stack_space);
            int res = 1;
            __asm__ volatile("mv a0, %0" : : "r"(res));
        } else if (code == 0x12) {
            int res = PCB::thread_exit();
            __asm__ volatile("mv a0, %0" : : "r"(res));
        } else if (code == 0x13) {
            PCB::dispatch();
        } else if (code == 0x21) {
            sem_t *handle = (sem_t *) a1;
            unsigned int init = (unsigned int) a2;
            *handle = _sem::open(init);
            int res = handle != nullptr ? 0 : -1;
            __asm__ volatile("mv a0, %0" : : "r"(res));
        } else if (code == 0x22) {
            sem_t handle = (sem_t) a1;
            int res = _sem::close(handle);
            __asm__ volatile("mv a0, %0" : : "r"(res));
        } else if (code == 0x23) {
            sem_t handle = (sem_t) a1;
            int res = _sem::wait(handle);
            __asm__ volatile("mv a0, %0" : : "r"(res));
        } else if (code == 0x24) {
            sem_t handle = (sem_t) a1;
            int res = _sem::signal(handle);
            __asm__ volatile("mv a0, %0" : : "r"(res));
        } else if (code == 0x26) {
            sem_t handle = (sem_t) a1;
            int res = _sem::trywait(handle);
            __asm__ volatile("mv a0, %0" : : "r"(res));
        } else if (code == 0x41) {
            char c = __getc();
            __asm__ volatile ("mv a0,%0": : "r"(c));
        } else if (code == 0x42) {
            char c = (char) a1;
            __putc(c);
        } else if (code == 0x43) {
            mc_sstatus(Riscv::SSTATUS_SPP);
        } else if (code == 0x44) {
            ms_sstatus(Riscv::SSTATUS_SPP);
        }

        if (code != 0x43 && code != 0x44) {
            w_sstatus(sstatus);
        }
        w_sepc(sepc);
    } else if (scause == 0x0000000000000002UL) {
        printString("greska! SCAUSE: ");
        __putc(scause + '0');
        __putc('\n');
        printString("ILEGALNA INSTRUKCIJA");
        printString("\n");
        while (1);
        PCB::dispatch();
    } else if (scause == 0x0000000000000005UL) {
        printString("NEDOZVOLJENA ADRESA CITANJA");
        printString(" ");
        printInt(Riscv::r_sepc());
        printString("  ");
        printInt(Riscv::r_scause());
        printString(" ");
        printInt(Riscv::r_stval());
        printString("\n");
        while (1);
    } else if (scause == 0x0000000000000007UL) {
        printString("NEDOZVOLJENA ADRESA UPISA");
        printString(" ");
        printInt(Riscv::r_sepc());
        printString(" ");
        printInt(Riscv::r_scause());
        printString(" ");
        printInt(Riscv::r_stval());
        printString("\n");
        while (1);
    } else if (scause == 0x8000000000000009UL) {
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();
        console_handler();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else {
        printString("greska! SCAUSE: ");
        __putc(scause + '0');
        __putc('\n');
        while (true);
    }
}

void Riscv::handleSupervisorTrapConsole() {
    console_handler();
}

void Riscv::handleSupervisorTimerHandler() { mc_sip(SIP_SSIE); }

