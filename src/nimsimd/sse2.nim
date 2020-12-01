## SSE and SSE2 instructions

type
  M128* {.importc: "__m128", header: "xmmintrin.h".} = object
  M128i* {.importc: "__m128i", header: "emmintrin.h".} = object

func mm_add_ps*(a: M128, b: M128): M128
  {.importc: "_mm_add_ps", header: "xmmintrin.h".}

func mm_add_ss*(a: M128, b: M128): M128
  {.importc: "_mm_add_ss", header: "xmmintrin.h".}

func mm_and_ps*(a, b: M128): M128
  {.importc: "_mm_and_ps", header: "xmmintrin.h".}

func mm_andnot_ps*(a, b: M128): M128
  {.importc: "_mm_andnot_ps", header: "xmmintrin.h".}

func mm_cmpeq_ps*(a, b: M128): M128
  {.importc: "_mm_cmpeq_ps", header: "xmmintrin.h".}

func mm_cmpeq_ss*(a, b: M128): M128
  {.importc: "_mm_cmpeq_ss", header: "xmmintrin.h".}

func mm_cmpge_ps*(a, b: M128): M128
  {.importc: "_mm_cmpge_ps", header: "xmmintrin.h".}

func mm_cmpge_ss*(a, b: M128): M128
  {.importc: "_mm_cmpge_ss", header: "xmmintrin.h".}

func mm_cmpgt_ps*(a, b: M128): M128
  {.importc: "_mm_cmpgt_ps", header: "xmmintrin.h".}

func mm_cmpgt_ss*(a, b: M128): M128
  {.importc: "_mm_cmpgt_ss", header: "xmmintrin.h".}

func mm_cmple_ps*(a, b: M128): M128
  {.importc: "_mm_cmple_ps", header: "xmmintrin.h".}

func mm_cmple_ss*(a, b: M128): M128
  {.importc: "_mm_cmple_ss", header: "xmmintrin.h".}

func mm_cmplt_ps*(a, b: M128): M128
  {.importc: "_mm_cmplt_ps", header: "xmmintrin.h".}

func mm_cmplt_ss*(a, b: M128): M128
  {.importc: "_mm_cmplt_ss", header: "xmmintrin.h".}

func mm_cmpneq_ps*(a, b: M128): M128
  {.importc: "_mm_cmpneq_ps", header: "xmmintrin.h".}

func mm_cmpneq_ss*(a, b: M128): M128
  {.importc: "_mm_cmpneq_ss", header: "xmmintrin.h".}

func mm_cmpnge_ps*(a, b: M128): M128
  {.importc: "_mm_cmpnge_ps", header: "xmmintrin.h".}

func mm_cmpnge_ss*(a, b: M128): M128
  {.importc: "_mm_cmpnge_ss", header: "xmmintrin.h".}

func mm_cmpngt_ps*(a, b: M128): M128
  {.importc: "_mm_cmpngt_ps", header: "xmmintrin.h".}

func mm_cmpngt_ss*(a, b: M128): M128
  {.importc: "_mm_cmpngt_ss", header: "xmmintrin.h".}

func mm_cmpnle_ps*(a, b: M128): M128
  {.importc: "_mm_cmpnle_ps", header: "xmmintrin.h".}

func mm_cmpnle_ss*(a, b: M128): M128
  {.importc: "_mm_cmpnle_ss", header: "xmmintrin.h".}

func mm_cmpnlt_ps*(a, b: M128): M128
  {.importc: "_mm_cmpnlt_ps", header: "xmmintrin.h".}

func mm_cmpnlt_ss*(a, b: M128): M128
  {.importc: "_mm_cmpnlt_ss", header: "xmmintrin.h".}

func mm_cmpord_ps*(a, b: M128): M128
  {.importc: "_mm_cmpord_ps", header: "xmmintrin.h".}

func mm_cmpord_ss*(a, b: M128): M128
  {.importc: "_mm_cmpord_ss", header: "xmmintrin.h".}

func mm_cmpunord_ps*(a, b: M128): M128
  {.importc: "_mm_cmpunord_ps", header: "xmmintrin.h".}

