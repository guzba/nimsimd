import sse42

export sse42

type
  M256* {.importc: "__m256", header: "immintrin.h".} = object
  M256i* {.importc: "__m256i", header: "immintrin.h".} = object
  M256d* {.importc: "__m256d", header: "immintrin.h".} = object

{.push header: "immintrin.h".}

func mm256_add_pd*(a, b: M256d): M256d {.importc: "_mm256_add_pd".}

func mm256_add_ps*(a, b: M256): M256 {.importc: "_mm256_add_ps".}

func mm256_addsub_pd*(a, b: M256d): M256d {.importc: "_mm256_addsub_pd".}

func mm256_addsub_ps*(a, b: M256): M256 {.importc: "_mm256_addsub_ps".}

func mm256_and_pd*(a, b: M256d): M256d {.importc: "_mm256_and_pd".}

func mm256_and_ps*(a, b: M256): M256 {.importc: "_mm256_and_ps".}

func mm256_andnot_pd*(a, b: M256d): M256d {.importc: "_mm256_andnot_pd".}

func mm256_andnot_ps*(a, b: M256): M256 {.importc: "_mm256_andnot_ps".}

func mm256_blend_pd*(a, b: M256d, imm8: int32 | uint32): M256d {.importc: "_mm256_blend_pd".}

func mm256_blend_ps*(a, b: M256, imm8: int32 | uint32): M256 {.importc: "_mm256_blend_ps".}

func mm256_blendv_pd*(a, b, mask: M256d): M256d {.importc: "_mm256_blendv_pd".}

func mm256_blendv_ps*(a, b, mask: M256): M256 {.importc: "_mm256_blendv_ps".}

func mm256_broadcast_pd*(p: pointer): M256d {.importc: "_mm256_broadcast_pd".}

func mm256_broadcast_ps*(p: pointer): M256 {.importc: "_mm256_broadcast_ps".}

func mm256_broadcast_sd*(p: pointer): M256d {.importc: "_mm256_broadcast_sd".}

func mm_broadcast_ss*(p: pointer): M128 {.importc: "_mm_broadcast_ss".}

func mm256_broadcast_ss*(p: pointer): M256 {.importc: "_mm256_broadcast_ss".}

func mm256_castpd_ps*(a: M256d): M256 {.importc: "_mm256_castpd_ps".}

func mm256_castpd_si256*(a: M256d): M256i {.importc: "_mm256_castpd_si256".}

func mm256_castpd128_pd256*(a: M128d): M256d {.importc: "_mm256_castpd128_pd256".}

func mm256_castpd256_pd128*(a: M256d): M128d {.importc: "_mm256_castpd256_pd128".}

func mm256_castps_pd*(a: M256): M256d {.importc: "_mm256_castps_pd".}

func mm256_castps_si256*(a: M256): M256i {.importc: "_mm256_castps_si256".}

func mm256_castps128_ps256*(a: M128): M256 {.importc: "_mm256_castps128_ps256".}

func mm256_castps256_ps128*(a: M256): M128 {.importc: "_mm256_castps256_ps128".}

func mm256_castsi128_si256*(a: M128i): M256i {.importc: "_mm256_castsi128_si256".}

func mm256_castsi256_pd*(a: M256i): M256d {.importc: "_mm256_castsi256_pd".}

func mm256_castsi256_ps*(a: M256i): M256 {.importc: "_mm256_castsi256_ps".}

func mm256_castsi256_si128*(a: M256i): M128i {.importc: "_mm256_castsi256_si128".}

func mm256_ceil_pd*(a: M256d): M256d {.importc: "_mm256_ceil_pd".}

func mm256_ceil_ps*(a: M256): M256 {.importc: "_mm256_ceil_ps".}

func mm_cmp_pd*(a, b: M128d, imm8: int32 | uint32): M128d {.importc: "_mm_cmp_pd".}

func mm256_cmp_pd*(a, b: M256d, imm8: int32 | uint32): M256d {.importc: "_mm256_cmp_pd".}

func mm_cmp_ps*(a, b: M128, imm8: int32 | uint32): M128 {.importc: "_mm_cmp_ps".}

func mm256_cmp_ps*(a, b: M256, imm8: int32 | uint32): M256 {.importc: "_mm256_cmp_ps".}

func mm_cmp_sd*(a, b: M128d, imm8: int32 | uint32): M128d {.importc: "_mm_cmp_sd".}

func mm_cmp_ss*(a, b: M128, imm8: int32 | uint32): M128 {.importc: "_mm_cmp_ss".}

