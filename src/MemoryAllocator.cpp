//
// Created by os on 5/11/24.
//

#include "../h/MemoryAllocator.hpp"

MemStruct *MemoryAllocator::freeMemHead = nullptr;

void MemoryAllocator::tryToJoin(MemStruct *curr) {
    //ovo nece moci bas ovako, nacrtaj pa otkucaj
    //znaci nemoj da zuris sa kodom!!
    if (curr && curr->next && (char *) curr + curr->size >= (char *) curr->next) {
        //a sta ako je >?
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
    }
}

void MemoryAllocator::mem_init() {
    if (!freeMemHead) {
        freeMemHead = (MemStruct *) HEAP_START_ADDR;
        freeMemHead->next = freeMemHead->prev = nullptr;
        freeMemHead->allocated = false;
        freeMemHead->size = (char *) HEAP_END_ADDR - (char *) HEAP_START_ADDR - sizeof(MemStruct);
    }
    //MEM_BLOCK_SIZE jedan za zaglavlje!
}

void *MemoryAllocator::mem_alloc(size_t size) {
    if (size <= 0) return nullptr;


    for (MemStruct *curr = freeMemHead; curr != nullptr; curr = curr->next) {
        if (curr->size < size) continue; //nema dovoljno prostora, trazim dalje
        //nasao:
        //sta treba da spakujem tu, nista samo alociram prostor
        if (curr->size == size) {
            //nema ostatka
            if (curr->prev) curr->prev->next = curr->next;
            else freeMemHead = curr->next;
            if (curr->next) curr->next->prev = curr->prev;
            // curr->size += curr->size - size;
            //saljem ceo curr->size
        } else {
            MemStruct *newFragment = (MemStruct *) ((char *) curr + size);
            if (curr->prev) curr->prev->next = newFragment;
            else freeMemHead = newFragment;
            if (curr->next) curr->next->prev = newFragment;
            newFragment->prev = curr->prev;
            newFragment->next = curr->next;
            newFragment->size = curr->size - size;
            curr->size = size;
        }
        curr->next = curr->prev = nullptr;
        curr->allocated = true;
        return curr;
    }
    return nullptr;
}

int MemoryAllocator::mem_free(void *p) {
    if (p == nullptr || freeMemHead == nullptr) return -1;
    MemStruct *toRelease = (MemStruct *) (char *) p;
    if (!toRelease->allocated) return -2;
    toRelease->allocated = false;
    //gde se nalazi cvor?

    if (toRelease < freeMemHead) {
        //ubacujem pre glave:
        toRelease->next = freeMemHead;
        toRelease->prev = nullptr;
        freeMemHead->prev = toRelease;
        freeMemHead = toRelease;
        tryToJoin(toRelease);
    } else {
        for (MemStruct *curr = freeMemHead; curr != nullptr; curr = curr->next) {
            if (curr->next == nullptr && toRelease > curr) {
                //III,IV
                toRelease->next = curr->next;
                toRelease->prev = curr;
                curr->next = toRelease;
                tryToJoin(curr);
            } else if (toRelease < curr) {
                //I, II, preskace se slucaj kad je glava zato sto glava nije sigurno veca od torelease
                //jer sam to ispitala gore
                toRelease->next = curr;
                toRelease->prev = curr->prev;
                curr->prev->next = toRelease;
                curr->prev = toRelease;
                tryToJoin(toRelease);
                tryToJoin(toRelease->prev);
            }
        }
    }
    return 0;
}

