import nimsimd/avx512/vnni, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512vnni".}

if checkInstructionSets({AVX512F, AVX512VNNI}):
  let
    src = mm512_set1_epi32(0)
    a = mm512_set1_epi8(2)
    b = mm512_set1_epi8(3)
    c = mm512_dpbusd_epi32(src, a, b)
  doAssert cast[array[16, int32]](c)[0] == 24

  let
    src2 = mm512_set1_epi32(0)
    d = mm512_set1_epi16(10)
    e = mm512_set1_epi16(5)
    f = mm512_dpwssd_epi32(src2, d, e)
  doAssert cast[array[16, int32]](f)[0] == 100

  echo "AVX-512VNNI: OK"
else:
  echo "AVX-512VNNI: not available on this CPU"
