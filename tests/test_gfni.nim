import nimsimd/avx512/gfni, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512bw -mgfni".}

if checkInstructionSets({AVX512F, AVX512BW, GFNI}):
  let
    a = mm512_set1_epi8(2)
    b = mm512_set1_epi8(3)
    c = mm512_gf2p8mul_epi8(a, b)
  doAssert cast[array[64, uint8]](c)[0] == 6

  let
    d = mm512_set1_epi8(0x53)
    e = mm512_set1_epi8(1)
    f = mm512_gf2p8mul_epi8(d, e)
  doAssert cast[array[64, uint8]](f)[0] == 0x53

  let
    g = mm256_set1_epi8(2)
    h = mm256_set1_epi8(2)
    i = mm256_gf2p8mul_epi8(g, h)
  # 2 * 2 in GF(2^8) = 4
  doAssert cast[array[32, uint8]](i)[0] == 4

  echo "GFNI: OK"
else:
  echo "GFNI: not available on this CPU"