func mm256_cvtepi32_pd*(a: M128i): M256d {.importc: "_mm256_cvtepi32_pd".}

func mm256_cvtepi32_ps*(a: M256i): M256 {.importc: "_mm256_cvtepi32_ps".}

func mm256_cvtpd_epi32*(a: M256d): M128i {.importc: "_mm256_cvtpd_epi32".}

func mm256_cvtpd_ps*(a: M256d): M128 {.importc: "_mm256_cvtpd_ps".}

func mm256_cvtps_epi32*(a: M256): M256i {.importc: "_mm256_cvtps_epi32".}

func mm256_cvtps_pd*(a: M128): M256d {.importc: "_mm256_cvtps_pd".}

func mm256_cvtsd_f64*(a: M256d): float64 {.importc: "_mm256_cvtsd_f64".}

func mm256_cvtsi256_si32*(a: M256i): int32 {.importc: "_mm256_cvtsi256_si32".}

func mm256_cvtss_f32*(a: M256): float32 {.importc: "_mm256_cvtss_f32".}

func mm256_cvttpd_epi32*(a: M256d): M128i {.importc: "_mm256_cvttpd_epi32".}

func mm256_cvttps_epi32*(a: M256): M256i {.importc: "_mm256_cvttps_epi32".}

func mm256_div_pd*(a, b: M256d): M256d {.importc: "_mm256_div_pd".}

func mm256_div_ps*(a, b: M256): M256 {.importc: "_mm256_div_ps".}

func mm256_dp_ps*(a, b: M256, imm8: int32 | uint32): M256 {.importc: "_mm256_dp_ps".}

func mm256_extract_epi32*(a: M256i, index: int32 | uint32): int32 {.importc: "_mm256_extract_epi32".}

func mm256_extract_epi64*(a: M256i, index: int32 | uint32): int64 {.importc: "_mm256_extract_epi64".}

func mm256_extractf128_pd*(a: M256d, imm8: int32 | uint32): M128d {.importc: "_mm256_extractf128_pd".}

func mm256_extractf128_ps*(a: M256, imm8: int32 | uint32): M128 {.importc: "_mm256_extractf128_ps".}

func mm256_extractf128_si256*(a: M256i, imm8: int32 | uint32): M128i {.importc: "_mm256_extractf128_si256".}

func mm256_floor_pd*(a: M256d): M256d {.importc: "_mm256_floor_pd".}

func mm256_floor_ps*(a: M256): M256 {.importc: "_mm256_floor_ps".}

func mm256_hadd_pd*(a, b: M256d): M256d {.importc: "_mm256_hadd_pd".}

func mm256_hadd_ps*(a, b: M256): M256 {.importc: "_mm256_hadd_ps".}

func mm256_hsub_pd*(a, b: M256d): M256d {.importc: "_mm256_hsub_pd".}

func mm256_hsub_ps*(a, b: M256): M256 {.importc: "_mm256_hsub_ps".}

func mm256_insert_epi16*(a: M256i, i: int16 | uint16, index: int32 | uint32): M256i {.importc: "_mm256_insert_epi16".}

func mm256_insert_epi32*(a: M256i, i: int32 | uint32, index: int32 | uint32): M256i {.importc: "_mm256_insert_epi32".}

func mm256_insert_epi64*(a: M256i, i: int64 | uint64, index: int32 | uint32): M256i {.importc: "_mm256_insert_epi64".}

func mm256_insert_epi8*(a: M256i, i: int8 | uint8, index: int32 | uint32): M256i {.importc: "_mm256_insert_epi8".}

func mm256_insertf128_pd*(a: M256d, b: M128d, imm8: int32 | uint32): M256d {.importc: "_mm256_insertf128_pd".}

func mm256_insertf128_ps*(a: M256, b: M128, imm8: int32 | uint32): M256 {.importc: "_mm256_insertf128_ps".}

func mm256_insertf128_si256*(a: M256i, b: M128i, imm8: int32 | uint32): M256i {.importc: "_mm256_insertf128_si256".}

func mm256_lddqu_si256*(p: pointer): M256i {.importc: "_mm256_lddqu_si256".}

func mm256_load_pd*(p: pointer): M256d {.importc: "_mm256_load_pd".}

func mm256_load_ps*(p: pointer): M256 {.importc: "_mm256_load_ps".}

func mm256_load_si256*(p: pointer): M256i {.importc: "_mm256_load_si256".}

