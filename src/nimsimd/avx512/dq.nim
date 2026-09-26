import f

export f

{.push header: "immintrin.h".}

# Multiply - 64-bit

func mm512_mullo_epi64*(a, b: M512i): M512i {.importc: "_mm512_mullo_epi64".}

func mm512_mask_mullo_epi64*(src: M512i, k: Mmask8, a, b: M512i): M512i {.importc: "_mm512_mask_mullo_epi64".}

func mm512_maskz_mullo_epi64*(k: Mmask8, a, b: M512i): M512i {.importc: "_mm512_maskz_mullo_epi64".}

func mm512_mullox_epi64*(a, b: M512i): M512i {.importc: "_mm512_mullox_epi64".}

# Logical AND/OR for float types

func mm512_and_ps*(a, b: M512): M512 {.importc: "_mm512_and_ps".}

func mm512_mask_and_ps*(src: M512, k: Mmask16, a, b: M512): M512 {.importc: "_mm512_mask_and_ps".}

func mm512_maskz_and_ps*(k: Mmask16, a, b: M512): M512 {.importc: "_mm512_maskz_and_ps".}

func mm512_and_pd*(a, b: M512d): M512d {.importc: "_mm512_and_pd".}

func mm512_mask_and_pd*(src: M512d, k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_mask_and_pd".}

func mm512_maskz_and_pd*(k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_maskz_and_pd".}

func mm512_andnot_ps*(a, b: M512): M512 {.importc: "_mm512_andnot_ps".}

func mm512_mask_andnot_ps*(src: M512, k: Mmask16, a, b: M512): M512 {.importc: "_mm512_mask_andnot_ps".}

func mm512_maskz_andnot_ps*(k: Mmask16, a, b: M512): M512 {.importc: "_mm512_maskz_andnot_ps".}

func mm512_andnot_pd*(a, b: M512d): M512d {.importc: "_mm512_andnot_pd".}

func mm512_mask_andnot_pd*(src: M512d, k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_mask_andnot_pd".}

func mm512_maskz_andnot_pd*(k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_maskz_andnot_pd".}

func mm512_or_ps*(a, b: M512): M512 {.importc: "_mm512_or_ps".}

func mm512_mask_or_ps*(src: M512, k: Mmask16, a, b: M512): M512 {.importc: "_mm512_mask_or_ps".}

func mm512_maskz_or_ps*(k: Mmask16, a, b: M512): M512 {.importc: "_mm512_maskz_or_ps".}

func mm512_or_pd*(a, b: M512d): M512d {.importc: "_mm512_or_pd".}

func mm512_mask_or_pd*(src: M512d, k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_mask_or_pd".}

func mm512_maskz_or_pd*(k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_maskz_or_pd".}

func mm512_xor_ps*(a, b: M512): M512 {.importc: "_mm512_xor_ps".}

func mm512_mask_xor_ps*(src: M512, k: Mmask16, a, b: M512): M512 {.importc: "_mm512_mask_xor_ps".}

func mm512_maskz_xor_ps*(k: Mmask16, a, b: M512): M512 {.importc: "_mm512_maskz_xor_ps".}

func mm512_xor_pd*(a, b: M512d): M512d {.importc: "_mm512_xor_pd".}

func mm512_mask_xor_pd*(src: M512d, k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_mask_xor_pd".}

func mm512_maskz_xor_pd*(k: Mmask8, a, b: M512d): M512d {.importc: "_mm512_maskz_xor_pd".}

# Conversion - 64-bit integer to/from float

func mm512_cvtepi64_ps*(a: M512i): M256 {.importc: "_mm512_cvtepi64_ps".}

func mm512_mask_cvtepi64_ps*(src: M256, k: Mmask8, a: M512i): M256 {.importc: "_mm512_mask_cvtepi64_ps".}

func mm512_maskz_cvtepi64_ps*(k: Mmask8, a: M512i): M256 {.importc: "_mm512_maskz_cvtepi64_ps".}

func mm512_cvtepi64_pd*(a: M512i): M512d {.importc: "_mm512_cvtepi64_pd".}

func mm512_mask_cvtepi64_pd*(src: M512d, k: Mmask8, a: M512i): M512d {.importc: "_mm512_mask_cvtepi64_pd".}

func mm512_maskz_cvtepi64_pd*(k: Mmask8, a: M512i): M512d {.importc: "_mm512_maskz_cvtepi64_pd".}

func mm512_cvtepu64_ps*(a: M512i): M256 {.importc: "_mm512_cvtepu64_ps".}

func mm512_mask_cvtepu64_ps*(src: M256, k: Mmask8, a: M512i): M256 {.importc: "_mm512_mask_cvtepu64_ps".}

func mm512_maskz_cvtepu64_ps*(k: Mmask8, a: M512i): M256 {.importc: "_mm512_maskz_cvtepu64_ps".}

func mm512_cvtepu64_pd*(a: M512i): M512d {.importc: "_mm512_cvtepu64_pd".}

func mm512_mask_cvtepu64_pd*(src: M512d, k: Mmask8, a: M512i): M512d {.importc: "_mm512_mask_cvtepu64_pd".}

func mm512_maskz_cvtepu64_pd*(k: Mmask8, a: M512i): M512d {.importc: "_mm512_maskz_cvtepu64_pd".}

func mm512_cvtps_epi64*(a: M256): M512i {.importc: "_mm512_cvtps_epi64".}

func mm512_mask_cvtps_epi64*(src: M512i, k: Mmask8, a: M256): M512i {.importc: "_mm512_mask_cvtps_epi64".}

func mm512_maskz_cvtps_epi64*(k: Mmask8, a: M256): M512i {.importc: "_mm512_maskz_cvtps_epi64".}

func mm512_cvtps_epu64*(a: M256): M512i {.importc: "_mm512_cvtps_epu64".}

func mm512_mask_cvtps_epu64*(src: M512i, k: Mmask8, a: M256): M512i {.importc: "_mm512_mask_cvtps_epu64".}

func mm512_maskz_cvtps_epu64*(k: Mmask8, a: M256): M512i {.importc: "_mm512_maskz_cvtps_epu64".}

func mm512_cvtpd_epi64*(a: M512d): M512i {.importc: "_mm512_cvtpd_epi64".}

func mm512_mask_cvtpd_epi64*(src: M512i, k: Mmask8, a: M512d): M512i {.importc: "_mm512_mask_cvtpd_epi64".}

func mm512_maskz_cvtpd_epi64*(k: Mmask8, a: M512d): M512i {.importc: "_mm512_maskz_cvtpd_epi64".}

func mm512_cvtpd_epu64*(a: M512d): M512i {.importc: "_mm512_cvtpd_epu64".}

func mm512_mask_cvtpd_epu64*(src: M512i, k: Mmask8, a: M512d): M512i {.importc: "_mm512_mask_cvtpd_epu64".}

func mm512_maskz_cvtpd_epu64*(k: Mmask8, a: M512d): M512i {.importc: "_mm512_maskz_cvtpd_epu64".}

# Truncate conversion

func mm512_cvttps_epi64*(a: M256): M512i {.importc: "_mm512_cvttps_epi64".}

func mm512_mask_cvttps_epi64*(src: M512i, k: Mmask8, a: M256): M512i {.importc: "_mm512_mask_cvttps_epi64".}

func mm512_maskz_cvttps_epi64*(k: Mmask8, a: M256): M512i {.importc: "_mm512_maskz_cvttps_epi64".}

func mm512_cvttps_epu64*(a: M256): M512i {.importc: "_mm512_cvttps_epu64".}

func mm512_mask_cvttps_epu64*(src: M512i, k: Mmask8, a: M256): M512i {.importc: "_mm512_mask_cvttps_epu64".}

func mm512_maskz_cvttps_epu64*(k: Mmask8, a: M256): M512i {.importc: "_mm512_maskz_cvttps_epu64".}

func mm512_cvttpd_epi64*(a: M512d): M512i {.importc: "_mm512_cvttpd_epi64".}

func mm512_mask_cvttpd_epi64*(src: M512i, k: Mmask8, a: M512d): M512i {.importc: "_mm512_mask_cvttpd_epi64".}

func mm512_maskz_cvttpd_epi64*(k: Mmask8, a: M512d): M512i {.importc: "_mm512_maskz_cvttpd_epi64".}

func mm512_cvttpd_epu64*(a: M512d): M512i {.importc: "_mm512_cvttpd_epu64".}

func mm512_mask_cvttpd_epu64*(src: M512i, k: Mmask8, a: M512d): M512i {.importc: "_mm512_mask_cvttpd_epu64".}

func mm512_maskz_cvttpd_epu64*(k: Mmask8, a: M512d): M512i {.importc: "_mm512_maskz_cvttpd_epu64".}

# Extract/Insert 256-bit and 128-bit

func mm512_extractf64x2_pd*(a: M512d, imm8: int32 | uint32): M128d {.importc: "_mm512_extractf64x2_pd".}

func mm512_mask_extractf64x2_pd*(src: M128d, k: Mmask8, a: M512d, imm8: int32 | uint32): M128d {.importc: "_mm512_mask_extractf64x2_pd".}

func mm512_maskz_extractf64x2_pd*(k: Mmask8, a: M512d, imm8: int32 | uint32): M128d {.importc: "_mm512_maskz_extractf64x2_pd".}

func mm512_extractf32x8_ps*(a: M512, imm8: int32 | uint32): M256 {.importc: "_mm512_extractf32x8_ps".}

func mm512_mask_extractf32x8_ps*(src: M256, k: Mmask8, a: M512, imm8: int32 | uint32): M256 {.importc: "_mm512_mask_extractf32x8_ps".}

func mm512_maskz_extractf32x8_ps*(k: Mmask8, a: M512, imm8: int32 | uint32): M256 {.importc: "_mm512_maskz_extractf32x8_ps".}

func mm512_extracti64x2_epi64*(a: M512i, imm8: int32 | uint32): M128i {.importc: "_mm512_extracti64x2_epi64".}

func mm512_mask_extracti64x2_epi64*(src: M128i, k: Mmask8, a: M512i, imm8: int32 | uint32): M128i {.importc: "_mm512_mask_extracti64x2_epi64".}

func mm512_maskz_extracti64x2_epi64*(k: Mmask8, a: M512i, imm8: int32 | uint32): M128i {.importc: "_mm512_maskz_extracti64x2_epi64".}

func mm512_extracti32x8_epi32*(a: M512i, imm8: int32 | uint32): M256i {.importc: "_mm512_extracti32x8_epi32".}

func mm512_mask_extracti32x8_epi32*(src: M256i, k: Mmask8, a: M512i, imm8: int32 | uint32): M256i {.importc: "_mm512_mask_extracti32x8_epi32".}

func mm512_maskz_extracti32x8_epi32*(k: Mmask8, a: M512i, imm8: int32 | uint32): M256i {.importc: "_mm512_maskz_extracti32x8_epi32".}

func mm512_insertf64x2*(a: M512d, b: M128d, imm8: int32 | uint32): M512d {.importc: "_mm512_insertf64x2".}

func mm512_mask_insertf64x2*(src: M512d, k: Mmask8, a: M512d, b: M128d, imm8: int32 | uint32): M512d {.importc: "_mm512_mask_insertf64x2".}

func mm512_maskz_insertf64x2*(k: Mmask8, a: M512d, b: M128d, imm8: int32 | uint32): M512d {.importc: "_mm512_maskz_insertf64x2".}

func mm512_insertf32x8*(a: M512, b: M256, imm8: int32 | uint32): M512 {.importc: "_mm512_insertf32x8".}

func mm512_mask_insertf32x8*(src: M512, k: Mmask16, a: M512, b: M256, imm8: int32 | uint32): M512 {.importc: "_mm512_mask_insertf32x8".}

func mm512_maskz_insertf32x8*(k: Mmask16, a: M512, b: M256, imm8: int32 | uint32): M512 {.importc: "_mm512_maskz_insertf32x8".}

func mm512_inserti64x2*(a: M512i, b: M128i, imm8: int32 | uint32): M512i {.importc: "_mm512_inserti64x2".}

func mm512_mask_inserti64x2*(src: M512i, k: Mmask8, a: M512i, b: M128i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_inserti64x2".}

func mm512_maskz_inserti64x2*(k: Mmask8, a: M512i, b: M128i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_inserti64x2".}

func mm512_inserti32x8*(a: M512i, b: M256i, imm8: int32 | uint32): M512i {.importc: "_mm512_inserti32x8".}

func mm512_mask_inserti32x8*(src: M512i, k: Mmask16, a: M512i, b: M256i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_inserti32x8".}

func mm512_maskz_inserti32x8*(k: Mmask16, a: M512i, b: M256i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_inserti32x8".}

# Broadcast

func mm512_broadcast_f32x2*(a: M128): M512 {.importc: "_mm512_broadcast_f32x2".}

func mm512_mask_broadcast_f32x2*(src: M512, k: Mmask16, a: M128): M512 {.importc: "_mm512_mask_broadcast_f32x2".}

func mm512_maskz_broadcast_f32x2*(k: Mmask16, a: M128): M512 {.importc: "_mm512_maskz_broadcast_f32x2".}

func mm512_broadcast_f64x2*(a: M128d): M512d {.importc: "_mm512_broadcast_f64x2".}

func mm512_mask_broadcast_f64x2*(src: M512d, k: Mmask8, a: M128d): M512d {.importc: "_mm512_mask_broadcast_f64x2".}

func mm512_maskz_broadcast_f64x2*(k: Mmask8, a: M128d): M512d {.importc: "_mm512_maskz_broadcast_f64x2".}

func mm512_broadcast_f32x8*(a: M256): M512 {.importc: "_mm512_broadcast_f32x8".}

func mm512_mask_broadcast_f32x8*(src: M512, k: Mmask16, a: M256): M512 {.importc: "_mm512_mask_broadcast_f32x8".}

func mm512_maskz_broadcast_f32x8*(k: Mmask16, a: M256): M512 {.importc: "_mm512_maskz_broadcast_f32x8".}

func mm512_broadcast_i32x2*(a: M128i): M512i {.importc: "_mm512_broadcast_i32x2".}

func mm512_mask_broadcast_i32x2*(src: M512i, k: Mmask16, a: M128i): M512i {.importc: "_mm512_mask_broadcast_i32x2".}

func mm512_maskz_broadcast_i32x2*(k: Mmask16, a: M128i): M512i {.importc: "_mm512_maskz_broadcast_i32x2".}

func mm512_broadcast_i64x2*(a: M128i): M512i {.importc: "_mm512_broadcast_i64x2".}

func mm512_mask_broadcast_i64x2*(src: M512i, k: Mmask8, a: M128i): M512i {.importc: "_mm512_mask_broadcast_i64x2".}

func mm512_maskz_broadcast_i64x2*(k: Mmask8, a: M128i): M512i {.importc: "_mm512_maskz_broadcast_i64x2".}

func mm512_broadcast_i32x8*(a: M256i): M512i {.importc: "_mm512_broadcast_i32x8".}

func mm512_mask_broadcast_i32x8*(src: M512i, k: Mmask16, a: M256i): M512i {.importc: "_mm512_mask_broadcast_i32x8".}

func mm512_maskz_broadcast_i32x8*(k: Mmask16, a: M256i): M512i {.importc: "_mm512_maskz_broadcast_i32x8".}

# Range

func mm512_range_ps*(a, b: M512, imm8: int32 | uint32): M512 {.importc: "_mm512_range_ps".}

func mm512_mask_range_ps*(src: M512, k: Mmask16, a, b: M512, imm8: int32 | uint32): M512 {.importc: "_mm512_mask_range_ps".}

func mm512_maskz_range_ps*(k: Mmask16, a, b: M512, imm8: int32 | uint32): M512 {.importc: "_mm512_maskz_range_ps".}

func mm512_range_pd*(a, b: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_range_pd".}

func mm512_mask_range_pd*(src: M512d, k: Mmask8, a, b: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_mask_range_pd".}

func mm512_maskz_range_pd*(k: Mmask8, a, b: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_maskz_range_pd".}

# Reduce

func mm512_reduce_ps*(a: M512, imm8: int32 | uint32): M512 {.importc: "_mm512_reduce_ps".}

func mm512_mask_reduce_ps*(src: M512, k: Mmask16, a: M512, imm8: int32 | uint32): M512 {.importc: "_mm512_mask_reduce_ps".}

func mm512_maskz_reduce_ps*(k: Mmask16, a: M512, imm8: int32 | uint32): M512 {.importc: "_mm512_maskz_reduce_ps".}

func mm512_reduce_pd*(a: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_reduce_pd".}

func mm512_mask_reduce_pd*(src: M512d, k: Mmask8, a: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_mask_reduce_pd".}

func mm512_maskz_reduce_pd*(k: Mmask8, a: M512d, imm8: int32 | uint32): M512d {.importc: "_mm512_maskz_reduce_pd".}

# Floating-point classification

func mm512_fpclass_ps_mask*(a: M512, imm8: int32 | uint32): Mmask16 {.importc: "_mm512_fpclass_ps_mask".}

func mm512_mask_fpclass_ps_mask*(k: Mmask16, a: M512, imm8: int32 | uint32): Mmask16 {.importc: "_mm512_mask_fpclass_ps_mask".}

func mm512_fpclass_pd_mask*(a: M512d, imm8: int32 | uint32): Mmask8 {.importc: "_mm512_fpclass_pd_mask".}

func mm512_mask_fpclass_pd_mask*(k: Mmask8, a: M512d, imm8: int32 | uint32): Mmask8 {.importc: "_mm512_mask_fpclass_pd_mask".}

# Mask operations for 8-bit masks

func kadd_mask8*(a, b: Mmask8): Mmask8 {.importc: "_kadd_mask8".}

func kand_mask8*(a, b: Mmask8): Mmask8 {.importc: "_kand_mask8".}

func kandn_mask8*(a, b: Mmask8): Mmask8 {.importc: "_kandn_mask8".}

func knot_mask8*(a: Mmask8): Mmask8 {.importc: "_knot_mask8".}

func kor_mask8*(a, b: Mmask8): Mmask8 {.importc: "_kor_mask8".}

func kxor_mask8*(a, b: Mmask8): Mmask8 {.importc: "_kxor_mask8".}

func kxnor_mask8*(a, b: Mmask8): Mmask8 {.importc: "_kxnor_mask8".}

func kortest_mask8_u8*(a, b: Mmask8, all_ones: ptr uint8): uint8 {.importc: "_kortest_mask8_u8".}

func ktest_mask8_u8*(a, b: Mmask8, and_result: ptr uint8): uint8 {.importc: "_ktest_mask8_u8".}

{.pop.}
