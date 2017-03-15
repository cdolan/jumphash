#include <stdint.h>

#include "jumphash.h"

VALUE rb_mJumpHash;

static int32_t
jump_hash(uint64_t key, int32_t num_buckets)
{
  int64_t b = -1, j = 0;

  while (j < num_buckets) {
    b = j;
    key = key * 2862933555777941757ULL + 1;
    j = (b + 1) * ((double)(1LL << 31) / (double)((key >> 33) + 1));
  }

  return (int32_t)(b);
}

static VALUE
hash_key(VALUE klass, VALUE key, VALUE buckets)
{
  return INT2NUM(jump_hash(NUM2ULL(key), NUM2UINT(buckets)));
}

void
Init_jumphash(void)
{
  rb_mJumpHash = rb_define_module("JumpHash");

  rb_define_singleton_method(rb_mJumpHash, "hash_key", hash_key, 2);
}
