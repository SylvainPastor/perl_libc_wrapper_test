#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

/* Your C functions if any go here */
#include <mylibc.h>

MODULE = mylibDemo	PACKAGE = mylibDemo

# Your XS code goes here

int
xs_sum_func(int a, int b)
  CODE:
    RETVAL = a + b;
  OUTPUT: RETVAL

# mylibc functions

int
mylibc_add(int a, int b)

const char *
mylibc_foo_char()