func mm256_loadu_pd*(p: pointer): M256d {.importc: "_mm256_loadu_pd".}

func mm256_loadu_ps*(p: pointer): M256 {.importc: "_mm256_loadu_ps".}

func mm256_loadu_si256*(p: pointer): M256i {.importc: "_mm256_loadu_si256".}

func mm256_loadu2_m128*(hi, lo: pointer): M256 {.importc: "_mm256_loadu2_m128".}

func mm256_loadu2_m128d*(hi, lo: pointer): M256d {.importc: "_mm256_loadu2_m128d".}

func mm256_loadu2_m128i*(hi, lo: pointer): M256i {.importc: "_mm256_loadu2_m128i".}

func mm_maskload_pd*(p: pointer, mask: M128i): M256d {.importc: "_mm_maskload_pd".}

func mm256_maskload_pd*(p: pointer, mask: M256i): M256d {.importc: "_mm256_maskload_pd".}

func mm_maskload_ps*(p: pointer, mask: M128i): M128 {.importc: "_mm_maskload_ps".}

func mm256_maskload_ps*(p: pointer, mask: M256i): M256 {.importc: "_mm256_maskload_ps".}

func mm_maskstore_pd*(p: pointer, mask: M128i, a: M128d) {.importc: "_mm_maskstore_pd".}

func mm256_maskstore_pd*(p: pointer, mask: M256i, a: M256d) {.importc: "_mm256_maskstore_pd".}

func mm_maskstore_ps*(p: pointer, mask: M128i, a: M128) {.importc: "_mm_maskstore_ps".}

func mm256_maskstore_ps*(p: pointer, mask: M256i, a: M256) {.importc: "_mm256_maskstore_ps".}

func mm256_max_pd*(a, b: M256d): M256d {.importc: "_mm256_max_pd".}

func mm256_max_ps*(a, b: M256): M256 {.importc: "_mm256_max_ps".}

func mm256_min_pd*(a, b: M256d): M256d {.importc: "_mm256_min_pd".}

func mm256_min_ps*(a, b: M256): M256 {.importc: "_mm256_min_ps".}

func mm256_movedup_pd*(a: M256d): M256d {.importc: "_mm256_movedup_pd".}

func mm256_movehdup_ps*(a: M256): M256 {.importc: "_mm256_movehdup_ps".}

func mm256_moveldup_ps*(a: M256): M256 {.importc: "_mm256_moveldup_ps".}

func mm256_movemask_pd*(a: M256d): int32 {.importc: "_mm256_movemask_pd".}

func mm256_movemask_ps*(a: M256): int32 {.importc: "_mm256_movemask_ps".}

func mm256_mul_pd*(a, b: M256d): M256d {.importc: "_mm256_mul_pd".}

func mm256_mul_ps*(a, b: M256): M256 {.importc: "_mm256_mul_ps".}

func mm256_or_pd*(a, b: M256d): M256d {.importc: "_mm256_or_pd".}

func mm256_or_ps*(a, b: M256): M256 {.importc: "_mm256_or_ps".}

func mm_permute_pd*(a: M128d, imm8: int32 | uint32): M128d {.importc: "_mm_permute_pd".}

func mm256_permute_pd*(a: M256d, imm8: int32 | uint32): M256d {.importc: "_mm256_permute_pd".}

func mm_permute_ps*(a: M128, imm8: int32 | uint32): M128 {.importc: "_mm_permute_ps".}

func mm256_permute_ps*(a: M256, imm8: int32 | uint32): M256 {.importc: "_mm256_permute_ps".}

func mm256_permute2f128_pd*(a, b: M256d, imm8: int32 | uint32): M256d {.importc: "_mm256_permute2f128_pd".}

func mm256_permute2f128_ps*(a, b: M256, imm8: int32 | uint32): M256 {.importc: "_mm256_permute2f128_ps".}

