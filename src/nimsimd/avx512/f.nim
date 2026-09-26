import ../avx2

export avx2

type
  M512* {.importc: "__m512", header: "immintrin.h", bycopy.} = object
  M512i* {.importc: "__m512i", header: "immintrin.h", bycopy.} = object
  M512d* {.importc: "__m512d", header: "immintrin.h", bycopy.} = object
  Mmask8* = distinct uint8
  Mmask16* = distinct uint16
  Mmask32* = distinct uint32
  Mmask64* = distinct uint64

const
  MM_CMPINT_EQ*: int32 = 0    ## Equal (a == b)
  MM_CMPINT_LT*: int32 = 1    ## Less than (a < b)
  MM_CMPINT_LE*: int32 = 2    ## Less than or equal (a <= b)
  MM_CMPINT_FALSE*: int32 = 3 ## Always false
  MM_CMPINT_NE*: int32 = 4    ## Not equal (a != b)
  MM_CMPINT_NLT*: int32 = 5   ## Not less than (a >= b)
  MM_CMPINT_NLE*: int32 = 6   ## Not less than or equal (a > b)
  MM_CMPINT_TRUE*: int32 = 7  ## Always true

{.push header: "immintrin.h".}

# Arithmetic - float32

func mm512_add_ps*(a, b: M512): M512 {.importc: "_mm512_add_ps".}

func mm512_sub_ps*(a, b: M512): M512 {.importc: "_mm512_sub_ps".}

func mm512_mul_ps*(a, b: M512): M512 {.importc: "_mm512_mul_ps".}

func mm512_div_ps*(a, b: M512): M512 {.importc: "_mm512_div_ps".}

# Arithmetic - float64

func mm512_add_pd*(a, b: M512d): M512d {.importc: "_mm512_add_pd".}

func mm512_sub_pd*(a, b: M512d): M512d {.importc: "_mm512_sub_pd".}

func mm512_mul_pd*(a, b: M512d): M512d {.importc: "_mm512_mul_pd".}

func mm512_div_pd*(a, b: M512d): M512d {.importc: "_mm512_div_pd".}

# Arithmetic - int32

func mm512_add_epi32*(a, b: M512i): M512i {.importc: "_mm512_add_epi32".}

func mm512_sub_epi32*(a, b: M512i): M512i {.importc: "_mm512_sub_epi32".}

func mm512_mullo_epi32*(a, b: M512i): M512i {.importc: "_mm512_mullo_epi32".}

# Arithmetic - int64

func mm512_add_epi64*(a, b: M512i): M512i {.importc: "_mm512_add_epi64".}

func mm512_sub_epi64*(a, b: M512i): M512i {.importc: "_mm512_sub_epi64".}

# FMA - float32

func mm512_fmadd_ps*(a, b, c: M512): M512 {.importc: "_mm512_fmadd_ps".}

func mm512_fmsub_ps*(a, b, c: M512): M512 {.importc: "_mm512_fmsub_ps".}

func mm512_fnmadd_ps*(a, b, c: M512): M512 {.importc: "_mm512_fnmadd_ps".}

func mm512_fnmsub_ps*(a, b, c: M512): M512 {.importc: "_mm512_fnmsub_ps".}

func mm512_fmaddsub_ps*(a, b, c: M512): M512 {.importc: "_mm512_fmaddsub_ps".}

func mm512_fmsubadd_ps*(a, b, c: M512): M512 {.importc: "_mm512_fmsubadd_ps".}

# FMA - float64

func mm512_fmadd_pd*(a, b, c: M512d): M512d {.importc: "_mm512_fmadd_pd".}

func mm512_fmsub_pd*(a, b, c: M512d): M512d {.importc: "_mm512_fmsub_pd".}

func mm512_fnmadd_pd*(a, b, c: M512d): M512d {.importc: "_mm512_fnmadd_pd".}

func mm512_fnmsub_pd*(a, b, c: M512d): M512d {.importc: "_mm512_fnmsub_pd".}

func mm512_fmaddsub_pd*(a, b, c: M512d): M512d {.importc: "_mm512_fmaddsub_pd".}

func mm512_fmsubadd_pd*(a, b, c: M512d): M512d {.importc: "_mm512_fmsubadd_pd".}

# Load - aligned

func mm512_load_ps*(p: pointer): M512 {.importc: "_mm512_load_ps".}

func mm512_load_pd*(p: pointer): M512d {.importc: "_mm512_load_pd".}

func mm512_load_si512*(p: pointer): M512i {.importc: "_mm512_load_si512".}

func mm512_load_epi32*(p: pointer): M512i {.importc: "_mm512_load_epi32".}

func mm512_load_epi64*(p: pointer): M512i {.importc: "_mm512_load_epi64".}

# Load - unaligned

func mm512_loadu_ps(p: ptr float32): M512 {.importc: "_mm512_loadu_ps".}

template mm512_loadu_ps*(p: pointer): M512 =
  mm512_loadu_ps(cast[ptr float32](p))

func mm512_loadu_pd(p: ptr float64): M512d {.importc: "_mm512_loadu_pd".}

template mm512_loadu_pd*(p: pointer): M512d =
  mm512_loadu_pd(cast[ptr float64](p))

func mm512_loadu_si512(p: ptr M512i): M512i {.importc: "_mm512_loadu_si512".}

template mm512_loadu_si512*(p: pointer): M512i =
  mm512_loadu_si512(cast[ptr M512i](p))

func mm512_loadu_epi32*(p: pointer): M512i {.importc: "_mm512_loadu_epi32".}

func mm512_loadu_epi64*(p: pointer): M512i {.importc: "_mm512_loadu_epi64".}

# Store - aligned

func mm512_store_ps*(p: pointer, a: M512) {.importc: "_mm512_store_ps".}

func mm512_store_pd*(p: pointer, a: M512d) {.importc: "_mm512_store_pd".}

