## SSE and SSE2 intrinsics

type
  M128* {.importc: "__m128", header: "xmmintrin.h".} = object
  M128i* {.importc: "__m128i", header: "emmintrin.h".} = object
  M128d* {.importc: "__m128d", header: "emmintrin.h".} = object

template MM_SHUFFLE*(z, y, x, w: int | uint): int32 =
  ((z shl 6) or (y shl 4) or (x shl 2) or w).int32

{.push header: "immintrin.h".}

const
  MM_HINT_T0*: int32 = 3
  MM_HINT_T1*: int32 = 2
  MM_HINT_T2*: int32 = 1
  MM_HINT_NTA*: int32 = 0
  MM_HINT_ET0*: int32 = 7
  MM_HINT_ET1*: int32 = 6

func mm_malloc*(size, align: int): pointer {.importc: "_mm_malloc".}
func mm_sfence*() {.importc: "_mm_sfence".}
func mm_free*(p: pointer) {.importc: "_mm_free".}
func mm_prefetch*(p: pointer, i: int32) {.importc: "_mm_prefetch".}

{.pop.}

{.push header: "xmmintrin.h".}

func mm_add_ps*(a, b: M128): M128 {.importc: "_mm_add_ps".}

func mm_add_ss*(a, b: M128): M128 {.importc: "_mm_add_ss".}

func mm_and_ps*(a, b: M128): M128 {.importc: "_mm_and_ps".}

func mm_andnot_ps*(a, b: M128): M128 {.importc: "_mm_andnot_ps".}

func mm_cmpeq_ps*(a, b: M128): M128 {.importc: "_mm_cmpeq_ps".}

func mm_cmpeq_ss*(a, b: M128): M128 {.importc: "_mm_cmpeq_ss".}

func mm_cmpge_ps*(a, b: M128): M128 {.importc: "_mm_cmpge_ps".}

func mm_cmpge_ss*(a, b: M128): M128 {.importc: "_mm_cmpge_ss".}

func mm_cmpgt_ps*(a, b: M128): M128 {.importc: "_mm_cmpgt_ps".}

func mm_cmpgt_ss*(a, b: M128): M128 {.importc: "_mm_cmpgt_ss".}

func mm_cmple_ps*(a, b: M128): M128 {.importc: "_mm_cmple_ps".}

func mm_cmple_ss*(a, b: M128): M128 {.importc: "_mm_cmple_ss".}

func mm_cmplt_ps*(a, b: M128): M128 {.importc: "_mm_cmplt_ps".}

func mm_cmplt_ss*(a, b: M128): M128 {.importc: "_mm_cmplt_ss".}

func mm_cmpneq_ps*(a, b: M128): M128 {.importc: "_mm_cmpneq_ps".}

func mm_cmpneq_ss*(a, b: M128): M128 {.importc: "_mm_cmpneq_ss".}

func mm_cmpnge_ps*(a, b: M128): M128 {.importc: "_mm_cmpnge_ps".}

func mm_cmpnge_ss*(a, b: M128): M128 {.importc: "_mm_cmpnge_ss".}

func mm_cmpngt_ps*(a, b: M128): M128 {.importc: "_mm_cmpngt_ps".}

func mm_cmpngt_ss*(a, b: M128): M128 {.importc: "_mm_cmpngt_ss".}

func mm_cmpnle_ps*(a, b: M128): M128 {.importc: "_mm_cmpnle_ps".}

func mm_cmpnle_ss*(a, b: M128): M128 {.importc: "_mm_cmpnle_ss".}

func mm_cmpnlt_ps*(a, b: M128): M128 {.importc: "_mm_cmpnlt_ps".}

func mm_cmpnlt_ss*(a, b: M128): M128 {.importc: "_mm_cmpnlt_ss".}

func mm_cmpord_ps*(a, b: M128): M128 {.importc: "_mm_cmpord_ps".}

func mm_cmpord_ss*(a, b: M128): M128 {.importc: "_mm_cmpord_ss".}

func mm_cmpunord_ps*(a, b: M128): M128 {.importc: "_mm_cmpunord_ps".}

func mm_cmpunord_ss*(a, b: M128): M128 {.importc: "_mm_cmpunord_ss".}

func mm_comieq_ss*(a, b: M128): int32 {.importc: "_mm_comieq_ss".}

