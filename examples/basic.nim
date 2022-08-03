import nimsimd/sse2

# SIMD floating point multiplication
let
  a = mm_set1_ps(1.0) # Vector of 4 float32 each with value 1.0
  b = mm_set1_ps(2.0) # Vector of 4 float32 each with value 2.0
  c = mm_mul_ps(a, b) # SIMD vector multiplication operator

# Cast the vector to echo as separate float32 values
echo cast[array[4, float32]](c)
