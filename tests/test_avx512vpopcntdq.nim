import nimsimd/avx512/vpopcntdq, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512vpopcntdq".}

if checkInstructionSets({AVX512F, AVX512VPOPCNTDQ}):
  let
    a = mm512_set1_epi32(0b11110000)
    b = mm512_popcnt_epi32(a)
  doAssert cast[array[16, int32]](b)[0] == 4

  let
    c = mm512_set1_epi64(0b1111111100000000)
    d = mm512_popcnt_epi64(c)
  doAssert cast[array[8, int64]](d)[0] == 8

  echo "AVX-512VPOPCNTDQ: OK"
else:
  echo "AVX-512VPOPCNTDQ: not available on this CPU"