func mm_comige_ss*(a, b: M128): int32 {.importc: "_mm_comige_ss".}

func mm_comigt_ss*(a, b: M128): int32 {.importc: "_mm_comigt_ss".}

func mm_comile_ss*(a, b: M128): int32 {.importc: "_mm_comile_ss".}

func mm_comilt_ss*(a, b: M128): int32 {.importc: "_mm_comilt_ss".}

func mm_comineq_ss*(a, b: M128): int32 {.importc: "_mm_comineq_ss".}

func mm_cvt_si2ss*(a: M128, b: int32): M128 {.importc: "_mm_cvt_si2ss".}

func mm_cvt_ss2si*(a: M128): int32 {.importc: "_mm_cvt_ss2si".}

func mm_cvtsi32_ss*(a: M128, b: int32): M128 {.importc: "_mm_cvtsi32_ss".}

func mm_cvtss_f32*(a: M128): float32 {.importc: "_mm_cvtss_f32".}

func mm_cvtss_si32*(a: M128): int32 {.importc: "_mm_cvtss_si32".}

func mm_cvtss_si64*(a: M128): int64 {.importc: "_mm_cvtss_si64".}

func mm_cvtt_ss2si*(a: M128): int32 {.importc: "_mm_cvtt_ss2si".}

func mm_cvttss_si32*(a: M128): int32 {.importc: "_mm_cvttss_si32".}

func mm_cvttss_si64*(a: M128): int64 {.importc: "_mm_cvttss_si64".}

func mm_div_ps*(a, b: M128): M128 {.importc: "_mm_div_ps".}

func mm_div_ss*(a, b: M128): M128 {.importc: "_mm_div_ss".}

func mm_load_ps*(p: pointer): M128 {.importc: "_mm_load_ps".}

func mm_load_ps1*(p: pointer): M128 {.importc: "_mm_load_ps1".}

func mm_load_ss*(p: pointer): M128 {.importc: "_mm_load_ss".}

func mm_load1_ps*(p: pointer): M128 {.importc: "_mm_load1_ps".}

func mm_loadr_ps*(p: pointer): M128 {.importc: "_mm_loadr_ps".}

func mm_loadu_ps*(p: pointer): M128 {.importc: "_mm_loadu_ps".}

func mm_loadu_si16*(p: pointer): M128 {.importc: "_mm_loadu_si16".}

func mm_loadu_si64*(p: pointer): M128 {.importc: "_mm_loadu_si64".}

func mm_max_ps*(a, b: M128): M128 {.importc: "_mm_max_ps".}

func mm_max_ss*(a, b: M128): M128 {.importc: "_mm_max_ss".}

func mm_min_ps*(a, b: M128): M128 {.importc: "_mm_min_ps".}

func mm_min_ss*(a, b: M128): M128 {.importc: "_mm_min_ss".}

func mm_move_ss*(a, b: M128): M128 {.importc: "_mm_move_ss".}

func mm_movehl_ps*(a, b: M128): M128 {.importc: "_mm_movehl_ps".}

func mm_movelh_ps*(a, b: M128): M128 {.importc: "_mm_movelh_ps".}

func mm_movemask_ps*(a: M128): int32 {.importc: "_mm_movemask_ps".}

func mm_mul_ps*(a, b: M128): M128 {.importc: "_mm_mul_ps".}

func mm_mul_ss*(a, b: M128): M128 {.importc: "_mm_mul_ss".}

func mm_or_ps*(a, b: M128): M128 {.importc: "_mm_or_ps".}

func mm_rcp_ps*(a: M128): M128 {.importc: "_mm_rcp_ps".}

func mm_rcp_ss*(a: M128): M128 {.importc: "_mm_rcp_ss".}

func mm_rsqrt_ps*(a: M128): M128 {.importc: "_mm_rsqrt_ps".}

func mm_rsqrt_ss*(a: M128): M128 {.importc: "_mm_rsqrt_ss".}

func mm_set_ps*(a, b, c, d: float32): M128 {.importc: "_mm_set_ps".}

func mm_set_ps1*(a: float32): M128 {.importc: "_mm_set_ps1".}

func mm_set_ss*(a: float32): M128 {.importc: "_mm_set_ss".}

func mm_set1_ps*(a: float32): M128 {.importc: "_mm_set1_ps".}

