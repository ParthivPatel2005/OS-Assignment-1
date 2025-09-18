#ifndef UPROC_INCLUDE
#define UPROC_INCLUDE

#include "types.h"

struct uproc {
    int pid;
    int ppid;
    char name[16];
    int state;          // enum procstate value
    int syscall_count;
};

#endif
