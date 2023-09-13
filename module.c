#include <string.h>
#include "mymodule.h"

int module_func(int argc, char *argv[])
{
    (void)argc;
    (void)argv;
    return 0;
}

int module_func_segfault(int argc, char *argv[])
{
    (void)argc;
    (void)argv;
    char *p = (char *)0;
    memset(p, '1', 100);
    return 0;
}