func mm_setr_ps*(a, b, c, d: float32): M128 {.importc: "_mm_setr_ps".}

func mm_setzero_ps*(): M128 {.importc: "_mm_setzero_ps".}

func mm_shuffle_ps*(a, b: M128, imm8: int32 | uint32): M128 {.importc: "_mm_shuffle_ps".}

func mm_sqrt_ps*(a: M128): M128 {.importc: "_mm_sqrt_ps".}

func mm_sqrt_ss*(a: M128): M128 {.importc: "_mm_sqrt_ss".}

func mm_store_ps*(p: pointer, a: M128) {.importc: "_mm_store_ps".}

func mm_store_ps1*(p: pointer, a: M128) {.importc: "_mm_store_ps1".}

func mm_store_ss*(p: pointer, a: M128) {.importc: "_mm_store_ss".}

func mm_store1_ps*(p: pointer, a: M128) {.importc: "_mm_store1_ps".}

func mm_storer_ps*(p: pointer, a: M128) {.importc: "_mm_storer_ps".}

func mm_storeu_ps*(p: pointer, a: M128) {.importc: "_mm_storeu_ps".}

func mm_storeu_si16*(p: pointer, a: M128) {.importc: "_mm_storeu_si16".}

func mm_storeu_si64*(p: pointer, a: M128) {.importc: "_mm_storeu_si64".}

func mm_stream_ps*(p: pointer, a: M128) {.importc: "_mm_stream_ps".}

func mm_sub_ps*(a, b: M128): M128 {.importc: "_mm_sub_ps".}

func mm_sub_ss*(a, b: M128): M128 {.importc: "_mm_sub_ss".}

func mm_ucomieq_ss*(a, b: M128): int32 {.importc: "_mm_ucomieq_ss".}

func mm_ucomige_ss*(a, b: M128): int32 {.importc: "_mm_ucomige_ss".}

func mm_ucomigt_ss*(a, b: M128): int32 {.importc: "_mm_ucomigt_ss".}

func mm_ucomile_ss*(a, b: M128): int32 {.importc: "_mm_ucomile_ss".}

func mm_ucomilt_ss*(a, b: M128): int32 {.importc: "_mm_ucomilt_ss".}

func mm_ucomineq_ss*(a, b: M128): int32 {.importc: "_mm_ucomineq_ss".}

func mm_undefined_ps*(): M128 {.importc: "_mm_undefined_ps".}

func mm_unpackhi_ps*(a, b: M128): M128 {.importc: "_mm_unpackhi_ps".}

func mm_unpacklo_ps*(a, b: M128): M128 {.importc: "_mm_unpacklo_ps".}

func mm_xor_ps*(a, b: M128): M128 {.importc: "_mm_xor_ps".}

{.pop.}

{.push header: "emmintrin.h".}

func mm_add_epi16*(a, b: M128i): M128i {.importc: "_mm_add_epi16".}

func mm_add_epi32*(a, b: M128i): M128i {.importc: "_mm_add_epi32".}

func mm_add_epi64*(a, b: M128i): M128i {.importc: "_mm_add_epi64".}

func mm_add_epi8*(a, b: M128i): M128i {.importc: "_mm_add_epi8".}

func mm_add_pd*(a, b: M128d): M128d {.importc: "_mm_add_pd".}

func mm_add_sd*(a, b: M128d): M128d {.importc: "_mm_add_sd".}

func mm_adds_epi16*(a, b: M128i): M128i {.importc: "_mm_adds_epi16".}

func mm_adds_epi8*(a, b: M128i): M128i {.importc: "_mm_adds_epi8".}

func mm_adds_epu16*(a, b: M128i): M128i {.importc: "_mm_adds_epu16".}

func mm_adds_epu8*(a, b: M128i): M128i {.importc: "_mm_adds_epu8".}

func mm_and_pd*(a, b: M128d): M128d {.importc: "_mm_and_pd".}

func mm_and_si128*(a, b: M128i): M128i {.importc: "_mm_and_si128".}

func mm_andnot_pd*(a, b: M128d): M128d {.importc: "_mm_andnot_pd".}

func mm_andnot_si128*(a, b: M128i): M128i {.importc: "_mm_andnot_si128".}

func mm_avg_epu16*(a, b: M128i): M128i {.importc: "_mm_avg_epu16".}

func mm_avg_epu8*(a, b: M128i): M128i {.importc: "_mm_avg_epu8".}

