//
// Created by os on 5/8/23.
//
#include "../h/syscall_cpp.hpp"

char Console::getc() {
    return __getc();
}

void Console::putc(char c) {
    __putc(c);
}