func mm_cmpunord_ss*(a, b: M128): M128
  {.importc: "_mm_cmpunord_ss", header: "xmmintrin.h".}

func mm_comieq_ss*(a, b: M128): int32
  {.importc: "_mm_comieq_ss", header: "xmmintrin.h".}

func mm_comige_ss*(a, b: M128): int32
  {.importc: "_mm_comige_ss", header: "xmmintrin.h".}

func mm_comigt_ss*(a, b: M128): int32
  {.importc: "_mm_comigt_ss", header: "xmmintrin.h".}

func mm_comile_ss*(a, b: M128): int32
  {.importc: "_mm_comile_ss", header: "xmmintrin.h".}

func mm_comilt_ss*(a, b: M128): int32
  {.importc: "_mm_comilt_ss", header: "xmmintrin.h".}

func mm_comineq_ss*(a, b: M128): int32
  {.importc: "_mm_comineq_ss", header: "xmmintrin.h".}

func mm_cvt_si2ss*(a: M128, b: int32): M128
  {.importc: "_mm_cvt_si2ss", header: "xmmintrin.h".}

func mm_cvt_ss2si*(a: M128): int32
  {.importc: "_mm_cvt_ss2si", header: "xmmintrin.h".}

func mm_cvtsi32_ss*(a: M128, b: int32): M128
  {.importc: "_mm_cvtsi32_ss", header: "xmmintrin.h".}

func mm_cvtss_f32*(a: M128): float32
  {.importc: "_mm_cvtss_f32", header: "xmmintrin.h".}

func mm_cvtss_si32*(a: M128): int32
  {.importc: "_mm_cvtss_si32", header: "xmmintrin.h".}

func mm_cvtss_si64*(a: M128): int64
  {.importc: "_mm_cvtss_si64", header: "xmmintrin.h".}

func mm_cvtt_ss2si*(a: M128): int32
  {.importc: "_mm_cvtt_ss2si", header: "xmmintrin.h".}

func mm_cvttss_si32*(a: M128): int32
  {.importc: "_mm_cvttss_si32", header: "xmmintrin.h".}

func mm_cvttss_si64*(a: M128): int64
  {.importc: "_mm_cvttss_si64", header: "xmmintrin.h".}

func mm_div_ps*(a, b: M128): M128
  {.importc: "_mm_div_ps", header: "xmmintrin.h".}

func mm_div_ss*(a, b: M128): M128
  {.importc: "_mm_div_ss", header: "xmmintrin.h".}

func mm_load_ps*(p: pointer): M128
  {.importc: "_mm_load_ps", header: "xmmintrin.h".}

func mm_load_ps1*(p: pointer): M128
  {.importc: "_mm_load_ps1", header: "xmmintrin.h".}

func mm_load_ss*(p: pointer): M128
  {.importc: "_mm_load_ss", header: "xmmintrin.h".}

func mm_load1_ps*(p: pointer): M128
  {.importc: "_mm_load1_ps", header: "xmmintrin.h".}

func mm_loadr_ps*(p: pointer): M128
  {.importc: "_mm_loadr_ps", header: "xmmintrin.h".}

func mm_loadu_ps*(p: pointer): M128
  {.importc: "_mm_loadu_ps", header: "xmmintrin.h".}

func mm_loadu_si16*(p: pointer): M128
  {.importc: "_mm_loadu_si16", header: "xmmintrin.h".}

func mm_loadu_si64*(p: pointer): M128
  {.importc: "_mm_loadu_si64", header: "xmmintrin.h".}

func mm_max_ps*(a, b: M128): M128
  {.importc: "_mm_max_ps", header: "xmmintrin.h".}

func mm_max_ss*(a, b: M128): M128
  {.importc: "_mm_max_ss", header: "xmmintrin.h".}

func mm_min_ps*(a, b: M128): M128
  {.importc: "_mm_min_ps", header: "xmmintrin.h".}

func mm_min_ss*(a, b: M128): M128
  {.importc: "_mm_min_ss", header: "xmmintrin.h".}

func mm_move_ss*(a, b: M128): M128
  {.importc: "_mm_move_ss", header: "xmmintrin.h".}