func mm_bslli_si128*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_bslli_si128".}

func mm_bsrli_si128*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_bsrli_si128".}

func mm_castpd_ps*(a: M128d): M128 {.importc: "_mm_castpd_ps".}

func mm_castpd_si128*(a: M128d): M128i {.importc: "_mm_castpd_si128".}

func mm_castps_pd*(a: M128): M128d {.importc: "_mm_castps_pd".}

func mm_castps_si128*(a: M128): M128i {.importc: "_mm_castps_si128".}

func mm_castsi128_pd*(a: M128i): M128d {.importc: "_mm_castsi128_pd".}

func mm_castsi128_ps*(a: M128i): M128 {.importc: "_mm_castsi128_ps".}

func mm_cmpeq_epi16*(a, b: M128i): M128i {.importc: "_mm_cmpeq_epi16".}

func mm_cmpeq_epi32*(a, b: M128i): M128i {.importc: "_mm_cmpeq_epi32".}

func mm_cmpeq_epi8*(a, b: M128i): M128i {.importc: "_mm_cmpeq_epi8".}

func mm_cmpeq_pd*(a, b: M128d): M128d {.importc: "_mm_cmpeq_pd".}

func mm_cmpeq_sd*(a, b: M128d): M128d {.importc: "_mm_cmpeq_sd".}

func mm_cmpge_pd*(a, b: M128d): M128d {.importc: "_mm_cmpge_pd".}

func mm_cmpge_sd*(a, b: M128d): M128d {.importc: "_mm_cmpge_sd".}

func mm_cmpgt_epi16*(a, b: M128i): M128i {.importc: "_mm_cmpgt_epi16".}

func mm_cmpgt_epi32*(a, b: M128i): M128i {.importc: "_mm_cmpgt_epi32".}

func mm_cmpgt_epi8*(a, b: M128i): M128i {.importc: "_mm_cmpgt_epi8".}

func mm_cmpgt_pd*(a, b: M128d): M128d {.importc: "_mm_cmpgt_pd".}

func mm_cmpgt_sd*(a, b: M128d): M128d {.importc: "_mm_cmpgt_sd".}

func mm_cmple_pd*(a, b: M128d): M128d {.importc: "_mm_cmple_pd".}

func mm_cmple_sd*(a, b: M128d): M128d {.importc: "_mm_cmple_sd".}

func mm_cmplt_epi16*(a, b: M128i): M128i {.importc: "_mm_cmplt_epi16".}

func mm_cmplt_epi32*(a, b: M128i): M128i {.importc: "_mm_cmplt_epi32".}

func mm_cmplt_epi8*(a, b: M128i): M128i {.importc: "_mm_cmplt_epi8".}

func mm_cmplt_pd*(a, b: M128d): M128d {.importc: "_mm_cmplt_pd".}

func mm_cmplt_sd*(a, b: M128d): M128d {.importc: "_mm_cmplt_sd".}

func mm_cmpneq_pd*(a, b: M128d): M128d {.importc: "_mm_cmpneq_pd".}

func mm_cmpneq_sd*(a, b: M128d): M128d {.importc: "_mm_cmpneq_sd".}

func mm_cmpnge_pd*(a, b: M128d): M128d {.importc: "_mm_cmpnge_pd".}

func mm_cmpnge_sd*(a, b: M128d): M128d {.importc: "_mm_cmpnge_sd".}

func mm_cmpngt_pd*(a, b: M128d): M128d {.importc: "_mm_cmpngt_pd".}

func mm_cmpngt_sd*(a, b: M128d): M128d {.importc: "_mm_cmpngt_sd".}

func mm_cmpnle_pd*(a, b: M128d): M128d {.importc: "_mm_cmpnle_pd".}

func mm_cmpnle_sd*(a, b: M128d): M128d {.importc: "_mm_cmpnle_sd".}

func mm_cmpnlt_pd*(a, b: M128d): M128d {.importc: "_mm_cmpnlt_pd".}

func mm_cmpnlt_sd*(a, b: M128d): M128d {.importc: "_mm_cmpnlt_sd".}

func mm_cmpord_pd*(a, b: M128d): M128d {.importc: "_mm_cmpord_pd".}

func mm_cmpord_sd*(a, b: M128d): M128d {.importc: "_mm_cmpord_sd".}

