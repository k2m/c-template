#include "dsunit.h"
#include "mymodule.h"

void setup(void)
{
    _setup();
}

void teardown(void)
{
}

void test_module_func(void)
{
    int r;
    r = module_func(0, NULL);
    assert_equal_int(r, 0);
    printf("test for module\n");
}

void test_module_func_segfault(void)
{
    int r = 0;
    r = module_func_segfault(0, NULL);
    assert_equal_int(r, 0);
    printf("test for module\n");
}

int main(void)
{
    setup();

    run_test(test_module_func());
    //run_test(test_module_func_segfault());

    teardown();
    return 0;
}