func mm_movehl_ps*(a, b: M128): M128
  {.importc: "_mm_movehl_ps", header: "xmmintrin.h".}

func mm_movelh_ps*(a, b: M128): M128
  {.importc: "_mm_movelh_ps", header: "xmmintrin.h".}

func mm_movemask_ps*(a: M128): int32
  {.importc: "_mm_movemask_ps", header: "xmmintrin.h".}

func mm_mul_ps*(a, b: M128): M128
  {.importc: "_mm_mul_ps", header: "xmmintrin.h".}

func mm_mul_ss*(a, b: M128): M128
  {.importc: "_mm_mul_ss", header: "xmmintrin.h".}

func mm_or_ps*(a, b: M128): M128
  {.importc: "_mm_or_ps", header: "xmmintrin.h".}

func mm_rcp_ps*(a: M128): M128
  {.importc: "_mm_rcp_ps", header: "xmmintrin.h".}

func mm_rcp_ss*(a: M128): M128
  {.importc: "_mm_rcp_ss", header: "xmmintrin.h".}

func mm_rsqrt_ps*(a: M128): M128
  {.importc: "_mm_rsqrt_ps", header: "xmmintrin.h".}

func mm_rsqrt_ss*(a: M128): M128
  {.importc: "_mm_rsqrt_ss", header: "xmmintrin.h".}

func mm_set_ps*(a, b, c, d: float32): M128
  {.importc: "_mm_set_ps", header: "xmmintrin.h".}

func mm_set_ps1*(a: float32): M128
  {.importc: "_mm_set_ps1", header: "xmmintrin.h".}

func mm_set_ss*(a,: float32): M128
  {.importc: "_mm_set_ss", header: "xmmintrin.h".}

func mm_set1_ps*(a: float32): M128
  {.importc: "_mm_set1_ps", header: "xmmintrin.h".}

func mm_setr_ps*(a, b, c, d: float32): M128
  {.importc: "_mm_setr_ps", header: "xmmintrin.h".}

func mm_setzero_ps*(): M128
  {.importc: "_mm_setzero_ps", header: "xmmintrin.h".}

func mm_shuffle_ps*(a, b: M128, imm8: uint32): M128
  {.importc: "_mm_shuffle_ps", header: "xmmintrin.h".}

func mm_sqrt_ps*(a: M128): M128
  {.importc: "_mm_sqrt_ps", header: "xmmintrin.h".}

func mm_sqrt_ss*(a: M128): M128
  {.importc: "_mm_sqrt_ss", header: "xmmintrin.h".}

func mm_store_ps*(p: pointer, a: M128)
  {.importc: "_mm_store_ps", header: "xmmintrin.h".}

func mm_store_ps1*(p: pointer, a: M128)
  {.importc: "_mm_store_ps1", header: "xmmintrin.h".}

func mm_store_ss*(p: pointer, a: M128)
  {.importc: "_mm_store_ss", header: "xmmintrin.h".}

func mm_store1_ps*(p: pointer, a: M128)
  {.importc: "_mm_store1_ps", header: "xmmintrin.h".}

func mm_storer_ps*(p: pointer, a: M128)
  {.importc: "_mm_storer_ps", header: "xmmintrin.h".}

func mm_storeu_ps*(p: pointer, a: M128)
  {.importc: "_mm_storeu_ps", header: "xmmintrin.h".}

func mm_storeu_si16*(p: pointer, a: M128)
  {.importc: "_mm_storeu_si16", header: "xmmintrin.h".}

func mm_storeu_si64*(p: pointer, a: M128)
  {.importc: "_mm_storeu_si64", header: "xmmintrin.h".}

func mm_stream_ps*(p: pointer, a: M128)
  {.importc: "_mm_stream_ps", header: "xmmintrin.h".}

func mm_sub_ps*(a, b: M128): M128
  {.importc: "_mm_sub_ps", header: "xmmintrin.h".}

func mm_sub_ss*(a, b: M128): M128
  {.importc: "_mm_sub_ss", header: "xmmintrin.h".}

func mm_ucomieq_ss*(a, b: M128): int32
  {.importc: "_mm_ucomieq_ss", header: "xmmintrin.h".}

