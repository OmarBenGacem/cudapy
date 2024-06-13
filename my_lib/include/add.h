#ifndef TEST_H
#define TEST_H
#include <iostream>

int print_foo(int x);

extern "C" {
    int print_foo_c(int x);
}
#endif