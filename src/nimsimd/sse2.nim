## SSE and SSE2 instructions

type
  M128* {.importc: "__m128", header: "xmmintrin.h".} = object
  M128i* {.importc: "__m128i", header: "emmintrin.h".} = object
  M128d* {.importc: "__m128d", header: "emmintrin.h".} = object

template MM_SHUFFLE*(z, y, x, w: int | uint): int32 =
  ((z shl 6) or (y shl 4) or (x shl 2) or w).int32

# "xmmintrin.h"

func mm_add_ps*(a, b: M128): M128
  {.importc: "_mm_add_ps", header: "xmmintrin.h".}

func mm_add_ss*(a, b: M128): M128
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

# "emmintrin.h"

func mm_add_epi16*(a, b: M128i): M128i
  {.importc: "_mm_add_epi16", header: "emmintrin.h".}

func mm_add_epi32*(a, b: M128i): M128i
  {.importc: "_mm_add_epi32", header: "emmintrin.h".}

func mm_add_epi64*(a, b: M128i): M128i
  {.importc: "_mm_add_epi64", header: "emmintrin.h".}

func mm_add_epi8*(a, b: M128i): M128i
  {.importc: "_mm_add_epi8", header: "emmintrin.h".}

func mm_add_pd*(a, b: M128d): M128d
  {.importc: "_mm_add_pd", header: "emmintrin.h".}

func mm_add_sd*(a, b: M128d): M128d
  {.importc: "_mm_add_sd", header: "emmintrin.h".}

func mm_adds_epi16*(a, b: M128i): M128i
  {.importc: "_mm_adds_epi16", header: "emmintrin.h".}

func mm_adds_epi8*(a, b: M128i): M128i
  {.importc: "_mm_adds_epi8", header: "emmintrin.h".}

func mm_adds_epu16*(a, b: M128i): M128i
  {.importc: "_mm_adds_epu16", header: "emmintrin.h".}

func mm_adds_epu8*(a, b: M128i): M128i
  {.importc: "_mm_adds_epu8", header: "emmintrin.h".}

func mm_and_pd*(a, b: M128d): M128d
  {.importc: "_mm_and_pd", header: "emmintrin.h".}

func mm_and_si128*(a, b: M128i): M128i
  {.importc: "_mm_and_si128", header: "emmintrin.h".}

func mm_andnot_pd*(a, b: M128d): M128d
  {.importc: "_mm_andnot_pd", header: "emmintrin.h".}

func mm_andnot_si128*(a, b: M128i): M128i
  {.importc: "_mm_andnot_si128", header: "emmintrin.h".}

func mm_avg_epu16*(a, b: M128i): M128i
  {.importc: "_mm_avg_epu16", header: "emmintrin.h".}

func mm_avg_epu8*(a, b: M128i): M128i
  {.importc: "_mm_avg_epu8", header: "emmintrin.h".}

func mm_bslli_si128*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_bslli_si128", header: "emmintrin.h".}

func mm_bsrli_si128*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_bsrli_si128", header: "emmintrin.h".}

func mm_castpd_ps*(a: M128d): M128
  {.importc: "_mm_castpd_ps", header: "emmintrin.h".}

func mm_castpd_si128*(a: M128d): M128i
  {.importc: "_mm_castpd_si128", header: "emmintrin.h".}

func mm_castps_pd*(a: M128): M128d
  {.importc: "_mm_castps_pd", header: "emmintrin.h".}

func mm_castps_si128*(a: M128d): M128i
  {.importc: "_mm_castps_si128", header: "emmintrin.h".}

func mm_castsi128_pd*(a: M128i): M128d
  {.importc: "_mm_castsi128_pd", header: "emmintrin.h".}

func mm_castsi128_ps*(a: M128i): M128
  {.importc: "_mm_castsi128_ps", header: "emmintrin.h".}

func mm_cmpeq_epi16*(a, b: M128i): M128i
  {.importc: "_mm_cmpeq_epi16", header: "emmintrin.h".}

func mm_cmpeq_epi32*(a, b: M128i): M128i
  {.importc: "_mm_cmpeq_epi32", header: "emmintrin.h".}

func mm_cmpeq_epi8*(a, b: M128i): M128i
  {.importc: "_mm_cmpeq_epi8", header: "emmintrin.h".}

