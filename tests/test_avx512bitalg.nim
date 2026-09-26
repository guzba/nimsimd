import nimsimd/avx512/bitalg, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512bw -mavx512bitalg".}

if checkInstructionSets({AVX512F, AVX512BW, AVX512BITALG}):
  # popcnt_epi8: population count of bytes
  let
    a = mm512_set1_epi8(0b11110000)  # 4 bits set per byte
    b = mm512_popcnt_epi8(a)
  doAssert cast[array[64, uint8]](b)[0] == 4

  # popcnt_epi16: population count of 16-bit elements
  let
    c = mm512_set1_epi16(0b1111111100000000)  # 8 bits set
    d = mm512_popcnt_epi16(c)
  doAssert cast[array[32, int16]](d)[0] == 8

  echo "AVX-512BITALG: OK"
else:
  echo "AVX-512BITALG: not available on this CPU"