func mm512_store_si512*(p: pointer, a: M512i) {.importc: "_mm512_store_si512".}

func mm512_store_epi32*(p: pointer, a: M512i) {.importc: "_mm512_store_epi32".}

func mm512_store_epi64*(p: pointer, a: M512i) {.importc: "_mm512_store_epi64".}

# Store - unaligned

func mm512_storeu_ps(p: ptr float32, a: M512) {.importc: "_mm512_storeu_ps".}

template mm512_storeu_ps*(p: pointer, a: M512) =
  mm512_storeu_ps(cast[ptr float32](p), a)

func mm512_storeu_pd(p: ptr float64, a: M512d) {.importc: "_mm512_storeu_pd".}

template mm512_storeu_pd*(p: pointer, a: M512d) =
  mm512_storeu_pd(cast[ptr float64](p), a)

func mm512_storeu_si512(p: ptr M512i, a: M512i) {.importc: "_mm512_storeu_si512".}

template mm512_storeu_si512*(p: pointer, a: M512i) =
  mm512_storeu_si512(cast[ptr M512i](p), a)

func mm512_storeu_epi32*(p: pointer, a: M512i) {.importc: "_mm512_storeu_epi32".}

func mm512_storeu_epi64*(p: pointer, a: M512i) {.importc: "_mm512_storeu_epi64".}

# Stream store

func mm512_stream_ps*(p: pointer, a: M512) {.importc: "_mm512_stream_ps".}

func mm512_stream_pd*(p: pointer, a: M512d) {.importc: "_mm512_stream_pd".}

func mm512_stream_si512*(p: pointer, a: M512i) {.importc: "_mm512_stream_si512".}

# Set - broadcast single value

func mm512_set1_ps*(a: float32): M512 {.importc: "_mm512_set1_ps".}

func mm512_set1_pd*(a: float64): M512d {.importc: "_mm512_set1_pd".}

func mm512_set1_epi32*(a: int32 | uint32): M512i {.importc: "_mm512_set1_epi32".}

func mm512_set1_epi64*(a: int64 | uint64): M512i {.importc: "_mm512_set1_epi64".}

# Set - individual elements

func mm512_set_ps*(e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0: float32): M512 {.importc: "_mm512_set_ps".}

func mm512_set_pd*(e7, e6, e5, e4, e3, e2, e1, e0: float64): M512d {.importc: "_mm512_set_pd".}

func mm512_set_epi32*(e15, e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0: int32 | uint32): M512i {.importc: "_mm512_set_epi32".}

func mm512_set_epi64*(e7, e6, e5, e4, e3, e2, e1, e0: int64 | uint64): M512i {.importc: "_mm512_set_epi64".}

# Set - reverse order

func mm512_setr_ps*(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15: float32): M512 {.importc: "_mm512_setr_ps".}

func mm512_setr_pd*(e0, e1, e2, e3, e4, e5, e6, e7: float64): M512d {.importc: "_mm512_setr_pd".}

func mm512_setr_epi32*(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15: int32 | uint32): M512i {.importc: "_mm512_setr_epi32".}

func mm512_setr_epi64*(e0, e1, e2, e3, e4, e5, e6, e7: int64 | uint64): M512i {.importc: "_mm512_setr_epi64".}

# Set - zero

func mm512_setzero_ps*(): M512 {.importc: "_mm512_setzero_ps".}

func mm512_setzero_pd*(): M512d {.importc: "_mm512_setzero_pd".}

func mm512_setzero_si512*(): M512i {.importc: "_mm512_setzero_si512".}

# Undefined

func mm512_undefined_ps*(): M512 {.importc: "_mm512_undefined_ps".}

func mm512_undefined_pd*(): M512d {.importc: "_mm512_undefined_pd".}

func mm512_undefined_epi32*(): M512i {.importc: "_mm512_undefined_epi32".}

# Broadcast

func mm512_broadcastss_ps*(a: M128): M512 {.importc: "_mm512_broadcastss_ps".}

func mm512_broadcastsd_pd*(a: M128d): M512d {.importc: "_mm512_broadcastsd_pd".}

func mm512_broadcastd_epi32*(a: M128i): M512i {.importc: "_mm512_broadcastd_epi32".}

func mm512_broadcastq_epi64*(a: M128i): M512i {.importc: "_mm512_broadcastq_epi64".}

func mm512_broadcast_i32x4*(a: M128i): M512i {.importc: "_mm512_broadcast_i32x4".}

func mm512_broadcast_i64x4*(a: M256i): M512i {.importc: "_mm512_broadcast_i64x4".}

func mm512_broadcast_f32x4*(a: M128): M512 {.importc: "_mm512_broadcast_f32x4".}

func mm512_broadcast_f64x4*(a: M256d): M512d {.importc: "_mm512_broadcast_f64x4".}

# Compare - returns mask

func mm512_cmp_ps_mask*(a, b: M512, imm8: int32 | uint32): Mmask16 {.importc: "_mm512_cmp_ps_mask".}

func mm512_cmp_pd_mask*(a, b: M512d, imm8: int32 | uint32): Mmask8 {.importc: "_mm512_cmp_pd_mask".}

func mm512_cmpeq_ps_mask*(a, b: M512): Mmask16 {.importc: "_mm512_cmpeq_ps_mask".}

func mm512_cmpeq_pd_mask*(a, b: M512d): Mmask8 {.importc: "_mm512_cmpeq_pd_mask".}

func mm512_cmplt_ps_mask*(a, b: M512): Mmask16 {.importc: "_mm512_cmplt_ps_mask".}

func mm512_cmplt_pd_mask*(a, b: M512d): Mmask8 {.importc: "_mm512_cmplt_pd_mask".}

func mm512_cmple_ps_mask*(a, b: M512): Mmask16 {.importc: "_mm512_cmple_ps_mask".}