func mm_cmpunord_pd*(a, b: M128d): M128d {.importc: "_mm_cmpunord_pd".}

func mm_cmpunord_sd*(a, b: M128d): M128d {.importc: "_mm_cmpunord_sd".}

func mm_comieq_sd*(a, b: M128d): int32 {.importc: "_mm_comieq_sd".}

func mm_comige_sd*(a, b: M128d): int32 {.importc: "_mm_comige_sd".}

func mm_comigt_sd*(a, b: M128d): int32 {.importc: "_mm_comigt_sd".}

func mm_comile_sd*(a, b: M128d): int32 {.importc: "_mm_comile_sd".}

func mm_comilt_sd*(a, b: M128d): int32 {.importc: "_mm_comilt_sd".}

func mm_comineq_sd*(a, b: M128d): int32 {.importc: "_mm_comineq_sd".}

func mm_cvtepi32_pd*(a: M128i): M128d {.importc: "_mm_cvtepi32_pd".}

func mm_cvtepi32_ps*(a: M128i): M128 {.importc: "_mm_cvtepi32_ps".}

func mm_cvtpd_epi32*(a: M128d): M128i {.importc: "_mm_cvtpd_epi32".}

func mm_cvtpd_ps*(a: M128d): M128 {.importc: "_mm_cvtpd_ps".}

func mm_cvtps_epi32*(a: M128): M128i {.importc: "_mm_cvtps_epi32".}

func mm_cvtps_pd*(a: M128): M128d {.importc: "_mm_cvtps_pd".}

func mm_cvtsd_f64*(a: M128d): float64 {.importc: "_mm_cvtsd_f64".}

func mm_cvtsd_si32*(a: M128d): int32 {.importc: "_mm_cvtsd_si32".}

func mm_cvtsd_si64*(a: M128d): int64 {.importc: "_mm_cvtsd_si64".}

func mm_cvtsd_si64x*(a: M128d): int64 {.importc: "_mm_cvtsd_si64x".}

func mm_cvtsd_ss*(a, b: M128d): M128 {.importc: "_mm_cvtsd_ss".}

func mm_cvtsi128_si32*(a: M128i): int32 {.importc: "_mm_cvtsi128_si32".}

func mm_cvtsi128_si64*(a: M128i): int64 {.importc: "_mm_cvtsi128_si64".}

func mm_cvtsi128_si64x*(a: M128i): int64 {.importc: "_mm_cvtsi128_si64x".}

func mm_cvtsi32_sd*(a: M128d, b: int32): M128d {.importc: "_mm_cvtsi32_sd".}

func mm_cvtsi32_si128*(a: int32 | uint32): M128i {.importc: "_mm_cvtsi32_si128".}

func mm_cvtsi64_sd*(a: M128d, b: int64): M128d {.importc: "_mm_cvtsi64_sd".}

func mm_cvtsi64_si128*(a: int64 | uint64): M128i {.importc: "_mm_cvtsi64_si128".}

func mm_cvtsi64x_sd*(a: M128d, b: int64): M128d {.importc: "_mm_cvtsi64x_sd".}

func mm_cvtsi64x_si128*(a: int64 | uint64): M128i {.importc: "_mm_cvtsi64x_si128".}

func mm_cvtss_sd*(a, b: M128): M128d {.importc: "_mm_cvtss_sd".}

func mm_cvttpd_epi32*(a: M128d): M128i {.importc: "_mm_cvttpd_epi32".}

func mm_cvttps_epi32*(a: M128): M128i {.importc: "_mm_cvttps_epi32".}

func mm_cvttsd_si32*(a: M128d): int32 {.importc: "_mm_cvttsd_si32".}

func mm_cvttsd_si64*(a: M128d): int64 {.importc: "_mm_cvttsd_si64".}

func mm_cvttsd_si64x*(a: M128d): int64 {.importc: "_mm_cvttsd_si64x".}

func mm_div_pd*(a, b: M128d): M128d {.importc: "_mm_div_pd".}

func mm_div_sd*(a, b: M128): M128 {.importc: "_mm_div_sd".}

func mm_extract_epi16*(a: M128i, imm8: int32 | uint32): int32 {.importc: "_mm_extract_epi16".}

func mm_insert_epi16*(a: M128i, i, imm8: int32 | uint32): M128i {.importc: "_mm_insert_epi16".}

