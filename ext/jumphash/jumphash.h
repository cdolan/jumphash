#ifndef JUMPHASH_H
#define JUMPHASH_H 1

#include "ruby.h"

#ifdef RUBY_INTEGER_UNIFICATION
#define JUMPHASH_INTEGER_TYPE rb_cInteger
#else
#define JUMPHASH_INTEGER_TYPE rb_cFixnum
#endif

#endif /* JUMPHASH_H */