func mm512_cmple_pd_mask*(a, b: M512d): Mmask8 {.importc: "_mm512_cmple_pd_mask".}

func mm512_cmpneq_ps_mask*(a, b: M512): Mmask16 {.importc: "_mm512_cmpneq_ps_mask".}

func mm512_cmpneq_pd_mask*(a, b: M512d): Mmask8 {.importc: "_mm512_cmpneq_pd_mask".}

func mm512_cmpnlt_ps_mask*(a, b: M512): Mmask16 {.importc: "_mm512_cmpnlt_ps_mask".}

func mm512_cmpnlt_pd_mask*(a, b: M512d): Mmask8 {.importc: "_mm512_cmpnlt_pd_mask".}

func mm512_cmpnle_ps_mask*(a, b: M512): Mmask16 {.importc: "_mm512_cmpnle_ps_mask".}

func mm512_cmpnle_pd_mask*(a, b: M512d): Mmask8 {.importc: "_mm512_cmpnle_pd_mask".}

func mm512_cmpord_ps_mask*(a, b: M512): Mmask16 {.importc: "_mm512_cmpord_ps_mask".}

func mm512_cmpord_pd_mask*(a, b: M512d): Mmask8 {.importc: "_mm512_cmpord_pd_mask".}

func mm512_cmpunord_ps_mask*(a, b: M512): Mmask16 {.importc: "_mm512_cmpunord_ps_mask".}

func mm512_cmpunord_pd_mask*(a, b: M512d): Mmask8 {.importc: "_mm512_cmpunord_pd_mask".}

# Compare - integer

func mm512_cmpeq_epi32_mask*(a, b: M512i): Mmask16 {.importc: "_mm512_cmpeq_epi32_mask".}

func mm512_cmpeq_epi64_mask*(a, b: M512i): Mmask8 {.importc: "_mm512_cmpeq_epi64_mask".}

func mm512_cmpgt_epi32_mask*(a, b: M512i): Mmask16 {.importc: "_mm512_cmpgt_epi32_mask".}

func mm512_cmpgt_epi64_mask*(a, b: M512i): Mmask8 {.importc: "_mm512_cmpgt_epi64_mask".}

func mm512_cmpge_epi32_mask*(a, b: M512i): Mmask16 {.importc: "_mm512_cmpge_epi32_mask".}

func mm512_cmpge_epi64_mask*(a, b: M512i): Mmask8 {.importc: "_mm512_cmpge_epi64_mask".}

func mm512_cmplt_epi32_mask*(a, b: M512i): Mmask16 {.importc: "_mm512_cmplt_epi32_mask".}

func mm512_cmplt_epi64_mask*(a, b: M512i): Mmask8 {.importc: "_mm512_cmplt_epi64_mask".}

func mm512_cmple_epi32_mask*(a, b: M512i): Mmask16 {.importc: "_mm512_cmple_epi32_mask".}

func mm512_cmple_epi64_mask*(a, b: M512i): Mmask8 {.importc: "_mm512_cmple_epi64_mask".}

func mm512_cmpneq_epi32_mask*(a, b: M512i): Mmask16 {.importc: "_mm512_cmpneq_epi32_mask".}

func mm512_cmpneq_epi64_mask*(a, b: M512i): Mmask8 {.importc: "_mm512_cmpneq_epi64_mask".}

# Logical - integer

func mm512_and_si512*(a, b: M512i): M512i {.importc: "_mm512_and_si512".}

func mm512_andnot_si512*(a, b: M512i): M512i {.importc: "_mm512_andnot_si512".}

func mm512_or_si512*(a, b: M512i): M512i {.importc: "_mm512_or_si512".}

func mm512_xor_si512*(a, b: M512i): M512i {.importc: "_mm512_xor_si512".}

func mm512_and_epi32*(a, b: M512i): M512i {.importc: "_mm512_and_epi32".}

func mm512_andnot_epi32*(a, b: M512i): M512i {.importc: "_mm512_andnot_epi32".}

func mm512_or_epi32*(a, b: M512i): M512i {.importc: "_mm512_or_epi32".}

func mm512_xor_epi32*(a, b: M512i): M512i {.importc: "_mm512_xor_epi32".}

func mm512_and_epi64*(a, b: M512i): M512i {.importc: "_mm512_and_epi64".}

func mm512_andnot_epi64*(a, b: M512i): M512i {.importc: "_mm512_andnot_epi64".}

func mm512_or_epi64*(a, b: M512i): M512i {.importc: "_mm512_or_epi64".}

func mm512_xor_epi64*(a, b: M512i): M512i {.importc: "_mm512_xor_epi64".}

# Min/Max - float

func mm512_min_ps*(a, b: M512): M512 {.importc: "_mm512_min_ps".}

func mm512_min_pd*(a, b: M512d): M512d {.importc: "_mm512_min_pd".}

func mm512_max_ps*(a, b: M512): M512 {.importc: "_mm512_max_ps".}

func mm512_max_pd*(a, b: M512d): M512d {.importc: "_mm512_max_pd".}

# Min/Max - integer

func mm512_min_epi32*(a, b: M512i): M512i {.importc: "_mm512_min_epi32".}

func mm512_min_epu32*(a, b: M512i): M512i {.importc: "_mm512_min_epu32".}

func mm512_min_epi64*(a, b: M512i): M512i {.importc: "_mm512_min_epi64".}

func mm512_min_epu64*(a, b: M512i): M512i {.importc: "_mm512_min_epu64".}

func mm512_max_epi32*(a, b: M512i): M512i {.importc: "_mm512_max_epi32".}

func mm512_max_epu32*(a, b: M512i): M512i {.importc: "_mm512_max_epu32".}

func mm512_max_epi64*(a, b: M512i): M512i {.importc: "_mm512_max_epi64".}

