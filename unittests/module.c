#include "dsunit.h"
#include "mymodule.h"

int main(void)
{
    int r = 0;
    r = module_func(0, NULL);
    assert_equal_int(r, 0);
    printf("test for module\n");
    return 0;
}
