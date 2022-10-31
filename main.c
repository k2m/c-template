#include <stdio.h>

#include "mymodule.h"

int main(int argc, char *argv[])
{
    int r = 0;
    r = module_func(argc, argv);
    return r;
}
