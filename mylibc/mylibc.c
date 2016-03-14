#include "mylibc.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

const char *_string = "foo!";

int 
mylibc_add(int a, int b) {
    return (a+b);
}

const char*
mylibc_foo_char() {
    return _string;
}