func mm_ucomige_ss*(a, b: M128): int32
  {.importc: "_mm_ucomige_ss", header: "xmmintrin.h".}

func mm_ucomigt_ss*(a, b: M128): int32
  {.importc: "_mm_ucomigt_ss", header: "xmmintrin.h".}

func mm_ucomile_ss*(a, b: M128): int32
  {.importc: "_mm_ucomile_ss", header: "xmmintrin.h".}

func mm_ucomilt_ss*(a, b: M128): int32
  {.importc: "_mm_ucomilt_ss", header: "xmmintrin.h".}

func mm_ucomineq_ss*(a, b: M128): int32
  {.importc: "_mm_ucomineq_ss", header: "xmmintrin.h".}

func mm_undefined_ps*(): M128
  {.importc: "_mm_undefined_ps", header: "xmmintrin.h".}

func mm_unpackhi_ps*(a, b: M128): M128
  {.importc: "_mm_unpackhi_ps", header: "xmmintrin.h".}

func mm_unpacklo_ps*(a, b: M128): M128
  {.importc: "_mm_unpacklo_ps", header: "xmmintrin.h".}

func mm_xor_ps*(a, b: M128): M128
  {.importc: "_mm_xor_ps", header: "xmmintrin.h".}

func mm_set1_epi32*(a: int32): M128i
  {.importc: "_mm_set1_epi32", header: "emmintrin.h".}

func mm_cvttps_epi32*(a: M128): M128i
  {.importc: "_mm_cvttps_epi32", header: "emmintrin.h".}

func mm_cvtps_epi32*(a: M128): M128i
  {.importc: "_mm_cvtps_epi32", header: "emmintrin.h".}

func mm_cvtepi32_ps*(a: M128i): M128
  {.importc: "_mm_cvtepi32_ps", header: "emmintrin.h".}

func mm_and_si128*(a, b: M128i): M128i
  {.importc: "_mm_and_si128", header: "emmintrin.h".}

# For readability

func m128*(): M128 {.inline.} =
  mm_setzero_ps()

func m128*(a: float32): M128 {.inline.} =
  mm_set1_ps(a)

func `and`*(a, b: M128): M128 {.inline.} =
  mm_and_ps(a, b)

func `or`*(a, b: M128): M128 {.inline.} =
  mm_or_ps(a, b)

func `xor`*(a, b: M128): M128 {.inline.} =
  mm_xor_ps(a, b)

func `==`*(a, b: M128): M128 {.inline.} =
  mm_cmpeq_ps(a, b)

func `!=`*(a, b: M128): M128 {.inline.} =
  mm_cmpneq_ps(a, b)

func `>`*(a, b: M128): M128 {.inline.} =
  mm_cmpgt_ps(a, b)

func `>=`*(a, b: M128): M128 {.inline.} =
  mm_cmpge_ps(a, b)

func `<`*(a, b: M128): M128 {.inline.} =
  mm_cmplt_ps(a, b)

func `<=`*(a, b: M128): M128 {.inline.} =
  mm_cmple_ps(a, b)

func `+`*(a, b: M128): M128 {.inline.} =
  mm_add_ps(a, b)

func `-`*(a, b: M128): M128 {.inline.} =
  mm_sub_ps(a, b)

func `*`*(a, b: M128): M128 {.inline.} =
  mm_mul_ps(a, b)

func `/`*(a, b: M128): M128 {.inline.} =
  mm_div_ps(a, b)

func `+=`*(a: var M128, b: M128) {.inline.} =
  a = a + b

func `-=`*(a: var M128, b: M128) {.inline.} =
  a = a - b

func `*=`*(a: var M128, b: M128) {.inline.} =
  a = a * b

func `/=`*(a: var M128, b: M128) {.inline.} =
  a = a / b

func max*(a, b: M128): M128 {.inline.} =
  mm_max_ps(a, b)

func min*(a, b: M128): M128 {.inline.} =
  mm_min_ps(a, b)

func sqrt*(a: M128): M128 {.inline.} =
  mm_sqrt_ps(a)

func m128i*(a: int32): M128i {.inline.} =
  mm_set1_epi32(a)