func mm_cmpeq_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmpeq_pd", header: "emmintrin.h".}

func mm_cmpeq_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmpeq_sd", header: "emmintrin.h".}

func mm_cmpge_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmpge_pd", header: "emmintrin.h".}

func mm_cmpge_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmpge_sd", header: "emmintrin.h".}

func mm_cmpgt_epi16*(a, b: M128i): M128i
  {.importc: "_mm_cmpgt_epi16", header: "emmintrin.h".}

func mm_cmpgt_epi32*(a, b: M128i): M128i
  {.importc: "_mm_cmpgt_epi32", header: "emmintrin.h".}

func mm_cmpgt_epi8*(a, b: M128i): M128i
  {.importc: "_mm_cmpgt_epi8", header: "emmintrin.h".}

func mm_cmpgt_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmpgt_pd", header: "emmintrin.h".}

func mm_cmpgt_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmpgt_sd", header: "emmintrin.h".}

func mm_cmple_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmple_pd", header: "emmintrin.h".}

func mm_cmple_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmple_sd", header: "emmintrin.h".}

func mm_cmplt_epi16*(a, b: M128i): M128i
  {.importc: "_mm_cmplt_epi16", header: "emmintrin.h".}

func mm_cmplt_epi32*(a, b: M128i): M128i
  {.importc: "_mm_cmplt_epi32", header: "emmintrin.h".}

func mm_cmplt_epi8*(a, b: M128i): M128i
  {.importc: "_mm_cmplt_epi8", header: "emmintrin.h".}

func mm_cmplt_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmplt_pd", header: "emmintrin.h".}

func mm_cmplt_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmplt_sd", header: "emmintrin.h".}

func mm_cmpneq_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmpneq_pd", header: "emmintrin.h".}

func mm_cmpneq_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmpneq_sd", header: "emmintrin.h".}

func mm_cmpnge_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmpnge_pd", header: "emmintrin.h".}

func mm_cmpnge_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmpnge_sd", header: "emmintrin.h".}

func mm_cmpngt_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmpngt_pd", header: "emmintrin.h".}

func mm_cmpngt_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmpngt_sd", header: "emmintrin.h".}

func mm_cmpnle_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmpnle_pd", header: "emmintrin.h".}

func mm_cmpnle_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmpnle_sd", header: "emmintrin.h".}

func mm_cmpnlt_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmpnlt_pd", header: "emmintrin.h".}

func mm_cmpnlt_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmpnlt_sd", header: "emmintrin.h".}

func mm_cmpord_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmpord_pd", header: "emmintrin.h".}

func mm_cmpord_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmpord_sd", header: "emmintrin.h".}

func mm_cmpunord_pd*(a, b: M128d): M128d
  {.importc: "_mm_cmpunord_pd", header: "emmintrin.h".}

func mm_cmpunord_sd*(a, b: M128d): M128d
  {.importc: "_mm_cmpunord_sd", header: "emmintrin.h".}

func mm_comieq_sd*(a, b: M128d): int32
  {.importc: "_mm_comieq_sd", header: "emmintrin.h".}

func mm_comige_sd*(a, b: M128d): int32
  {.importc: "_mm_comige_sd", header: "emmintrin.h".}

func mm_comigt_sd*(a, b: M128d): int32
  {.importc: "_mm_comigt_sd", header: "emmintrin.h".}

func mm_comile_sd*(a, b: M128d): int32
  {.importc: "_mm_comile_sd", header: "emmintrin.h".}

func mm_comilt_sd*(a, b: M128d): int32
  {.importc: "_mm_comilt_sd", header: "emmintrin.h".}

func mm_comineq_sd*(a, b: M128d): int32
  {.importc: "_mm_comineq_sd", header: "emmintrin.h".}

func mm_cvtepi32_pd*(a: M128i): M128d
  {.importc: "_mm_cvtepi32_pd", header: "emmintrin.h".}

func mm_cvtepi32_ps*(a: M128i): M128
  {.importc: "_mm_cvtepi32_ps", header: "emmintrin.h".}

func mm_cvtpd_epi32*(a: M128d): M128i
  {.importc: "_mm_cvtpd_epi32", header: "emmintrin.h".}

