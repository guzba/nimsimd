import nimsimd/avx512/bw, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512bw".}

if checkInstructionSets({AVX512F, AVX512BW}):
  let
    a = mm512_set1_epi8(10)
    b = mm512_set1_epi8(20)
    c = mm512_add_epi8(a, b)
  doAssert cast[array[64, int8]](c)[0] == 30

  let
    d = mm512_set1_epi16(100)
    e = mm512_set1_epi16(3)
    f = mm512_mullo_epi16(d, e)
  doAssert cast[array[32, int16]](f)[0] == 300

  let
    g = mm512_set1_epi8(5)
    h = mm512_set1_epi8(5)
    mask = mm512_cmpeq_epi8_mask(g, h)
  doAssert uint64(mask) == 0xFFFFFFFFFFFFFFFF'u64

  let
    i = mm512_set1_epi8(127)
    j = mm512_set1_epi8(10)
    k = mm512_adds_epi8(i, j)
  doAssert cast[array[64, int8]](k)[0] == 127

  echo "AVX-512BW: OK"
else:
  echo "AVX-512BW: not available on this CPU"
