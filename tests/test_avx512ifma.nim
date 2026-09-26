import nimsimd/avx512/ifma, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512ifma".}

if checkInstructionSets({AVX512F, AVX512IFMA}):
  let
    a = mm512_set1_epi64(100)
    b = mm512_set1_epi64(3)
    c = mm512_set1_epi64(7)
    d = mm512_madd52lo_epu64(a, b, c)
  doAssert cast[array[8, int64]](d)[0] == 121

  echo "AVX-512IFMA: OK"
else:
  echo "AVX-512IFMA: not available on this CPU"