func mm256_permute2f128_si256*(a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_permute2f128_si256".}

func mm_permutevar_pd*(a: M128d, b: M128i): M128d {.importc: "_mm_permutevar_pd".}

func mm256_permutevar_pd*(a: M256d, b: M256i): M256d {.importc: "_mm256_permutevar_pd".}

func mm_permutevar_ps*(a: M128, b: M128i): M128 {.importc: "_mm_permutevar_ps".}

func mm256_permutevar_ps*(a: M256, b: M256i): M256 {.importc: "_mm256_permutevar_ps".}

func mm256_rcp_ps*(a: M256): M256 {.importc: "_mm256_rcp_ps".}

func mm256_round_pd*(a: M256d, rounding: int32 | uint32): M256d {.importc: "_mm256_round_pd".}

func mm256_round_ps*(a: M256, rounding: int32 | uint32): M256 {.importc: "_mm256_round_ps".}

func mm256_rsqrt_ps*(a: M256): M256 {.importc: "_mm256_rsqrt_ps".}

func mm256_set_epi16*(e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0: int16 | uint16): M256i {.importc: "_mm256_set_epi16".}

func mm256_set_epi32*(e7, e6, e5, e4, e3, e2, e1, e0: int32 | uint32): M256i {.importc: "_mm256_set_epi32".}

func mm256_set_epi64x*(e3, e2, e1, e0: int64 | uint64): M256i {.importc: "_mm256_set_epi64x".}

func mm256_set_epi8*(e31, e30, e29, e28, e27, e26, e25, e24, e23, e22, e21, e20, e19, e18, e17, e16, e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0: int8 | uint8): M256i {.importc: "_mm256_set_epi8".}

func mm256_set_m128*(hi, lo: M128): M256 {.importc: "_mm256_set_m128".}

func mm256_set_m128d*(hi, lo: M128d): M256d {.importc: "_mm256_set_m128d".}

func mm256_set_m128i*(hi, lo: M128i): M256i {.importc: "_mm256_set_m128i".}

func mm256_set_pd*(e3, e2, e1, e0: float64): M256d {.importc: "_mm256_set_pd".}

func mm256_set_ps*(e7, e6, e5, e4, e3, e2, e1, e0: float32): M256 {.importc: "_mm256_set_ps".}

func mm256_set1_epi16*(a: int16 | uint16): M256i {.importc: "_mm256_set1_epi16".}

func mm256_set1_epi32*(a: int32 | uint32): M256i {.importc: "_mm256_set1_epi32".}

func mm256_set1_epi64x*(a: int64 | uint64): M256i {.importc: "_mm256_set1_epi64x".}

func mm256_set1_epi8*(a: int8 | uint8): M256i {.importc: "_mm256_set1_epi8".}

func mm256_set1_pd*(a: float64): M256d {.importc: "_mm256_set1_pd".}

func mm256_set1_ps*(a: float32): M256 {.importc: "_mm256_set1_ps".}

func mm256_setr_epi16*(e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0: int16 | uint16): M256i {.importc: "_mm256_setr_epi16".}

func mm256_setr_epi32*(e7, e6, e5, e4, e3, e2, e1, e0: int32 | uint32): M256i {.importc: "_mm256_setr_epi32".}

func mm256_setr_epi64x*(e3, e2, e1, e0: int64 | uint64): M256i {.importc: "_mm256_setr_epi64x".}

func mm256_setr_epi8*(e31, e30, e29, e28, e27, e26, e25, e24, e23, e22, e21, e20, e19, e18, e17, e16, e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0: int8 | uint8): M256i {.importc: "_mm256_setr_epi8".}

func mm256_setr_m128*(lo, hi: M128): M256 {.importc: "_mm256_setr_m128".}

func mm256_setr_m128d*(lo, hi: M128d): M256d {.importc: "_mm256_setr_m128d".}

func mm256_setr_m128i*(lo, hi: M128i): M256i {.importc: "_mm256_setr_m128i".}

func mm256_setr_pd*(e3, e2, e1, e0: float64): M256d {.importc: "_mm256_setr_pd".}

func mm256_setr_ps*(e7, e6, e5, e4, e3, e2, e1, e0: float32): M256 {.importc: "_mm256_setr_ps".}

func mm256_setzero_pd*(): M256d {.importc: "_mm256_setzero_pd".}

func mm256_setzero_ps*(): M256 {.importc: "_mm256_setzero_ps".}

func mm256_setzero_si256*(): M256i {.importc: "_mm256_setzero_si256".}

func mm256_shuffle_pd*(a, b: M256d, imm8: int32 | uint32): M256d {.importc: "_mm256_shuffle_pd".}

func mm256_shuffle_ps*(a, b: M256, imm8: int32 | uint32): M256 {.importc: "_mm256_shuffle_ps".}

func mm256_sqrt_pd*(a: M256d): M256d {.importc: "_mm256_sqrt_pd".}

func mm256_sqrt_ps*(a: M256): M256 {.importc: "_mm256_sqrt_ps".}

func mm256_store_pd*(p: pointer, a: M256d) {.importc: "_mm256_store_pd".}

func mm256_store_ps*(p: pointer, a: M256) {.importc: "_mm256_store_ps".}

func mm256_store_si256*(p: pointer, a: M256i) {.importc: "_mm256_store_si256".}

func mm256_storeu_pd*(p: pointer, a: M256d) {.importc: "_mm256_storeu_pd".}

func mm256_storeu_ps*(p: pointer, a: M256) {.importc: "_mm256_storeu_ps".}

func mm256_storeu_si256*(p: pointer, a: M256i) {.importc: "_mm256_storeu_si256".}

func mm256_storeu2_m128*(hi, lo: pointer) {.importc: "_mm256_storeu2_m128".}

func mm256_storeu2_m128d*(hi, lo: pointer) {.importc: "_mm256_storeu2_m128d".}

func mm256_storeu2_m128i*(hi, lo: pointer) {.importc: "_mm256_storeu2_m128i".}

func mm256_stream_pd*(p: pointer, a: M256d) {.importc: "_mm256_stream_pd".}

func mm256_stream_ps*(p: pointer, a: M256) {.importc: "_mm256_stream_ps".}

func mm256_stream_si256*(p: pointer, a: M256i) {.importc: "_mm256_stream_si256".}

func mm256_sub_pd*(a, b: M256d): M256d {.importc: "_mm256_sub_pd".}

func mm256_sub_ps*(a, b: M256): M256 {.importc: "_mm256_sub_ps".}

func mm_testc_pd*(a, b: M128d): int32 {.importc: "_mm_testc_pd".}

func mm256_testc_pd*(a, b: M256d): int32 {.importc: "_mm256_testc_pd".}

func mm_testc_ps*(a, b: M128): int32 {.importc: "_mm_testc_ps".}

func mm256_testc_ps*(a, b: M256): int32 {.importc: "_mm256_testc_ps".}

func mm256_testc_si256*(a, b: M256i): int32 {.importc: "_mm256_testc_si256".}

func mm_testnzc_pd*(a, b: M128d): int32 {.importc: "_mm_testnzc_pd".}

func mm256_testnzc_pd*(a, b: M256d): int32 {.importc: "_mm256_testnzc_pd".}

func mm_testnzc_ps*(a, b: M128): int32 {.importc: "_mm_testnzc_ps".}

func mm256_testnzc_ps*(a, b: M256): int32 {.importc: "_mm256_testnzc_ps".}

func mm256_testnzc_si256*(a, b: M256i): int32 {.importc: "_mm256_testnzc_si256".}

func mm_testz_pd*(a, b: M128d): int32 {.importc: "_mm_testz_pd".}

func mm256_testz_pd*(a, b: M256d): int32 {.importc: "_mm256_testz_pd".}

func mm_testz_ps*(a, b: M128): int32 {.importc: "_mm_testz_ps".}

func mm256_testz_ps*(a, b: M256): int32 {.importc: "_mm256_testz_ps".}

func mm256_testz_si256*(a, b: M256i): int32 {.importc: "_mm256_testz_si256".}

func mm256_undefined_pd*(): M256d {.importc: "_mm256_undefined_pd".}

func mm256_undefined_ps*(): M256 {.importc: "_mm256_undefined_ps".}

func mm256_undefined_si256*(): M256i {.importc: "_mm256_undefined_si256".}

func mm256_unpackhi_pd*(a, b: M256d): M256d {.importc: "_mm256_unpackhi_pd".}

func mm256_unpackhi_ps*(a, b: M256): M256 {.importc: "_mm256_unpackhi_ps".}

func mm256_unpacklo_pd*(a, b: M256d): M256d {.importc: "_mm256_unpacklo_pd".}

func mm256_unpacklo_ps*(a, b: M256): M256 {.importc: "_mm256_unpacklo_ps".}

func mm256_xor_pd*(a, b: M256d): M256d {.importc: "_mm256_xor_pd".}

func mm256_xor_ps*(a, b: M256): M256 {.importc: "_mm256_xor_ps".}

func mm256_zeroall*() {.importc: "_mm256_zeroall".}

func mm256_zeroupper*() {.importc: "_mm256_zeroupper".}

func mm256_zextpd128_pd256*(a: M128d): M256d {.importc: "_mm256_zextpd128_pd256".}

func mm256_zextps128_ps256*(a: M128): M256 {.importc: "_mm256_zextps128_ps256".}

func mm256_zextsi128_si256*(a: M128i): M256i {.importc: "_mm256_zextsi128_si256".}

{.pop.}
