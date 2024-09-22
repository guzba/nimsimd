## SSE4.1 intrinsics

import ssse3
export ssse3

const
  MM_FROUND_TO_NEAREST_INT*: int32 = 0x00
  MM_FROUND_TO_NEG_INF*: int32 = 0x01
  MM_FROUND_TO_POS_INF*: int32 = 0x02
  MM_FROUND_TO_ZERO*: int32 = 0x03
  MM_FROUND_CUR_DIRECTION*: int32 = 0x04
  MM_FROUND_RAISE_EXC*: int32 = 0x00
  MM_FROUND_NO_EXC*: int32 = 0x08
  MM_FROUND_NINT*: int32 = 0x00
  MM_FROUND_FLOOR*: int32 = MM_FROUND_RAISE_EXC or MM_FROUND_TO_NEG_INF
  MM_FROUND_CEIL*: int32 = MM_FROUND_RAISE_EXC or MM_FROUND_TO_POS_INF
  MM_FROUND_TRUNC*: int32 = MM_FROUND_RAISE_EXC or MM_FROUND_TO_ZERO
  MM_FROUND_RINT*: int32 = MM_FROUND_RAISE_EXC or MM_FROUND_CUR_DIRECTION
  MM_FROUND_NEARBYINT*: int32 = MM_FROUND_NO_EXC or MM_FROUND_CUR_DIRECTION

{.push header: "smmintrin.h".}

