import nimsimd/avx512/vbmi, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512bw -mavx512vbmi".}

if checkInstructionSets({AVX512F, AVX512BW, AVX512VBMI}):
  var data: array[64, uint8]
  for i in 0 ..< 64:
    data[i] = uint8(i)
  let
    a = mm512_loadu_si512(data.addr)
    idx = mm512_set1_epi8(5)
    b = mm512_permutexvar_epi8(idx, a)
  doAssert cast[array[64, uint8]](b)[0] == 5
  doAssert cast[array[64, uint8]](b)[63] == 5

  echo "AVX-512VBMI: OK"
else:
  echo "AVX-512VBMI: not available on this CPU"