func mm512_max_epu64*(a, b: M512i): M512i {.importc: "_mm512_max_epu64".}

# Abs

func mm512_abs_ps*(a: M512): M512 {.importc: "_mm512_abs_ps".}

func mm512_abs_pd*(a: M512d): M512d {.importc: "_mm512_abs_pd".}

func mm512_abs_epi32*(a: M512i): M512i {.importc: "_mm512_abs_epi32".}

func mm512_abs_epi64*(a: M512i): M512i {.importc: "_mm512_abs_epi64".}

# Sqrt/Rsqrt/Rcp

func mm512_sqrt_ps*(a: M512): M512 {.importc: "_mm512_sqrt_ps".}

func mm512_sqrt_pd*(a: M512d): M512d {.importc: "_mm512_sqrt_pd".}

func mm512_rsqrt14_ps*(a: M512): M512 {.importc: "_mm512_rsqrt14_ps".}

func mm512_rsqrt14_pd*(a: M512d): M512d {.importc: "_mm512_rsqrt14_pd".}

func mm512_rcp14_ps*(a: M512): M512 {.importc: "_mm512_rcp14_ps".}

func mm512_rcp14_pd*(a: M512d): M512d {.importc: "_mm512_rcp14_pd".}

# Shuffle/Permute

func mm512_shuffle_ps*(a, b: M512, imm8: int32 | uint32): M512 {.importc: "_mm512_shuffle_ps".}

