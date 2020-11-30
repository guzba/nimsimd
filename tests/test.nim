import nimsimd/sse2

let
  a = m128(1.0)
  b = m128(2.0)
  c = a * b

doAssert cast[array[4, float32]](c) == [2.0.float32, 2.0, 2.0, 2.0]