func mm_cvtpd_ps*(a: M128d): M128
  {.importc: "_mm_cvtpd_ps", header: "emmintrin.h".}

func mm_cvtps_epi32*(a: M128): M128i
  {.importc: "_mm_cvtps_epi32", header: "emmintrin.h".}

func mm_cvtps_pd*(a: M128): M128d
  {.importc: "_mm_cvtps_pd", header: "emmintrin.h".}

func mm_cvtsd_f64*(a: M128d): float64
  {.importc: "_mm_cvtsd_f64", header: "emmintrin.h".}

func mm_cvtsd_si32*(a: M128d): int32
  {.importc: "_mm_cvtsd_si32", header: "emmintrin.h".}

func mm_cvtsd_si64*(a: M128d): int64
  {.importc: "_mm_cvtsd_f64", header: "emmintrin.h".}

func mm_cvtsd_si64x*(a: M128d): int64
  {.importc: "_mm_cvtsd_si64x", header: "emmintrin.h".}

func mm_cvtsd_ss*(a, b: M128d): M128
  {.importc: "_mm_cvtsd_ss", header: "emmintrin.h".}

func mm_cvtsi128_si32*(a: M128i): int32
  {.importc: "_mm_cvtsi128_si32", header: "emmintrin.h".}

func mm_cvtsi128_si64*(a: M128i): int64
  {.importc: "_mm_cvtsi128_si64", header: "emmintrin.h".}

func mm_cvtsi128_si64x*(a: M128i): int64
  {.importc: "_mm_cvtsi128_si64x", header: "emmintrin.h".}

func mm_cvtsi32_sd*(a: M128d, b: int32): M128d
  {.importc: "_mm_cvtsi128_si64", header: "emmintrin.h".}

func mm_cvtsi32_si128*(a: int32): M128i
  {.importc: "_mm_cvtsi128_si64x", header: "emmintrin.h".}

func mm_cvtsi64_sd*(a: M128d, b: int64): M128d
  {.importc: "_mm_cvtsi64_sd", header: "emmintrin.h".}

func mm_cvtsi64_si128*(a: int64): M128i
  {.importc: "_mm_cvtsi64_si128", header: "emmintrin.h".}

func mm_cvtsi64x_sd*(a: M128d, b: int64): M128d
  {.importc: "_mm_cvtsi64x_sd", header: "emmintrin.h".}

func mm_cvtsi64x_si128*(a: int64): M128i
  {.importc: "_mm_cvtsi64x_si128", header: "emmintrin.h".}

func mm_cvtss_sd*(a, b: M128): M128d
  {.importc: "_mm_cvtss_sd", header: "emmintrin.h".}

func mm_cvttpd_epi32*(a: M128d): M128i
  {.importc: "_mm_cvttpd_epi32", header: "emmintrin.h".}

func mm_cvttps_epi32*(a: M128): M128i
  {.importc: "_mm_cvttps_epi32", header: "emmintrin.h".}

func mm_cvttsd_si32*(a: M128d): int32
  {.importc: "_mm_cvttsd_si32", header: "emmintrin.h".}

func mm_cvttsd_si64*(a: M128d): int64
  {.importc: "_mm_cvttsd_si64", header: "emmintrin.h".}

func mm_cvttsd_si64x*(a: M128d): int64
  {.importc: "_mm_cvttsd_si64x", header: "emmintrin.h".}

func mm_div_pd*(a, b: M128d): M128d
  {.importc: "_mm_div_pd", header: "emmintrin.h".}

func mm_div_sd*(a, b: M128): M128
  {.importc: "_mm_div_sd", header: "emmintrin.h".}

func mm_extract_epi16*(a: M128i, imm8: int32): int32
  {.importc: "_mm_extract_epi16", header: "emmintrin.h".}

func mm_insert_epi16*(a: M128i, i, imm8: int32): M128i
  {.importc: "_mm_insert_epi16", header: "emmintrin.h".}

func mm_load_pd*(p: pointer): M128d
  {.importc: "_mm_load_pd", header: "emmintrin.h".}

func mm_load_pd1*(p: pointer): M128d
  {.importc: "_mm_load_pd1", header: "emmintrin.h".}