func mm512_shuffle_pd*(a, b: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_shuffle_pd".}

func mm512_shuffle_epi32*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_shuffle_epi32".}

func mm512_shuffle_i32x4*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_shuffle_i32x4".}

func mm512_shuffle_i64x2*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_shuffle_i64x2".}

func mm512_shuffle_f32x4*(a, b: M512, imm8: int32 | uint32): M512 {.importc: "_mm512_shuffle_f32x4".}

func mm512_shuffle_f64x2*(a, b: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_shuffle_f64x2".}

func mm512_permute_ps*(a: M512, imm8: int32 | uint32): M512 {.importc: "_mm512_permute_ps".}

func mm512_permute_pd*(a: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_permute_pd".}

func mm512_permutevar_ps*(a: M512, b: M512i): M512 {.importc: "_mm512_permutevar_ps".}

func mm512_permutevar_pd*(a: M512d, b: M512i): M512d {.importc: "_mm512_permutevar_pd".}

func mm512_permutex_epi64*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_permutex_epi64".}

func mm512_permutex_pd*(a: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_permutex_pd".}

func mm512_permutexvar_epi32*(idx, a: M512i): M512i {.importc: "_mm512_permutexvar_epi32".}

func mm512_permutexvar_epi64*(idx, a: M512i): M512i {.importc: "_mm512_permutexvar_epi64".}

func mm512_permutexvar_ps*(idx: M512i, a: M512): M512 {.importc: "_mm512_permutexvar_ps".}

func mm512_permutexvar_pd*(idx: M512i, a: M512d): M512d {.importc: "_mm512_permutexvar_pd".}

func mm512_permutex2var_epi32*(a: M512i, idx: M512i, b: M512i): M512i {.importc: "_mm512_permutex2var_epi32".}

func mm512_permutex2var_epi64*(a: M512i, idx: M512i, b: M512i): M512i {.importc: "_mm512_permutex2var_epi64".}

func mm512_permutex2var_ps*(a: M512, idx: M512i, b: M512): M512 {.importc: "_mm512_permutex2var_ps".}

func mm512_permutex2var_pd*(a: M512d, idx: M512i, b: M512d): M512d {.importc: "_mm512_permutex2var_pd".}

# Unpack

func mm512_unpackhi_ps*(a, b: M512): M512 {.importc: "_mm512_unpackhi_ps".}

func mm512_unpacklo_ps*(a, b: M512): M512 {.importc: "_mm512_unpacklo_ps".}

func mm512_unpackhi_pd*(a, b: M512d): M512d {.importc: "_mm512_unpackhi_pd".}

func mm512_unpacklo_pd*(a, b: M512d): M512d {.importc: "_mm512_unpacklo_pd".}

func mm512_unpackhi_epi32*(a, b: M512i): M512i {.importc: "_mm512_unpackhi_epi32".}

func mm512_unpacklo_epi32*(a, b: M512i): M512i {.importc: "_mm512_unpacklo_epi32".}

func mm512_unpackhi_epi64*(a, b: M512i): M512i {.importc: "_mm512_unpackhi_epi64".}

func mm512_unpacklo_epi64*(a, b: M512i): M512i {.importc: "_mm512_unpacklo_epi64".}

# Blend

func mm512_mask_blend_ps*(k: Mmask16, a, b: M512): M512 {.importc: "_mm512_mask_blend_ps".}

func mm512_mask_blend_pd*(k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_mask_blend_pd".}

func mm512_mask_blend_epi32*(k: Mmask16, a, b: M512i): M512i {.importc: "_mm512_mask_blend_epi32".}

func mm512_mask_blend_epi64*(k: Mmask8, a, b: M512i): M512i {.importc: "_mm512_mask_blend_epi64".}

# Conversion - float to int

func mm512_cvtps_epi32*(a: M512): M512i {.importc: "_mm512_cvtps_epi32".}

func mm512_cvtps_epu32*(a: M512): M512i {.importc: "_mm512_cvtps_epu32".}

func mm512_cvttpd_epi32*(a: M512d): M256i {.importc: "_mm512_cvttpd_epi32".}

func mm512_cvttpd_epu32*(a: M512d): M256i {.importc: "_mm512_cvttpd_epu32".}

func mm512_cvttps_epi32*(a: M512): M512i {.importc: "_mm512_cvttps_epi32".}

func mm512_cvttps_epu32*(a: M512): M512i {.importc: "_mm512_cvttps_epu32".}

func mm512_cvtpd_epi32*(a: M512d): M256i {.importc: "_mm512_cvtpd_epi32".}

func mm512_cvtpd_epu32*(a: M512d): M256i {.importc: "_mm512_cvtpd_epu32".}

# Conversion - int to float

func mm512_cvtepi32_ps*(a: M512i): M512 {.importc: "_mm512_cvtepi32_ps".}

func mm512_cvtepu32_ps*(a: M512i): M512 {.importc: "_mm512_cvtepu32_ps".}

func mm512_cvtepi32_pd*(a: M256i): M512d {.importc: "_mm512_cvtepi32_pd".}

func mm512_cvtepu32_pd*(a: M256i): M512d {.importc: "_mm512_cvtepu32_pd".}

# Conversion - float types

func mm512_cvtps_pd*(a: M256): M512d {.importc: "_mm512_cvtps_pd".}

func mm512_cvtpd_ps*(a: M512d): M256 {.importc: "_mm512_cvtpd_ps".}

# Conversion - integer extension

func mm512_cvtepi8_epi32*(a: M128i): M512i {.importc: "_mm512_cvtepi8_epi32".}

func mm512_cvtepi8_epi64*(a: M128i): M512i {.importc: "_mm512_cvtepi8_epi64".}

func mm512_cvtepi16_epi32*(a: M256i): M512i {.importc: "_mm512_cvtepi16_epi32".}

func mm512_cvtepi16_epi64*(a: M128i): M512i {.importc: "_mm512_cvtepi16_epi64".}

func mm512_cvtepi32_epi64*(a: M256i): M512i {.importc: "_mm512_cvtepi32_epi64".}

func mm512_cvtepu8_epi32*(a: M128i): M512i {.importc: "_mm512_cvtepu8_epi32".}

func mm512_cvtepu8_epi64*(a: M128i): M512i {.importc: "_mm512_cvtepu8_epi64".}

func mm512_cvtepu16_epi32*(a: M256i): M512i {.importc: "_mm512_cvtepu16_epi32".}

func mm512_cvtepu16_epi64*(a: M128i): M512i {.importc: "_mm512_cvtepu16_epi64".}

func mm512_cvtepu32_epi64*(a: M256i): M512i {.importc: "_mm512_cvtepu32_epi64".}

# Cast between types

func mm512_castps_pd*(a: M512): M512d {.importc: "_mm512_castps_pd".}

func mm512_castpd_ps*(a: M512d): M512 {.importc: "_mm512_castpd_ps".}

func mm512_castps_si512*(a: M512): M512i {.importc: "_mm512_castps_si512".}

func mm512_castsi512_ps*(a: M512i): M512 {.importc: "_mm512_castsi512_ps".}

func mm512_castpd_si512*(a: M512d): M512i {.importc: "_mm512_castpd_si512".}

func mm512_castsi512_pd*(a: M512i): M512d {.importc: "_mm512_castsi512_pd".}

# Cast between sizes

func mm512_castps512_ps128*(a: M512): M128 {.importc: "_mm512_castps512_ps128".}

func mm512_castps512_ps256*(a: M512): M256 {.importc: "_mm512_castps512_ps256".}

func mm512_castps128_ps512*(a: M128): M512 {.importc: "_mm512_castps128_ps512".}

func mm512_castps256_ps512*(a: M256): M512 {.importc: "_mm512_castps256_ps512".}

func mm512_castpd512_pd128*(a: M512d): M128d {.importc: "_mm512_castpd512_pd128".}

func mm512_castpd512_pd256*(a: M512d): M256d {.importc: "_mm512_castpd512_pd256".}

func mm512_castpd128_pd512*(a: M128d): M512d {.importc: "_mm512_castpd128_pd512".}

func mm512_castpd256_pd512*(a: M256d): M512d {.importc: "_mm512_castpd256_pd512".}

func mm512_castsi512_si128*(a: M512i): M128i {.importc: "_mm512_castsi512_si128".}

func mm512_castsi512_si256*(a: M512i): M256i {.importc: "_mm512_castsi512_si256".}

func mm512_castsi128_si512*(a: M128i): M512i {.importc: "_mm512_castsi128_si512".}

func mm512_castsi256_si512*(a: M256i): M512i {.importc: "_mm512_castsi256_si512".}

# Extract

func mm512_extractf32x4_ps*(a: M512, imm8: int32 | uint32): M128 {.importc: "_mm512_extractf32x4_ps".}

func mm512_extractf64x4_pd*(a: M512d, imm8: int32 | uint32): M256d {.importc: "_mm512_extractf64x4_pd".}

func mm512_extracti32x4_epi32*(a: M512i, imm8: int32 | uint32): M128i {.importc: "_mm512_extracti32x4_epi32".}

func mm512_extracti64x4_epi64*(a: M512i, imm8: int32 | uint32): M256i {.importc: "_mm512_extracti64x4_epi64".}

# Insert

func mm512_insertf32x4*(a: M512, b: M128, imm8: int32 | uint32): M512 {.importc: "_mm512_insertf32x4".}

func mm512_insertf64x4*(a: M512d, b: M256d, imm8: int32 | uint32): M512d {.importc: "_mm512_insertf64x4".}

func mm512_inserti32x4*(a: M512i, b: M128i, imm8: int32 | uint32): M512i {.importc: "_mm512_inserti32x4".}

func mm512_inserti64x4*(a: M512i, b: M256i, imm8: int32 | uint32): M512i {.importc: "_mm512_inserti64x4".}

# Reduce operations

func mm512_reduce_add_ps*(a: M512): float32 {.importc: "_mm512_reduce_add_ps".}

func mm512_reduce_add_pd*(a: M512d): float64 {.importc: "_mm512_reduce_add_pd".}

func mm512_reduce_add_epi32*(a: M512i): int32 {.importc: "_mm512_reduce_add_epi32".}

func mm512_reduce_add_epi64*(a: M512i): int64 {.importc: "_mm512_reduce_add_epi64".}

func mm512_reduce_mul_ps*(a: M512): float32 {.importc: "_mm512_reduce_mul_ps".}

func mm512_reduce_mul_pd*(a: M512d): float64 {.importc: "_mm512_reduce_mul_pd".}

func mm512_reduce_mul_epi32*(a: M512i): int32 {.importc: "_mm512_reduce_mul_epi32".}

func mm512_reduce_mul_epi64*(a: M512i): int64 {.importc: "_mm512_reduce_mul_epi64".}

func mm512_reduce_min_ps*(a: M512): float32 {.importc: "_mm512_reduce_min_ps".}

func mm512_reduce_min_pd*(a: M512d): float64 {.importc: "_mm512_reduce_min_pd".}

func mm512_reduce_min_epi32*(a: M512i): int32 {.importc: "_mm512_reduce_min_epi32".}

func mm512_reduce_min_epi64*(a: M512i): int64 {.importc: "_mm512_reduce_min_epi64".}

func mm512_reduce_min_epu32*(a: M512i): uint32 {.importc: "_mm512_reduce_min_epu32".}

func mm512_reduce_min_epu64*(a: M512i): uint64 {.importc: "_mm512_reduce_min_epu64".}

func mm512_reduce_max_ps*(a: M512): float32 {.importc: "_mm512_reduce_max_ps".}

func mm512_reduce_max_pd*(a: M512d): float64 {.importc: "_mm512_reduce_max_pd".}

func mm512_reduce_max_epi32*(a: M512i): int32 {.importc: "_mm512_reduce_max_epi32".}

func mm512_reduce_max_epi64*(a: M512i): int64 {.importc: "_mm512_reduce_max_epi64".}

func mm512_reduce_max_epu32*(a: M512i): uint32 {.importc: "_mm512_reduce_max_epu32".}

func mm512_reduce_max_epu64*(a: M512i): uint64 {.importc: "_mm512_reduce_max_epu64".}

func mm512_reduce_and_epi32*(a: M512i): int32 {.importc: "_mm512_reduce_and_epi32".}

func mm512_reduce_and_epi64*(a: M512i): int64 {.importc: "_mm512_reduce_and_epi64".}

func mm512_reduce_or_epi32*(a: M512i): int32 {.importc: "_mm512_reduce_or_epi32".}

func mm512_reduce_or_epi64*(a: M512i): int64 {.importc: "_mm512_reduce_or_epi64".}

# Gather

func mm512_i32gather_ps*(vindex: M512i, base_addr: pointer, scale: int32 | uint32): M512 {.importc: "_mm512_i32gather_ps".}

func mm512_i32gather_pd*(vindex: M256i, base_addr: pointer, scale: int32 | uint32): M512d {.importc: "_mm512_i32gather_pd".}

func mm512_i32gather_epi32*(vindex: M512i, base_addr: pointer, scale: int32 | uint32): M512i {.importc: "_mm512_i32gather_epi32".}

func mm512_i32gather_epi64*(vindex: M256i, base_addr: pointer, scale: int32 | uint32): M512i {.importc: "_mm512_i32gather_epi64".}

func mm512_i64gather_ps*(vindex: M512i, base_addr: pointer, scale: int32 | uint32): M256 {.importc: "_mm512_i64gather_ps".}

func mm512_i64gather_pd*(vindex: M512i, base_addr: pointer, scale: int32 | uint32): M512d {.importc: "_mm512_i64gather_pd".}

func mm512_i64gather_epi32*(vindex: M512i, base_addr: pointer, scale: int32 | uint32): M256i {.importc: "_mm512_i64gather_epi32".}

func mm512_i64gather_epi64*(vindex: M512i, base_addr: pointer, scale: int32 | uint32): M512i {.importc: "_mm512_i64gather_epi64".}

# Scatter

func mm512_i32scatter_ps*(base_addr: pointer, vindex: M512i, a: M512, scale: int32 | uint32) {.importc: "_mm512_i32scatter_ps".}

func mm512_i32scatter_pd*(base_addr: pointer, vindex: M256i, a: M512d, scale: int32 | uint32) {.importc: "_mm512_i32scatter_pd".}

func mm512_i32scatter_epi32*(base_addr: pointer, vindex: M512i, a: M512i, scale: int32 | uint32) {.importc: "_mm512_i32scatter_epi32".}

func mm512_i32scatter_epi64*(base_addr: pointer, vindex: M256i, a: M512i, scale: int32 | uint32) {.importc: "_mm512_i32scatter_epi64".}

func mm512_i64scatter_ps*(base_addr: pointer, vindex: M512i, a: M256, scale: int32 | uint32) {.importc: "_mm512_i64scatter_ps".}

func mm512_i64scatter_pd*(base_addr: pointer, vindex: M512i, a: M512d, scale: int32 | uint32) {.importc: "_mm512_i64scatter_pd".}

func mm512_i64scatter_epi32*(base_addr: pointer, vindex: M512i, a: M256i, scale: int32 | uint32) {.importc: "_mm512_i64scatter_epi32".}

func mm512_i64scatter_epi64*(base_addr: pointer, vindex: M512i, a: M512i, scale: int32 | uint32) {.importc: "_mm512_i64scatter_epi64".}

# Shift

func mm512_slli_epi32*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_slli_epi32".}

func mm512_slli_epi64*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_slli_epi64".}

func mm512_srli_epi32*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_srli_epi32".}

func mm512_srli_epi64*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_srli_epi64".}

func mm512_srai_epi32*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_srai_epi32".}

func mm512_srai_epi64*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_srai_epi64".}

func mm512_sll_epi32*(a: M512i, count: M128i): M512i {.importc: "_mm512_sll_epi32".}

func mm512_sll_epi64*(a: M512i, count: M128i): M512i {.importc: "_mm512_sll_epi64".}

func mm512_srl_epi32*(a: M512i, count: M128i): M512i {.importc: "_mm512_srl_epi32".}

func mm512_srl_epi64*(a: M512i, count: M128i): M512i {.importc: "_mm512_srl_epi64".}

func mm512_sra_epi32*(a: M512i, count: M128i): M512i {.importc: "_mm512_sra_epi32".}

func mm512_sra_epi64*(a: M512i, count: M128i): M512i {.importc: "_mm512_sra_epi64".}

func mm512_sllv_epi32*(a, count: M512i): M512i {.importc: "_mm512_sllv_epi32".}

func mm512_sllv_epi64*(a, count: M512i): M512i {.importc: "_mm512_sllv_epi64".}

func mm512_srlv_epi32*(a, count: M512i): M512i {.importc: "_mm512_srlv_epi32".}

func mm512_srlv_epi64*(a, count: M512i): M512i {.importc: "_mm512_srlv_epi64".}

func mm512_srav_epi32*(a, count: M512i): M512i {.importc: "_mm512_srav_epi32".}

func mm512_srav_epi64*(a, count: M512i): M512i {.importc: "_mm512_srav_epi64".}

# Rotate

func mm512_rol_epi32*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_rol_epi32".}

func mm512_rol_epi64*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_rol_epi64".}

func mm512_ror_epi32*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_ror_epi32".}

func mm512_ror_epi64*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_ror_epi64".}

func mm512_rolv_epi32*(a, b: M512i): M512i {.importc: "_mm512_rolv_epi32".}

func mm512_rolv_epi64*(a, b: M512i): M512i {.importc: "_mm512_rolv_epi64".}

func mm512_rorv_epi32*(a, b: M512i): M512i {.importc: "_mm512_rorv_epi32".}

func mm512_rorv_epi64*(a, b: M512i): M512i {.importc: "_mm512_rorv_epi64".}

# Ternary logic

func mm512_ternarylogic_epi32*(a, b, c: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_ternarylogic_epi32".}

func mm512_ternarylogic_epi64*(a, b, c: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_ternarylogic_epi64".}

# Mask operations

func mm512_kmov*(a: Mmask16): Mmask16 {.importc: "_mm512_kmov".}

func mm512_knot*(a: Mmask16): Mmask16 {.importc: "_mm512_knot".}

func mm512_kand*(a, b: Mmask16): Mmask16 {.importc: "_mm512_kand".}

func mm512_kandn*(a, b: Mmask16): Mmask16 {.importc: "_mm512_kandn".}

func mm512_kor*(a, b: Mmask16): Mmask16 {.importc: "_mm512_kor".}

func mm512_kxor*(a, b: Mmask16): Mmask16 {.importc: "_mm512_kxor".}

func mm512_kxnor*(a, b: Mmask16): Mmask16 {.importc: "_mm512_kxnor".}

func mm512_kortestz*(a, b: Mmask16): int32 {.importc: "_mm512_kortestz".}

func mm512_kortestc*(a, b: Mmask16): int32 {.importc: "_mm512_kortestc".}

# Masked load/store

func mm512_mask_loadu_ps*(src: M512, k: Mmask16, mem_addr: pointer): M512 {.importc: "_mm512_mask_loadu_ps".}

func mm512_maskz_loadu_ps*(k: Mmask16, mem_addr: pointer): M512 {.importc: "_mm512_maskz_loadu_ps".}

func mm512_mask_loadu_pd*(src: M512d, k: Mmask8, mem_addr: pointer): M512d {.importc: "_mm512_mask_loadu_pd".}

func mm512_maskz_loadu_pd*(k: Mmask8, mem_addr: pointer): M512d {.importc: "_mm512_maskz_loadu_pd".}

func mm512_mask_loadu_epi32*(src: M512i, k: Mmask16, mem_addr: pointer): M512i {.importc: "_mm512_mask_loadu_epi32".}

func mm512_maskz_loadu_epi32*(k: Mmask16, mem_addr: pointer): M512i {.importc: "_mm512_maskz_loadu_epi32".}

func mm512_mask_loadu_epi64*(src: M512i, k: Mmask8, mem_addr: pointer): M512i {.importc: "_mm512_mask_loadu_epi64".}

func mm512_maskz_loadu_epi64*(k: Mmask8, mem_addr: pointer): M512i {.importc: "_mm512_maskz_loadu_epi64".}

func mm512_mask_storeu_ps*(mem_addr: pointer, k: Mmask16, a: M512) {.importc: "_mm512_mask_storeu_ps".}

func mm512_mask_storeu_pd*(mem_addr: pointer, k: Mmask8, a: M512d) {.importc: "_mm512_mask_storeu_pd".}

func mm512_mask_storeu_epi32*(mem_addr: pointer, k: Mmask16, a: M512i) {.importc: "_mm512_mask_storeu_epi32".}

func mm512_mask_storeu_epi64*(mem_addr: pointer, k: Mmask8, a: M512i) {.importc: "_mm512_mask_storeu_epi64".}

# Masked arithmetic

func mm512_mask_add_ps*(src: M512, k: Mmask16, a, b: M512): M512 {.importc: "_mm512_mask_add_ps".}

func mm512_maskz_add_ps*(k: Mmask16, a, b: M512): M512 {.importc: "_mm512_maskz_add_ps".}

func mm512_mask_add_pd*(src: M512d, k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_mask_add_pd".}

func mm512_maskz_add_pd*(k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_maskz_add_pd".}

func mm512_mask_sub_ps*(src: M512, k: Mmask16, a, b: M512): M512 {.importc: "_mm512_mask_sub_ps".}

func mm512_maskz_sub_ps*(k: Mmask16, a, b: M512): M512 {.importc: "_mm512_maskz_sub_ps".}

func mm512_mask_sub_pd*(src: M512d, k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_mask_sub_pd".}

func mm512_maskz_sub_pd*(k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_maskz_sub_pd".}

func mm512_mask_mul_ps*(src: M512, k: Mmask16, a, b: M512): M512 {.importc: "_mm512_mask_mul_ps".}

func mm512_maskz_mul_ps*(k: Mmask16, a, b: M512): M512 {.importc: "_mm512_maskz_mul_ps".}

func mm512_mask_mul_pd*(src: M512d, k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_mask_mul_pd".}

func mm512_maskz_mul_pd*(k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_maskz_mul_pd".}

func mm512_mask_div_ps*(src: M512, k: Mmask16, a, b: M512): M512 {.importc: "_mm512_mask_div_ps".}

func mm512_maskz_div_ps*(k: Mmask16, a, b: M512): M512 {.importc: "_mm512_maskz_div_ps".}

func mm512_mask_div_pd*(src: M512d, k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_mask_div_pd".}

func mm512_maskz_div_pd*(k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_maskz_div_pd".}

# Move mask

func mm512_movepi32_mask*(a: M512i): Mmask16 {.importc: "_mm512_movepi32_mask".}

func mm512_movepi64_mask*(a: M512i): Mmask8 {.importc: "_mm512_movepi64_mask".}

func mm512_movm_epi32*(k: Mmask16): M512i {.importc: "_mm512_movm_epi32".}

func mm512_movm_epi64*(k: Mmask8): M512i {.importc: "_mm512_movm_epi64".}

# Compress/Expand

func mm512_mask_compress_ps*(src: M512, k: Mmask16, a: M512): M512 {.importc: "_mm512_mask_compress_ps".}

func mm512_maskz_compress_ps*(k: Mmask16, a: M512): M512 {.importc: "_mm512_maskz_compress_ps".}

func mm512_mask_compress_pd*(src: M512d, k: Mmask8, a: M512d): M512d {.importc: "_mm512_mask_compress_pd".}

func mm512_maskz_compress_pd*(k: Mmask8, a: M512d): M512d {.importc: "_mm512_maskz_compress_pd".}

func mm512_mask_compress_epi32*(src: M512i, k: Mmask16, a: M512i): M512i {.importc: "_mm512_mask_compress_epi32".}

func mm512_maskz_compress_epi32*(k: Mmask16, a: M512i): M512i {.importc: "_mm512_maskz_compress_epi32".}

func mm512_mask_compress_epi64*(src: M512i, k: Mmask8, a: M512i): M512i {.importc: "_mm512_mask_compress_epi64".}

func mm512_maskz_compress_epi64*(k: Mmask8, a: M512i): M512i {.importc: "_mm512_maskz_compress_epi64".}

func mm512_mask_expand_ps*(src: M512, k: Mmask16, a: M512): M512 {.importc: "_mm512_mask_expand_ps".}

func mm512_maskz_expand_ps*(k: Mmask16, a: M512): M512 {.importc: "_mm512_maskz_expand_ps".}

func mm512_mask_expand_pd*(src: M512d, k: Mmask8, a: M512d): M512d {.importc: "_mm512_mask_expand_pd".}

func mm512_maskz_expand_pd*(k: Mmask8, a: M512d): M512d {.importc: "_mm512_maskz_expand_pd".}

func mm512_mask_expand_epi32*(src: M512i, k: Mmask16, a: M512i): M512i {.importc: "_mm512_mask_expand_epi32".}

func mm512_maskz_expand_epi32*(k: Mmask16, a: M512i): M512i {.importc: "_mm512_maskz_expand_epi32".}

func mm512_mask_expand_epi64*(src: M512i, k: Mmask8, a: M512i): M512i {.importc: "_mm512_mask_expand_epi64".}

func mm512_maskz_expand_epi64*(k: Mmask8, a: M512i): M512i {.importc: "_mm512_maskz_expand_epi64".}

# Align

func mm512_alignr_epi32*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_alignr_epi32".}

func mm512_alignr_epi64*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_alignr_epi64".}

# Round

func mm512_roundscale_ps*(a: M512, imm8: int32 | uint32): M512 {.importc: "_mm512_roundscale_ps".}

func mm512_roundscale_pd*(a: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_roundscale_pd".}

# Getexp/Getmant

func mm512_getexp_ps*(a: M512): M512 {.importc: "_mm512_getexp_ps".}

func mm512_getexp_pd*(a: M512d): M512d {.importc: "_mm512_getexp_pd".}

func mm512_getmant_ps*(a: M512, interv, sc: int32 | uint32): M512 {.importc: "_mm512_getmant_ps".}

func mm512_getmant_pd*(a: M512d, interv, sc: int32 | uint32): M512d {.importc: "_mm512_getmant_pd".}

# Scalef

func mm512_scalef_ps*(a, b: M512): M512 {.importc: "_mm512_scalef_ps".}

func mm512_scalef_pd*(a, b: M512d): M512d {.importc: "_mm512_scalef_pd".}

# Fixup

func mm512_fixupimm_ps*(a, b: M512, c: M512i, imm8: int32 | uint32): M512 {.importc: "_mm512_fixupimm_ps".}

func mm512_fixupimm_pd*(a, b: M512d, c: M512i, imm8: int32 | uint32): M512d {.importc: "_mm512_fixupimm_pd".}

# Test

func mm512_test_epi32_mask*(a, b: M512i): Mmask16 {.importc: "_mm512_test_epi32_mask".}

func mm512_test_epi64_mask*(a, b: M512i): Mmask8 {.importc: "_mm512_test_epi64_mask".}

func mm512_testn_epi32_mask*(a, b: M512i): Mmask16 {.importc: "_mm512_testn_epi32_mask".}

func mm512_testn_epi64_mask*(a, b: M512i): Mmask8 {.importc: "_mm512_testn_epi64_mask".}

{.pop.}
