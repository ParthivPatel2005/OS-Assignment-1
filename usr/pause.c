#include "types.h"
#include "user.h"
#include "param.h"

int
main(int argc, char *argv[])
{
    if(argc != 2){
        printf(2, "usage: pause seconds\n");
        exit();
    }
    int n = atoi(argv[1]);
    if(n < 0){
        printf(2, "pause: seconds must be non-negative\n");
        exit();
    }
    sleep(n * HZ);
    exit();
}