func mm_load_sd*(p: pointer): M128d
  {.importc: "_mm_load_sd", header: "emmintrin.h".}

func mm_load_si128*(p: pointer): M128i
  {.importc: "_mm_load_si128", header: "emmintrin.h".}

func mm_load1_pd*(p: pointer): M128d
  {.importc: "_mm_load1_pd", header: "emmintrin.h".}

func mm_loadh_pd*(a: M128d, p: pointer): M128d
  {.importc: "_mm_loadh_pd", header: "emmintrin.h".}

func mm_loadl_epi64*(p: pointer): M128i
  {.importc: "_mm_loadl_epi64", header: "emmintrin.h".}

func mm_loadl_pd*(a: M128d, p: pointer): M128i
  {.importc: "_mm_loadl_pd", header: "emmintrin.h".}

func mm_loadr_pd*(p: pointer): M128d
  {.importc: "_mm_loadr_pd", header: "emmintrin.h".}

func mm_loadu_pd*(p: pointer): M128d
  {.importc: "_mm_loadu_pd", header: "emmintrin.h".}

func mm_loadu_si128*(p: pointer): M128i
  {.importc: "_mm_loadu_si128", header: "emmintrin.h".}

func mm_loadu_si32*(p: pointer): M128i
  {.importc: "_mm_loadu_si32", header: "emmintrin.h".}

func mm_madd_epi16*(a, b: M128i): M128i
  {.importc: "_mm_madd_epi16", header: "emmintrin.h".}

func mm_maskmoveu_si128*(a, mask: M128i, p: pointer)
  {.importc: "_mm_maskmoveu_si128", header: "emmintrin.h".}

func mm_max_epi16*(a, b: M128i): M128i
  {.importc: "_mm_max_epi16", header: "emmintrin.h".}

func mm_max_epu8*(a, b: M128i): M128i
  {.importc: "_mm_max_epu8", header: "emmintrin.h".}

func mm_max_pd*(a, b: M128d): M128d
  {.importc: "_mm_max_pd", header: "emmintrin.h".}

func mm_max_sd*(a, b: M128d): M128d
  {.importc: "_mm_max_sd", header: "emmintrin.h".}

func mm_min_epi16*(a, b: M128i): M128i
  {.importc: "_mm_min_epi16", header: "emmintrin.h".}

func mm_min_epu8*(a, b: M128i): M128i
  {.importc: "_mm_min_epu8", header: "emmintrin.h".}

func mm_min_pd*(a, b: M128d): M128d
  {.importc: "_mm_min_pd", header: "emmintrin.h".}

func mm_min_sd*(a, b: M128d): M128d
  {.importc: "_mm_min_sd", header: "emmintrin.h".}

func mm_move_epi64*(a: M128i): M128i
  {.importc: "_mm_move_epi64", header: "emmintrin.h".}

func mm_move_sd*(a, b: M128d): M128d
  {.importc: "_mm_move_sd", header: "emmintrin.h".}

func mm_movemask_epi8*(a: M128i): int32
  {.importc: "_mm_movemask_epi8", header: "emmintrin.h".}

func mm_movemask_pd*(a: M128d): int32
  {.importc: "_mm_movemask_pd", header: "emmintrin.h".}

func mm_mul_epu32*(a, b: M128i): M128i
  {.importc: "_mm_mul_epu32", header: "emmintrin.h".}

func mm_mul_pd*(a, b: M128d): M128d
  {.importc: "_mm_mul_pd", header: "emmintrin.h".}

func mm_mul_sd*(a, b: M128d): M128d
  {.importc: "_mm_mul_sd", header: "emmintrin.h".}

func mm_mulhi_epi16*(a, b: M128i): M128i
  {.importc: "_mm_mulhi_epi16", header: "emmintrin.h".}

func mm_mulhi_epu16*(a, b: M128i): M128i
  {.importc: "_mm_mulhi_epu16", header: "emmintrin.h".}

func mm_mullo_epi16*(a, b: M128i): M128i
  {.importc: "_mm_mullo_epi16", header: "emmintrin.h".}

func mm_or_pd*(a, b: M128d): M128d
  {.importc: "_mm_or_pd", header: "emmintrin.h".}

func mm_or_si128*(a, b: M128i): M128i
  {.importc: "_mm_or_si128", header: "emmintrin.h".}

