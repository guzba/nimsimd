import nimsimd/avx512/bf16, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512bw -mavx512vl -mavx512bf16".}

if checkInstructionSets({AVX512F, AVX512BW, AVX512BF16}):
  let
    a = mm512_set1_ps(1.0'f32)
    b = mm512_set1_ps(1.0'f32)
    bf16_ab = mm512_cvtne2ps_pbh(a, b)

  let
    src = mm512_setzero_ps()
    result_dp = mm512_dpbf16_ps(src, bf16_ab, bf16_ab)

  doAssert cast[array[16, float32]](result_dp)[0] == 2.0'f32

  let
    c = mm256_set1_ps(2.0'f32)
    d = mm256_set1_ps(2.0'f32)
    bf16_cd = mm256_cvtne2ps_pbh(c, d)
    src256 = mm256_setzero_ps()
    result256 = mm256_dpbf16_ps(src256, bf16_cd, bf16_cd)

  doAssert cast[array[8, float32]](result256)[0] == 8.0'f32

  echo "AVX-512BF16: OK"
else:
  echo "AVX-512BF16: not available on this CPU"