func mm_load_pd*(p: pointer): M128d {.importc: "_mm_load_pd".}

func mm_load_pd1*(p: pointer): M128d {.importc: "_mm_load_pd1".}

func mm_load_sd*(p: pointer): M128d {.importc: "_mm_load_sd".}

func mm_load_si128*(p: pointer): M128i {.importc: "_mm_load_si128".}

func mm_load1_pd*(p: pointer): M128d {.importc: "_mm_load1_pd".}

func mm_loadh_pd*(a: M128d, p: pointer): M128d {.importc: "_mm_loadh_pd".}

func mm_loadl_epi64*(p: pointer): M128i {.importc: "_mm_loadl_epi64".}

func mm_loadl_pd*(a: M128d, p: pointer): M128i {.importc: "_mm_loadl_pd".}

func mm_loadl_pi*(a: M128, p: pointer): M128 {.importc: "_mm_loadl_pi".}

func mm_loadr_pd*(p: pointer): M128d {.importc: "_mm_loadr_pd".}

func mm_loadu_pd*(p: pointer): M128d {.importc: "_mm_loadu_pd".}

func mm_loadu_si128*(p: pointer): M128i {.importc: "_mm_loadu_si128".}

func mm_loadu_si32*(p: pointer): M128i {.importc: "_mm_loadu_si32".}

func mm_madd_epi16*(a, b: M128i): M128i {.importc: "_mm_madd_epi16".}

func mm_maskmoveu_si128*(a, mask: M128i, p: pointer) {.importc: "_mm_maskmoveu_si128".}

func mm_max_epi16*(a, b: M128i): M128i {.importc: "_mm_max_epi16".}

func mm_max_epu8*(a, b: M128i): M128i {.importc: "_mm_max_epu8".}

func mm_max_pd*(a, b: M128d): M128d {.importc: "_mm_max_pd".}

func mm_max_sd*(a, b: M128d): M128d {.importc: "_mm_max_sd".}

func mm_min_epi16*(a, b: M128i): M128i {.importc: "_mm_min_epi16".}

func mm_min_epu8*(a, b: M128i): M128i {.importc: "_mm_min_epu8".}

func mm_min_pd*(a, b: M128d): M128d {.importc: "_mm_min_pd".}

func mm_min_sd*(a, b: M128d): M128d {.importc: "_mm_min_sd".}

func mm_move_epi64*(a: M128i): M128i {.importc: "_mm_move_epi64".}

func mm_move_sd*(a, b: M128d): M128d {.importc: "_mm_move_sd".}

func mm_movemask_epi8*(a: M128i): int32 {.importc: "_mm_movemask_epi8".}

func mm_movemask_pd*(a: M128d): int32 {.importc: "_mm_movemask_pd".}

func mm_mul_epu32*(a, b: M128i): M128i {.importc: "_mm_mul_epu32".}

func mm_mul_pd*(a, b: M128d): M128d {.importc: "_mm_mul_pd".}

func mm_mul_sd*(a, b: M128d): M128d {.importc: "_mm_mul_sd".}

func mm_mulhi_epi16*(a, b: M128i): M128i {.importc: "_mm_mulhi_epi16".}

func mm_mulhi_epu16*(a, b: M128i): M128i {.importc: "_mm_mulhi_epu16".}

func mm_mullo_epi16*(a, b: M128i): M128i {.importc: "_mm_mullo_epi16".}

func mm_or_pd*(a, b: M128d): M128d {.importc: "_mm_or_pd".}

func mm_or_si128*(a, b: M128i): M128i {.importc: "_mm_or_si128".}

func mm_packs_epi16*(a, b: M128i): M128i {.importc: "_mm_packs_epi16".}

func mm_packs_epi32*(a, b: M128i): M128i {.importc: "_mm_packs_epi32".}

func mm_packus_epi16*(a, b: M128i): M128i {.importc: "_mm_packus_epi16".}

func mm_sad_epu8*(a, b: M128i): M128i {.importc: "_mm_sad_epu8".}

func mm_set_epi16*(a, b, c, d, e, f, g, h: int16): M128i {.importc: "_mm_set_epi16".}

func mm_set_epi32*(a, b, c, d: int32 | uint32): M128i {.importc: "_mm_set_epi32".}

func mm_set_epi64x*(a, b: int64 | uint64): M128i {.importc: "_mm_set_epi64x".}

