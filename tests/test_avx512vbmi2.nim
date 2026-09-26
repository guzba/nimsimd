import nimsimd/avx512/vbmi2, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512bw -mavx512vbmi2".}

if checkInstructionSets({AVX512F, AVX512BW, AVX512VBMI2}):
  let
    a = mm512_set1_epi8(42)
    mask = Mmask64(0b1111)
    b = mm512_maskz_compress_epi8(mask, a)
  doAssert cast[array[64, uint8]](b)[0] == 42
  doAssert cast[array[64, uint8]](b)[3] == 42
  doAssert cast[array[64, uint8]](b)[4] == 0

  let
    c = mm512_set1_epi32(0x12345678'i32)
    d = mm512_set1_epi32(cast[int32](0xABCDEF00'u32))
    e = mm512_shldi_epi32(c, d, 8)
  doAssert cast[array[16, uint32]](e)[0] == 0x345678AB'u32

  echo "AVX-512VBMI2: OK"
else:
  echo "AVX-512VBMI2: not available on this CPU"