func mm_packs_epi16*(a, b: M128i): M128i
  {.importc: "_mm_packs_epi16", header: "emmintrin.h".}

func mm_packs_epi32*(a, b: M128i): M128i
  {.importc: "_mm_packs_epi32", header: "emmintrin.h".}

func mm_packus_epi16*(a, b: M128i): M128i
  {.importc: "_mm_packus_epi16", header: "emmintrin.h".}

func mm_sad_epu8*(a, b: M128i): M128i
  {.importc: "_mm_sad_epu8", header: "emmintrin.h".}

func mm_set_epi16*(a, b, c, d, e, f, g, h: int16): M128i
  {.importc: "_mm_set_epi16", header: "emmintrin.h".}

func mm_set_epi32*(a, b, c, d: int32): M128i
  {.importc: "_mm_set_epi32", header: "emmintrin.h".}

func mm_set_epi64x*(a, b: int64): M128i
  {.importc: "_mm_set_epi64x", header: "emmintrin.h".}

func mm_set_epi8*(
  a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p: uint8
): M128i
  {.importc: "_mm_set_epi8", header: "emmintrin.h".}

func mm_set_pd*(a, b: float64): M128d
  {.importc: "_mm_set_pd", header: "emmintrin.h".}

func mm_set_pd1*(a: float64): M128d
  {.importc: "_mm_set_pd1", header: "emmintrin.h".}

func mm_set_sd*(a: float64): M128d
  {.importc: "_mm_set_sd", header: "emmintrin.h".}

func mm_set1_epi16*(a: int16): M128i
  {.importc: "_mm_set1_epi16", header: "emmintrin.h".}

func mm_set1_epi32*(a: int32): M128i
  {.importc: "_mm_set1_epi32", header: "emmintrin.h".}

func mm_set1_epi64x*(a: int64): M128i
  {.importc: "_mm_set1_epi64x", header: "emmintrin.h".}

func mm_set1_epi8*(a: int8): M128i
  {.importc: "_mm_set1_epi8", header: "emmintrin.h".}

func mm_set1_pd*(a: float64): M128d
  {.importc: "_mm_set1_pd", header: "emmintrin.h".}

func mm_setr_epi16*(a, b, c, d, e, f, g, h: int16): M128i
  {.importc: "_mm_setr_epi16", header: "emmintrin.h".}

func mm_setr_epi32*(a, b, c, d: int32): M128i
  {.importc: "_mm_setr_epi32", header: "emmintrin.h".}

func mm_setr_epi8*(
  a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p: uint8
): M128i
  {.importc: "_mm_setr_epi8", header: "emmintrin.h".}

func mm_setr_pd*(a, b: float64): M128d
  {.importc: "_mm_setr_pd", header: "emmintrin.h".}

func mm_setzero_pd*(): M128d
  {.importc: "_mm_setzero_pd", header: "emmintrin.h".}

func mm_setzero_si128*(): M128i
  {.importc: "_mm_setzero_si128", header: "emmintrin.h".}

func mm_shuffle_epi32*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_shuffle_epi32", header: "emmintrin.h".}

func mm_shuffle_pd*(a, b: M128d, imm8: int32): M128d
  {.importc: "_mm_shuffle_pd", header: "emmintrin.h".}

func mm_shufflehi_epi16*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_shufflehi_epi16", header: "emmintrin.h".}

func mm_shufflelo_epi16*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_shufflelo_epi16", header: "emmintrin.h".}

func mm_sll_epi16*(a, count: M128i): M128i
  {.importc: "_mm_sll_epi16", header: "emmintrin.h".}

func mm_sll_epi32*(a, count: M128i): M128i
  {.importc: "_mm_sll_epi32", header: "emmintrin.h".}

func mm_sll_epi64*(a, count: M128i): M128i
  {.importc: "_mm_sll_epi64", header: "emmintrin.h".}

func mm_slli_epi16*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_slli_epi16", header: "emmintrin.h".}

func mm_slli_epi32*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_slli_epi32", header: "emmintrin.h".}

func mm_slli_epi64*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_slli_epi64", header: "emmintrin.h".}

func mm_slli_si128*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_slli_si128", header: "emmintrin.h".}