func mm_set_epi8*(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p: int8 | uint8): M128i {.importc: "_mm_set_epi8".}

func mm_set_pd*(a, b: float64): M128d {.importc: "_mm_set_pd".}

func mm_set_pd1*(a: float64): M128d {.importc: "_mm_set_pd1".}

func mm_set_sd*(a: float64): M128d {.importc: "_mm_set_sd".}

func mm_set1_epi16*(a: int16 | uint16): M128i {.importc: "_mm_set1_epi16".}

func mm_set1_epi32*(a: int32 | uint32): M128i {.importc: "_mm_set1_epi32".}

func mm_set1_epi64x*(a: int64 | uint64): M128i {.importc: "_mm_set1_epi64x".}

func mm_set1_epi8*(a: int8 | uint8): M128i {.importc: "_mm_set1_epi8".}

func mm_set1_pd*(a: float64): M128d {.importc: "_mm_set1_pd".}

func mm_setr_epi16*(a, b, c, d, e, f, g, h: int16): M128i {.importc: "_mm_setr_epi16".}

func mm_setr_epi32*(a, b, c, d: int32 | uint32): M128i {.importc: "_mm_setr_epi32".}

func mm_setr_epi8*(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p: uint8): M128i {.importc: "_mm_setr_epi8".}

func mm_setr_pd*(a, b: float64): M128d {.importc: "_mm_setr_pd".}

func mm_setzero_pd*(): M128d {.importc: "_mm_setzero_pd".}

func mm_setzero_si128*(): M128i {.importc: "_mm_setzero_si128".}

func mm_shuffle_epi32*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_shuffle_epi32".}

func mm_shuffle_pd*(a, b: M128d, imm8: int32 | uint32): M128d {.importc: "_mm_shuffle_pd".}

func mm_shufflehi_epi16*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_shufflehi_epi16".}

func mm_shufflelo_epi16*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_shufflelo_epi16".}

func mm_sll_epi16*(a, count: M128i): M128i {.importc: "_mm_sll_epi16".}

func mm_sll_epi32*(a, count: M128i): M128i {.importc: "_mm_sll_epi32".}

func mm_sll_epi64*(a, count: M128i): M128i {.importc: "_mm_sll_epi64".}

func mm_slli_epi16*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_slli_epi16".}

func mm_slli_epi32*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_slli_epi32".}

func mm_slli_epi64*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_slli_epi64".}

func mm_slli_si128*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_slli_si128".}

func mm_sqrt_pd*(a: M128d): M128d {.importc: "_mm_sqrt_pd".}

func mm_sqrt_sd*(a, b: M128d): M128d {.importc: "_mm_sqrt_sd".}

func mm_sra_epi16*(a, count: M128i): M128i {.importc: "_mm_sra_epi16".}

func mm_sra_epi32*(a, count: M128i): M128i {.importc: "_mm_sra_epi32".}

func mm_srai_epi16*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_srai_epi16".}

func mm_srai_epi32*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_srai_epi32".}

func mm_srl_epi16*(a, count: M128i): M128i {.importc: "_mm_srl_epi16".}

func mm_srl_epi32*(a, count: M128i): M128i {.importc: "_mm_srl_epi32".}

func mm_srl_epi64*(a, count: M128i): M128i {.importc: "_mm_srl_epi64".}

func mm_srli_epi16*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_srli_epi16".}

func mm_srli_epi32*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_srli_epi32".}

func mm_srli_epi64*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_srli_epi64".}

func mm_srli_si128*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_srli_si128".}

func mm_store_pd*(p: pointer, a: M128d) {.importc: "_mm_store_pd".}

func mm_store_pd1*(p: pointer, a: M128d) {.importc: "_mm_store_pd1".}

func mm_store_sd*(p: pointer, a: M128d) {.importc: "_mm_store_sd".}

func mm_store_si128*(p: pointer, a: M128i) {.importc: "_mm_store_si128".}

func mm_store1_pd*(p: pointer, a: M128d) {.importc: "_mm_store1_pd".}

func mm_storeh_pd*(p: pointer, a: M128d) {.importc: "_mm_storeh_pd".}

func mm_storel_epi64*(p: pointer, a: M128i) {.importc: "_mm_storel_epi64".}

func mm_storel_pd*(p: pointer, a: M128d) {.importc: "_mm_storel_pd".}

