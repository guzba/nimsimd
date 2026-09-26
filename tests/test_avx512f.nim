import nimsimd/avx512/f, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512f".}

if checkInstructionSets({AVX512F}):
  let
    a = mm512_set1_ps(3.0)
    b = mm512_set1_ps(4.0)
    c = mm512_mul_ps(a, b)
  doAssert cast[array[16, float32]](c) == [12.0.float32, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12]
  echo "AVX-512F: OK"
else:
  echo "AVX-512F: not available on this CPU"
