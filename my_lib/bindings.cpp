#include "add.h"

extern "C" {
    int print_foo_c(int x) {
        return print_foo(x);
    }
}