func mm_sqrt_pd*(a: M128d): M128d
  {.importc: "_mm_sqrt_pd", header: "emmintrin.h".}

func mm_sqrt_sd*(a, b: M128d): M128d
  {.importc: "_mm_sqrt_sd", header: "emmintrin.h".}

func mm_sra_epi16*(a, count: M128i): M128i
  {.importc: "_mm_sra_epi16", header: "emmintrin.h".}

func mm_sra_epi32*(a, count: M128i): M128i
  {.importc: "_mm_sra_epi32", header: "emmintrin.h".}

func mm_srai_epi16*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_srai_epi16", header: "emmintrin.h".}

func mm_srai_epi32*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_srai_epi32", header: "emmintrin.h".}

func mm_srl_epi16*(a, count: M128i): M128i
  {.importc: "_mm_srl_epi16", header: "emmintrin.h".}

func mm_srl_epi32*(a, count: M128i): M128i
  {.importc: "_mm_srl_epi32", header: "emmintrin.h".}

func mm_srl_epi64*(a, count: M128i): M128i
  {.importc: "_mm_srl_epi64", header: "emmintrin.h".}

func mm_srli_epi16*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_srli_epi16", header: "emmintrin.h".}

func mm_srli_epi32*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_srli_epi32", header: "emmintrin.h".}

func mm_srli_epi64*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_srli_epi64", header: "emmintrin.h".}

func mm_srli_si128*(a: M128i, imm8: int32): M128i
  {.importc: "_mm_srli_si128", header: "emmintrin.h".}

func mm_store_pd*(p: pointer, a: M128d)
  {.importc: "_mm_store_pd", header: "emmintrin.h".}

func mm_store_pd1*(p: pointer, a: M128d)
  {.importc: "_mm_store_pd1", header: "emmintrin.h".}

func mm_store_sd*(p: pointer, a: M128d)
  {.importc: "_mm_store_sd", header: "emmintrin.h".}

func mm_store_si128*(p: pointer, a: M128i)
  {.importc: "_mm_store_si128", header: "emmintrin.h".}

func mm_store1_pd*(p: pointer, a: M128d)
  {.importc: "_mm_store1_pd", header: "emmintrin.h".}

func mm_storeh_pd*(p: pointer, a: M128d)
  {.importc: "_mm_storeh_pd", header: "emmintrin.h".}

func mm_storel_epi64*(p: pointer, a: M128i)
  {.importc: "_mm_storel_epi64", header: "emmintrin.h".}

func mm_storel_pd*(p: pointer, a: M128d)
  {.importc: "_mm_storel_pd", header: "emmintrin.h".}

func mm_storer_pd*(p: pointer, a: M128d)
  {.importc: "_mm_storer_pd", header: "emmintrin.h".}

func mm_storeu_pd*(p: pointer, a: M128d)
  {.importc: "_mm_storeu_pd", header: "emmintrin.h".}

func mm_storeu_si128*(p: pointer, a: M128i)
  {.importc: "_mm_storeu_si128", header: "emmintrin.h".}

func mm_storeu_si32*(p: pointer, a: M128i)
  {.importc: "_mm_storeu_si32", header: "emmintrin.h".}

func mm_stream_pd*(p: pointer, a: M128d)
  {.importc: "_mm_stream_pd", header: "emmintrin.h".}

func mm_stream_si128*(p: pointer, a: M128i)
  {.importc: "_mm_stream_si128", header: "emmintrin.h".}

func mm_stream_si32*(p: pointer, a: int32)
  {.importc: "_mm_stream_si32", header: "emmintrin.h".}

func mm_stream_si64*(p: pointer, a: int64)
  {.importc: "_mm_stream_si64", header: "emmintrin.h".}

func mm_sub_epi16*(a, b: M128i): M128i
  {.importc: "_mm_sub_epi16", header: "emmintrin.h".}

func mm_sub_epi32*(a, b: M128i): M128i
  {.importc: "_mm_sub_epi32", header: "emmintrin.h".}

func mm_sub_epi64*(a, b: M128i): M128i
  {.importc: "_mm_sub_epi64", header: "emmintrin.h".}

func mm_sub_epi8*(a, b: M128i): M128i
  {.importc: "_mm_sub_epi8", header: "emmintrin.h".}

