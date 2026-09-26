import nimsimd/avx512/vpclmulqdq, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512f -mvpclmulqdq".}

if checkInstructionSets({AVX512F, VPCLMULQDQ}):
  let
    a = mm512_set1_epi64(1)
    b = mm512_set1_epi64(1)
    c = mm512_clmulepi64_epi128(a, b, 0x00)

  doAssert cast[array[8, int64]](c)[0] == 1

  let
    d = mm512_set1_epi64(2)
    e = mm512_set1_epi64(3)
    f = mm512_clmulepi64_epi128(d, e, 0x00)

  doAssert cast[array[8, int64]](f)[0] == 6

  let
    g = mm256_set1_epi64x(1)
    h = mm256_set1_epi64x(1)
    i = mm256_clmulepi64_epi128(g, h, 0x00)

  doAssert cast[array[4, int64]](i)[0] == 1

  echo "VPCLMULQDQ: OK"
else:
  echo "VPCLMULQDQ: not available on this CPU"
