import nimsimd/avx512/vl, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512vl".}

if checkInstructionSets({AVX512F, AVX512VL}):
  let
    a = mm256_set_epi32(7, 6, 5, 4, 3, 2, 1, 0)
    b = mm256_set_epi32(0, 6, 0, 4, 0, 2, 0, 0)
    mask = mm256_cmpeq_epi32_mask(a, b)
  doAssert uint8(mask) == 0b01010101

  let
    c = mm_set_epi32(4, 3, 2, 1)
    d = mm_set_epi32(1, 1, 1, 1)
    k = Mmask8(0b1010)
    src = mm_setzero_si128()
    result = mm_mask_add_epi32(src, k, c, d)
  doAssert cast[array[4, int32]](result) == [0'i32, 3, 0, 5]

  echo "AVX-512VL: OK"
else:
  echo "AVX-512VL: not available on this CPU"
