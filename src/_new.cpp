// #include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t size) {
    // return MemoryAllocator::mem_alloc(size);
    return mem_alloc(size);
}

void operator delete(void *ptr) {
    // MemoryAllocator::mem_free(ptr);
    mem_free(ptr);
}

void *operator new[](size_t size) {
    // return MemoryAllocator::mem_alloc(size);
    return mem_alloc(size);
}

void operator delete[](void *ptr) {
    // MemoryAllocator::mem_free(ptr);
    mem_free(ptr);
}
