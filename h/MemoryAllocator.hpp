//
// Created by os on 5/11/24.
//

#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP
#include "../lib/hw.h"

typedef struct MemStruct {
      MemStruct *prev, *next;
      size_t size;
      bool allocated;
} MemStruct;

class MemoryAllocator {
public:
      static MemStruct *freeMemHead;

      static void *mem_alloc(size_t size);

      static int mem_free(void *);

      static void tryToJoin(MemStruct *);

      static void mem_init();
};


#endif //MEMORYALLOCATOR_HPP