func mm_storer_pd*(p: pointer, a: M128d) {.importc: "_mm_storer_pd".}

func mm_storeu_pd*(p: pointer, a: M128d) {.importc: "_mm_storeu_pd".}

func mm_storeu_si128*(p: pointer, a: M128i) {.importc: "_mm_storeu_si128".}

func mm_storeu_si32*(p: pointer, a: M128i) {.importc: "_mm_storeu_si32".}

func mm_stream_pd*(p: pointer, a: M128d) {.importc: "_mm_stream_pd".}

func mm_stream_si128*(p: pointer, a: M128i) {.importc: "_mm_stream_si128".}

func mm_stream_si32*(p: pointer, a: int32 | uint32) {.importc: "_mm_stream_si32".}

func mm_stream_si64*(p: pointer, a: int64 | uint64) {.importc: "_mm_stream_si64".}

func mm_sub_epi16*(a, b: M128i): M128i {.importc: "_mm_sub_epi16".}

func mm_sub_epi32*(a, b: M128i): M128i {.importc: "_mm_sub_epi32".}

func mm_sub_epi64*(a, b: M128i): M128i {.importc: "_mm_sub_epi64".}

func mm_sub_epi8*(a, b: M128i): M128i {.importc: "_mm_sub_epi8".}

func mm_sub_pd*(a, b: M128d): M128d {.importc: "_mm_sub_pd".}

func mm_sub_sd*(a, b: M128d): M128d {.importc: "_mm_sub_sd".}

func mm_subs_epi16*(a, b: M128i): M128i {.importc: "_mm_subs_epi16".}

func mm_subs_epi8*(a, b: M128i): M128i {.importc: "_mm_subs_epi8".}

func mm_subs_epu16*(a, b: M128i): M128i {.importc: "_mm_subs_epu16".}

func mm_subs_epu8*(a, b: M128i): M128i {.importc: "_mm_subs_epu8".}

func mm_ucomieq_sd*(a, b: M128d): int32 {.importc: "_mm_ucomieq_sd".}

func mm_ucomige_sd*(a, b: M128d): int32 {.importc: "_mm_ucomige_sd".}

func mm_ucomigt_sd*(a, b: M128d): int32 {.importc: "_mm_ucomigt_sd".}

func mm_ucomile_sd*(a, b: M128d): int32 {.importc: "_mm_ucomile_sd".}

func mm_ucomilt_sd*(a, b: M128d): int32 {.importc: "_mm_ucomilt_sd".}

func mm_ucomineq_sd*(a, b: M128d): int32 {.importc: "_mm_ucomineq_sd".}

func mm_undefined_pd*(): M128d {.importc: "_mm_undefined_pd".}

func mm_undefined_si128*(): M128i {.importc: "_mm_undefined_si128".}

func mm_unpackhi_epi16*(a, b: M128i): M128i {.importc: "_mm_unpackhi_epi16".}

func mm_unpackhi_epi32*(a, b: M128i): M128i {.importc: "_mm_unpackhi_epi32".}

func mm_unpackhi_epi64*(a, b: M128i): M128i {.importc: "_mm_unpackhi_epi64".}

func mm_unpackhi_epi8*(a, b: M128i): M128i {.importc: "_mm_unpackhi_epi8".}

func mm_unpackhi_pd*(a, b: M128d): M128d {.importc: "_mm_unpackhi_pd".}

func mm_unpacklo_epi16*(a, b: M128i): M128i {.importc: "_mm_unpacklo_epi16".}

func mm_unpacklo_epi32*(a, b: M128i): M128i {.importc: "_mm_unpacklo_epi32".}

func mm_unpacklo_epi64*(a, b: M128i): M128i {.importc: "_mm_unpacklo_epi64".}

func mm_unpacklo_epi8*(a, b: M128i): M128i {.importc: "_mm_unpacklo_epi8".}

func mm_unpacklo_pd*(a, b: M128d): M128d {.importc: "_mm_unpacklo_pd".}

func mm_xor_pd*(a, b: M128d): M128d {.importc: "_mm_xor_pd".}

func mm_xor_si128*(a, b: M128i): M128i {.importc: "_mm_xor_si128".}

func mm_storel_pi*(p: pointer, a: M128) {.importc: "_mm_storel_pi".}

{.pop.}
