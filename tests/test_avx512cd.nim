import nimsimd/avx512/cd, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512cd".}

if checkInstructionSets({AVX512F, AVX512CD}):
  let
    a = mm512_set_epi32(15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0)
    conflicts = mm512_conflict_epi32(a)
  doAssert cast[array[16, int32]](conflicts) == [0'i32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

  let
    b = mm512_set1_epi32(1)
    lz = mm512_lzcnt_epi32(b)
  doAssert cast[array[16, int32]](lz)[0] == 31

  echo "AVX-512CD: OK"
else:
  echo "AVX-512CD: not available on this CPU"
