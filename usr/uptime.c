#include "types.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    int ticks = uptime();
    printf(1, "%d\n", ticks);
    exit();
}