func mm_sub_pd*(a, b: M128d): M128d
  {.importc: "_mm_sub_pd", header: "emmintrin.h".}

func mm_sub_sd*(a, b: M128d): M128d
  {.importc: "_mm_sub_sd", header: "emmintrin.h".}

func mm_subs_epi16*(a, b: M128i): M128i
  {.importc: "_mm_subs_epi16", header: "emmintrin.h".}

func mm_subs_epi8*(a, b: M128i): M128i
  {.importc: "_mm_subs_epi8", header: "emmintrin.h".}

func mm_subs_epu16*(a, b: M128i): M128i
  {.importc: "_mm_subs_epu16", header: "emmintrin.h".}

func mm_subs_epu8*(a, b: M128i): M128i
  {.importc: "_mm_subs_epu8", header: "emmintrin.h".}

func mm_ucomieq_sd*(a, b: M128d): int32
  {.importc: "_mm_ucomieq_sd", header: "emmintrin.h".}

func mm_ucomige_sd*(a, b: M128d): int32
  {.importc: "_mm_ucomige_sd", header: "emmintrin.h".}

func mm_ucomigt_sd*(a, b: M128d): int32
  {.importc: "_mm_ucomigt_sd", header: "emmintrin.h".}

func mm_ucomile_sd*(a, b: M128d): int32
  {.importc: "_mm_ucomile_sd", header: "emmintrin.h".}

func mm_ucomilt_sd*(a, b: M128d): int32
  {.importc: "_mm_ucomilt_sd", header: "emmintrin.h".}

func mm_ucomineq_sd*(a, b: M128d): int32
  {.importc: "_mm_ucomineq_sd", header: "emmintrin.h".}

func mm_undefined_pd*(): M128d
  {.importc: "_mm_undefined_pd", header: "emmintrin.h".}

func mm_undefined_si128*(): M128i
  {.importc: "_mm_undefined_si128", header: "emmintrin.h".}

func mm_unpackhi_epi16*(a, b: M128i): M128i
  {.importc: "_mm_unpackhi_epi16", header: "emmintrin.h".}

func mm_unpackhi_epi32*(a, b: M128i): M128i
  {.importc: "_mm_unpackhi_epi32", header: "emmintrin.h".}

func mm_unpackhi_epi64*(a, b: M128i): M128i
  {.importc: "_mm_unpackhi_epi64", header: "emmintrin.h".}

func mm_unpackhi_epi8*(a, b: M128i): M128i
  {.importc: "_mm_unpackhi_epi8", header: "emmintrin.h".}

func mm_unpackhi_pd*(a, b: M128d): M128d
  {.importc: "_mm_unpackhi_pd", header: "emmintrin.h".}

func mm_unpacklo_epi16*(a, b: M128i): M128i
  {.importc: "_mm_unpacklo_epi16", header: "emmintrin.h".}

func mm_unpacklo_epi32*(a, b: M128i): M128i
  {.importc: "_mm_unpacklo_epi32", header: "emmintrin.h".}

func mm_unpacklo_epi64*(a, b: M128i): M128i
  {.importc: "_mm_unpacklo_epi64", header: "emmintrin.h".}

func mm_unpacklo_epi8*(a, b: M128i): M128i
  {.importc: "_mm_unpacklo_epi8", header: "emmintrin.h".}

func mm_unpacklo_pd*(a, b: M128d): M128d
  {.importc: "_mm_unpacklo_pd", header: "emmintrin.h".}

func mm_xor_pd*(a, b: M128d): M128d
  {.importc: "_mm_xor_pd", header: "emmintrin.h".}

func mm_xor_si128*(a, b: M128i): M128i
  {.importc: "_mm_xor_si128", header: "emmintrin.h".}

# For readability

func m128*(): M128 {.inline.} =
  mm_setzero_ps()

func m128*(a: float32): M128 {.inline.} =
  mm_set1_ps(a)

func m128d*(): M128d {.inline.} =
  mm_setzero_pd()

func m128i*(): M128i {.inline.} =
  mm_setzero_si128()

func m128d*(a: float64): M128d {.inline.} =
  mm_set1_pd(a)

func m128i*(a: int32): M128i {.inline.} =
  mm_set1_epi32(a)