func mm_blend_epi16*(a, b: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_blend_epi16".}

func mm_blend_pd*(a, b: M128d, imm8: int32 | uint32): M128d {.importc: "_mm_blend_pd".}

func mm_blend_ps*(a, b: M128, imm8: int32 | uint32): M128 {.importc: "_mm_blend_ps".}

func mm_blendv_epi8*(a, b, mask: M128i): M128i {.importc: "_mm_blendv_epi8".}

func mm_blendv_pd*(a, b, mask: M128d): M128d {.importc: "_mm_blendv_pd".}

func mm_blendv_ps*(a, b, mask: M128): M128 {.importc: "_mm_blendv_ps".}

func mm_ceil_pd*(a: M128d): M128d {.importc: "_mm_ceil_pd".}

func mm_ceil_ps*(a: M128): M128 {.importc: "_mm_ceil_ps".}

func mm_ceil_sd*(a, b: M128d): M128d {.importc: "_mm_ceil_sd".}

func mm_ceil_ss*(a, b: M128): M128 {.importc: "_mm_ceil_ss".}

func mm_cmpeq_epi64*(a, b: M128i): M128i {.importc: "_mm_cmpeq_epi64".}

func mm_cvtepi16_epi32*(a: M128i): M128i {.importc: "_mm_cvtepi16_epi32".}

func mm_cvtepi16_epi64*(a: M128i): M128i {.importc: "_mm_cvtepi16_epi64".}

func mm_cvtepi32_epi64*(a: M128i): M128i {.importc: "_mm_cvtepi32_epi64".}

func mm_cvtepi8_epi16*(a: M128i): M128i {.importc: "_mm_cvtepi8_epi16".}

func mm_cvtepi8_epi32*(a: M128i): M128i {.importc: "_mm_cvtepi8_epi32".}

func mm_cvtepi8_epi64*(a: M128i): M128i {.importc: "_mm_cvtepi8_epi64".}

func mm_cvtepu16_epi32*(a: M128i): M128i {.importc: "_mm_cvtepu16_epi32".}

func mm_cvtepu16_epi64*(a: M128i): M128i {.importc: "_mm_cvtepu16_epi64".}

func mm_cvtepu32_epi64*(a: M128i): M128i {.importc: "_mm_cvtepu32_epi64".}

func mm_cvtepu8_epi16*(a: M128i): M128i {.importc: "_mm_cvtepu8_epi16".}

func mm_cvtepu8_epi32*(a: M128i): M128i {.importc: "_mm_cvtepu8_epi32".}

func mm_cvtepu8_epi64*(a: M128i): M128i {.importc: "_mm_cvtepu8_epi64".}

func mm_dp_pd*(a, b: M128d, imm8: int32 | uint32): M128d {.importc: "_mm_dp_pd".}

func mm_dp_ps*(a, b: M128, imm8: int32 | uint32): M128 {.importc: "_mm_dp_ps".}

func mm_extract_epi32*(a: M128i, imm8: int32 | uint32): int32 {.importc: "_mm_extract_epi32".}

func mm_extract_epi64*(a: M128i, imm8: int32 | uint32): uint64 {.importc: "_mm_extract_epi64".}

func mm_extract_epi8*(a: M128i, imm8: int32 | uint32): int32 {.importc: "_mm_extract_epi8".}

func mm_extract_ps*(a: M128, imm8: int32 | uint32): int32 {.importc: "_mm_extract_ps".}

func mm_floor_pd*(a: M128d): M128d {.importc: "_mm_floor_pd".}

func mm_floor_ps*(a: M128): M128 {.importc: "_mm_floor_ps".}

func mm_floor_sd*(a, b: M128d): M128d {.importc: "_mm_floor_sd".}

func mm_floor_ss*(a, b: M128): M128 {.importc: "_mm_floor_ss".}

func mm_insert_epi32*(a: M128i, i, imm8: int32 | uint32): M128i {.importc: "_mm_insert_epi32".}

func mm_insert_epi64*(a: M128i, i: int64 | uint64, imm8: int32 | uint32): M128i {.importc: "_mm_insert_epi64".}

func mm_insert_epi8*(a: M128i, i, imm8: int32 | uint32): M128i {.importc: "_mm_insert_epi8".}

func mm_insert_ps*(a, b: M128, imm8: int32 | uint32): M128 {.importc: "_mm_insert_ps".}

func mm_max_epi32*(a, b: M128i): M128i {.importc: "_mm_max_epi32".}

func mm_max_epi8*(a, b: M128i): M128i {.importc: "_mm_max_epi8".}

func mm_max_epu16*(a, b: M128i): M128i {.importc: "_mm_max_epu16".}

func mm_max_epu32*(a, b: M128i): M128i {.importc: "_mm_max_epu32".}

func mm_min_epi32*(a, b: M128i): M128i {.importc: "_mm_min_epi32".}

func mm_min_epi8*(a, b: M128i): M128i {.importc: "_mm_min_epi8".}

func mm_min_epu16*(a, b: M128i): M128i {.importc: "_mm_min_epu16".}

func mm_min_epu32*(a, b: M128i): M128i {.importc: "_mm_min_epu32".}

func mm_minpos_epu16*(a: M128i): M128i {.importc: "_mm_minpos_epu16".}

func mm_mpsadbw_epu8*(a, b: M128i, imm8: int32 | uint32) {.importc: "_mm_mpsadbw_epu8".}

func mm_mul_epi32*(a, b: M128i): M128i {.importc: "_mm_mul_epi32".}

func mm_mullo_epi32*(a, b: M128i): M128i {.importc: "_mm_mullo_epi32".}

func mm_packus_epi32*(a, b: M128i): M128i {.importc: "_mm_packus_epi32".}

func mm_round_pd*(a: M128d, rounding: int32 | uint32): M128d {.importc: "_mm_round_pd".}

func mm_round_ps*(a: M128, rounding: int32 | uint32): M128 {.importc: "_mm_round_ps".}

func mm_round_sd*(a, b: M128d, rounding: int32 | uint32): M128d {.importc: "_mm_round_sd".}

func mm_round_ss*(a, b: M128, rounding: int32 | uint32): M128 {.importc: "_mm_round_ss".}

func mm_stream_load_si128*(p: pointer): M128i {.importc: "_mm_stream_load_si128".}

func mm_test_all_ones*(a: M128i): int32 {.importc: "_mm_test_all_ones".}

func mm_test_all_zeros*(a, mask: M128i): int32 {.importc: "_mm_test_all_zeros".}

func mm_test_mix_ones_zeros*(a, mask: M128i): int32 {.importc: "_mm_test_mix_ones_zeros".}

func mm_testc_si128*(a, b: M128i): int32 {.importc: "_mm_testc_si128".}

func mm_testnzc_si128*(a, b: M128i): int32 {.importc: "_mm_testnzc_si128".}

func mm_testz_si128*(a, b: M128i): int32 {.importc: "_mm_testz_si128".}

{.pop.}
