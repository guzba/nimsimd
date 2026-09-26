import nimsimd/avx512icl, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512bw -mavx512vbmi -mavx512vbmi2 -mavx512vnni -mavx512ifma -mavx512vpopcntdq -mavx512bitalg".}

if checkInstructionSets({AVX512VNNI, AVX512IFMA, AVX512VBMI, AVX512VPOPCNTDQ, AVX512VBMI2, AVX512BITALG}):
  # Test VNNI
  let
    src = mm512_set1_epi32(0)
    a = mm512_set1_epi8(2)
    b = mm512_set1_epi8(3)
    c = mm512_dpbusd_epi32(src, a, b)
  doAssert cast[array[16, int32]](c)[0] == 24

  # Test VPOPCNTDQ
  let
    d = mm512_set1_epi32(0b11110000)
    e = mm512_popcnt_epi32(d)
  doAssert cast[array[16, int32]](e)[0] == 4

  # Test BITALG
  let
    f = mm512_set1_epi8(0b11110000)
    g = mm512_popcnt_epi8(f)
  doAssert cast[array[64, uint8]](g)[0] == 4

  echo "AVX-512ICL: OK"
else:
  echo "AVX-512ICL: not available on this CPU"