func `and`*(a, b: M128): M128 {.inline.} =
  mm_and_ps(a, b)

func `and`*(a, b: M128d): M128d {.inline.} =
  mm_and_pd(a, b)

func `and`*(a, b: M128i): M128i {.inline.} =
  mm_and_si128(a, b)

func `or`*(a, b: M128): M128 {.inline.} =
  mm_or_ps(a, b)

func `or`*(a, b: M128d): M128d {.inline.} =
  mm_or_pd(a, b)

func `or`*(a, b: M128i): M128i {.inline.} =
  mm_or_si128(a, b)

func `xor`*(a, b: M128): M128 {.inline.} =
  mm_xor_ps(a, b)

func `xor`*(a, b: M128d): M128d {.inline.} =
  mm_xor_pd(a, b)

func `xor`*(a, b: M128i): M128i {.inline.} =
  mm_xor_si128(a, b)

func `==`*(a, b: M128): M128 {.inline.} =
  mm_cmpeq_ps(a, b)

func `==`*(a, b: M128d): M128d {.inline.} =
  mm_cmpeq_pd(a, b)

func `!=`*(a, b: M128): M128 {.inline.} =
  mm_cmpneq_ps(a, b)

func `!=`*(a, b: M128d): M128d {.inline.} =
  mm_cmpneq_pd(a, b)

func `>`*(a, b: M128): M128 {.inline.} =
  mm_cmpgt_ps(a, b)

func `>`*(a, b: M128d): M128d {.inline.} =
  mm_cmpgt_pd(a, b)

func `>=`*(a, b: M128): M128 {.inline.} =
  mm_cmpge_ps(a, b)

func `>=`*(a, b: M128d): M128d {.inline.} =
  mm_cmpge_pd(a, b)

func `<`*(a, b: M128): M128 {.inline.} =
  mm_cmplt_ps(a, b)

func `<`*(a, b: M128d): M128d {.inline.} =
  mm_cmplt_pd(a, b)

func `<=`*(a, b: M128): M128 {.inline.} =
  mm_cmple_ps(a, b)

func `<=`*(a, b: M128d): M128d {.inline.} =
  mm_cmple_pd(a, b)

func `+`*(a, b: M128): M128 {.inline.} =
  mm_add_ps(a, b)

func `+`*(a, b: M128d): M128d {.inline.} =
  mm_add_pd(a, b)

func `+=`*(a: var M128, b: M128) {.inline.} =
  a = a + b

func `+=`*(a: var M128d, b: M128d) {.inline.} =
  a = a + b

func `-`*(a, b: M128): M128 {.inline.} =
  mm_sub_ps(a, b)

func `-`*(a, b: M128d): M128d {.inline.} =
  mm_sub_pd(a, b)

func `-=`*(a: var M128, b: M128) {.inline.} =
  a = a - b

func `-=`*(a: var M128d, b: M128d) {.inline.} =
  a = a - b

func `*`*(a, b: M128): M128 {.inline.} =
  mm_mul_ps(a, b)

func `*`*(a, b: M128d): M128d {.inline.} =
  mm_mul_pd(a, b)

func `*=`*(a: var M128, b: M128) {.inline.} =
  a = a * b

func `*=`*(a: var M128d, b: M128d) {.inline.} =
  a = a * b

func `/`*(a, b: M128): M128 {.inline.} =
  mm_div_ps(a, b)

func `/`*(a, b: M128d): M128d {.inline.} =
  mm_div_pd(a, b)

func `/=`*(a: var M128, b: M128) {.inline.} =
  a = a / b

func `/=`*(a: var M128d, b: M128d) {.inline.} =
  a = a / b

func max*(a, b: M128): M128 {.inline.} =
  mm_max_ps(a, b)

func max*(a, b: M128d): M128d {.inline.} =
  mm_max_pd(a, b)

func min*(a, b: M128): M128 {.inline.} =
  mm_min_ps(a, b)

func min*(a, b: M128d): M128d {.inline.} =
  mm_min_pd(a, b)

func sqrt*(a: M128): M128 {.inline.} =
  mm_sqrt_ps(a)

func sqrt*(a: M128d): M128d {.inline.} =
  mm_sqrt_pd(a)
