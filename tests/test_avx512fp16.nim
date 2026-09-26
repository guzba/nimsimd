import nimsimd/avx512/fp16, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512bw -mavx512vl -mavx512fp16".}

if checkInstructionSets({AVX512F, AVX512BW, AVX512VL, AVX512FP16}):
  let
    a = mm512_setzero_ph()
    b = mm512_setzero_ph()
    c = mm512_add_ph(a, b)
    d = mm512_mul_ph(a, b)

  let
    a256 = mm256_setzero_ph()
    b256 = mm256_setzero_ph()
    c256 = mm256_add_ph(a256, b256)

  let
    a128 = mm_setzero_ph()
    b128 = mm_setzero_ph()
    c128 = mm_add_ph(a128, b128)

  let
    fma_result = mm512_fmadd_ph(a, b, c)

  let
    min_result = mm512_min_ph(a, b)
    max_result = mm512_max_ph(a, b)

  echo "AVX-512FP16: OK"
else:
  echo "AVX-512FP16: not available on this CPU"
