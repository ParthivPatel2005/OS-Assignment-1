#include "types.h"
#include "user.h"
#include "uproc.h"

int
main(int argc, char *argv[])
{
    struct uproc procs[64];
    int n = getprocs(procs, 64);
    if(n < 0){
        printf(2, "ps: getprocs failed\n");
        exit();
    }
    printf(1, "PID PPID STATE SYSCALLS NAME\n");
    for(int i = 0; i < n; i++){
        int state = procs[i].state;
        char *s = "?";
        if(state == 0) s = "UNUSED";
        else if(state == 1) s = "EMBRYO";
        else if(state == 2) s = "SLEEP";
        else if(state == 3) s = "RUNNABLE";
        else if(state == 4) s = "RUN";
        else if(state == 5) s = "ZOMBIE";
        printf(1, "%d %d %s %d %s\n", procs[i].pid, procs[i].ppid, s, procs[i].syscall_count, procs[i].name);
    }
    exit();
}


