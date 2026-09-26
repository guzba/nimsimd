import nimsimd/avx512/dq, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512dq".}

if checkInstructionSets({AVX512F, AVX512DQ}):
  let
    a = mm512_set1_epi64(42)
    b = mm512_cvtepi64_pd(a)
  doAssert cast[array[8, float64]](b)[0] == 42.0

  let
    c = mm512_set1_ps(1.0)
    d = mm512_set1_ps(1.0)
    e = mm512_and_ps(c, d)
  doAssert cast[array[16, float32]](e)[0] == 1.0

  let
    f = mm_set_ps(0, 0, 2.0, 1.0)
    g = mm512_broadcast_f32x2(f)
  let arr = cast[array[16, float32]](g)
  doAssert arr[0] == 1.0 and arr[1] == 2.0 and arr[2] == 1.0 and arr[3] == 2.0

  echo "AVX-512DQ: OK"
else:
  echo "AVX-512DQ: not available on this CPU"
