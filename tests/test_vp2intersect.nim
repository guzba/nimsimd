import nimsimd/avx512/vp2intersect, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512f -mavx512vp2intersect".}

if checkInstructionSets({AVX512F, AVX512VP2INTERSECT}):
  let
    a = mm512_setr_epi32(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
    b = mm512_set1_epi32(5)

  var k0, k1: Mmask16
  mm512_2intersect_epi32(a, b, k0.addr, k1.addr)

  doAssert (k0.uint16 and (1'u16 shl 5)) != 0
  doAssert k1.uint16 == 0xFFFF'u16

  let
    c = mm512_set1_epi32(100)
    d = mm512_set1_epi32(200)

  var k2, k3: Mmask16
  mm512_2intersect_epi32(c, d, k2.addr, k3.addr)

  doAssert k2.uint16 == 0
  doAssert k3.uint16 == 0

  echo "AVX-512VP2INTERSECT: OK"
else:
  echo "AVX-512VP2INTERSECT: not available on this CPU"
