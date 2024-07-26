import avx

export avx

{.push header: "immintrin.h".}

func mm_blend_epi32*(a, b: M128i, imm8: int32): M128i {.importc: "_mm_blend_epi32".}

func mm256_abs_epi16*(a: M256i): M256i {.importc: "_mm256_abs_epi16".}

func mm256_abs_epi32*(a: M256i): M256i {.importc: "_mm256_abs_epi32".}

func mm256_abs_epi8*(a: M256i): M256i {.importc: "_mm256_abs_epi8".}

func mm256_add_epi16*(a, b: M256i): M256i {.importc: "_mm256_add_epi16".}

func mm256_add_epi32*(a, b: M256i): M256i {.importc: "_mm256_add_epi32".}

func mm256_add_epi64*(a, b: M256i): M256i {.importc: "_mm256_add_epi64".}

func mm256_add_epi8*(a, b: M256i): M256i {.importc: "_mm256_add_epi8".}

func mm256_adds_epi16*(a, b: M256i): M256i {.importc: "_mm256_adds_epi16".}

func mm256_adds_epi8*(a, b: M256i): M256i {.importc: "_mm256_adds_epi8".}

func mm256_adds_epu16*(a, b: M256i): M256i {.importc: "_mm256_adds_epu16".}

func mm256_adds_epu8*(a, b: M256i): M256i {.importc: "_mm256_adds_epu8".}

func mm256_alignr_epi8*(a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_alignr_epi8".}

func mm256_and_si256*(a, b: M256i): M256i {.importc: "_mm256_and_si256".}

func mm256_andnot_si256*(a, b: M256i): M256i {.importc: "_mm256_andnot_si256".}

func mm256_avg_epu16*(a, b: M256i): M256i {.importc: "_mm256_avg_epu16".}

func mm256_avg_epu8*(a, b: M256i): M256i {.importc: "_mm256_avg_epu8".}

func mm256_blend_epi16*(a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_blend_epi16".}

func mm256_blend_epi32*(a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_blend_epi32".}

func mm256_blendv_epi8*(a, b, mask: M256i): M256i {.importc: "_mm256_blendv_epi8".}

func mm256_broadcastb_epi8*(a: M128i): M256i {.importc: "_mm256_broadcastb_epi8".}

func mm256_broadcastd_epi32*(a: M128i): M256i {.importc: "_mm256_broadcastd_epi32".}

func mm256_broadcastq_epi64*(a: M128i): M256i {.importc: "_mm256_broadcastq_epi64".}

func mm_broadcastq_epi64*(a: M128i): M128i {.importc: "_mm_broadcastq_epi64".}

func mm_broadcastd_epi32*(a: M128i): M128i {.importc: "_mm_broadcastd_epi32".}

func mm_broadcastw_epi16*(a: M128i): M128i {.importc: "_mm_broadcastw_epi16".}

func mm_broadcastb_epi8*(a: M128i): M128i {.importc: "_mm_broadcastb_epi8".}

func mm_broadcastsd_pd*(a: M128d): M128d {.importc: "_mm_broadcastsd_pd".}

func mm_broadcastss_ps*(a: M128 ): M128 {.importc: "_mm_broadcastss_ps".}

func mm_broadcastsi128_si256*(a: M128i): M256i {.importc: "_mm_broadcastsi128_si256".}

func mm256_broadcastsi128_si256*(a: M128i): M256i {.importc: "_mm256_broadcastsi128_si256".}

func mm256_broadcastw_epi16*(a: M128i): M256i {.importc: "_mm256_broadcastw_epi16".}

func mm256_bslli_epi128*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_bslli_epi128".}

func mm256_bsrli_epi128*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_bsrli_epi128".}

func mm256_cmpeq_epi16*(a, b: M256i): M256i {.importc: "_mm256_cmpeq_epi16".}

func mm256_cmpeq_epi32*(a, b: M256i): M256i {.importc: "_mm256_cmpeq_epi32".}

func mm256_cmpeq_epi64*(a, b: M256i): M256i {.importc: "_mm256_cmpeq_epi64".}

func mm256_cmpeq_epi8*(a, b: M256i): M256i {.importc: "_mm256_cmpeq_epi8".}

func mm256_cmpgt_epi16*(a, b: M256i): M256i {.importc: "_mm256_cmpgt_epi16".}

func mm256_cmpgt_epi32*(a, b: M256i): M256i {.importc: "_mm256_cmpgt_epi32".}

func mm256_cmpgt_epi64*(a, b: M256i): M256i {.importc: "_mm256_cmpgt_epi64".}

func mm256_cmpgt_epi8*(a, b: M256i): M256i {.importc: "_mm256_cmpgt_epi8".}

func mm256_cvtepi16_epi32*(a: M128i): M256i {.importc: "_mm256_cvtepi16_epi32".}

func mm256_cvtepi16_epi64*(a: M128i): M256i {.importc: "_mm256_cvtepi16_epi64".}

func mm256_cvtepi32_epi64*(a: M128i): M256i {.importc: "_mm256_cvtepi32_epi64".}

func mm256_cvtepi8_epi16*(a: M128i): M256i {.importc: "_mm256_cvtepi8_epi16".}

func mm256_cvtepi8_epi32*(a: M128i): M256i {.importc: "_mm256_cvtepi8_epi32".}

func mm256_cvtepi8_epi64*(a: M128i): M256i {.importc: "_mm256_cvtepi8_epi64".}

func mm256_cvtepu16_epi32*(a: M128i): M256i {.importc: "_mm256_cvtepu16_epi32".}

func mm256_cvtepu16_epi64*(a: M128i): M256i {.importc: "_mm256_cvtepu16_epi64".}

func mm256_cvtepu32_epi64*(a: M128i): M256i {.importc: "_mm256_cvtepu32_epi64".}

func mm256_cvtepu8_epi16*(a: M128i): M256i {.importc: "_mm256_cvtepu8_epi16".}

func mm256_cvtepu8_epi32*(a: M128i): M256i {.importc: "_mm256_cvtepu8_epi32".}

func mm256_cvtepu8_epi64*(a: M128i): M256i {.importc: "_mm256_cvtepu8_epi64".}

func mm256_extract_epi16*(a: M256i, index: int32 | uint32): int32 {.importc: "_mm256_extract_epi16".}

func mm256_extract_epi8*(a: M256i, index: int32 | uint32): int32 {.importc: "_mm256_extract_epi8".}

func mm256_extracti128_si256*(a: M256i, imm8: int32 | uint32): M128i {.importc: "_mm256_extracti128_si256".}

func mm256_hadd_epi16*(a, b: M256i): M256i {.importc: "_mm256_hadd_epi16".}

func mm256_hadd_epi32*(a, b: M256i): M256i {.importc: "_mm256_hadd_epi32".}

func mm256_hadds_epi16*(a, b: M256i): M256i {.importc: "_mm256_hadds_epi16".}

func mm256_hsub_epi16*(a, b: M256i): M256i {.importc: "_mm256_hsub_epi16".}

func mm256_hsub_epi32*(a, b: M256i): M256i {.importc: "_mm256_hsub_epi32".}

func mm256_hsubs_epi16*(a, b: M256i): M256i {.importc: "_mm256_hsubs_epi16".}

func mm256_i32gather_epi32*(p: pointer, vindex: M256i, scale: int32 | uint32): M256i {.importc: "_mm256_i32gather_epi32".}

func mm256_mask_i32gather_epi32*(src: M256i, p: pointer, vindex, mask: M256i, scale: int32 | uint32): M256i {.importc: "_mm256_mask_i32gather_epi32".}

func mm256_i32gather_epi64*(p: pointer, vindex: M128i, scale: int32 | uint32): M256i {.importc: "_mm256_i32gather_epi64".}

func mm256_mask_i32gather_epi64*(src: M256i, p: pointer, vindex: M128i, mask: M256i, scale: int32 | uint32): M256i {.importc: "_mm256_mask_i32gather_epi64".}

func mm256_i32gather_ps*(p: pointer, vindex: M256i, scale: int32 | uint32): M256 {.importc: "_mm256_i32gather_ps".}

func mm256_mask_i32gather_ps*(src: M256, p: pointer, vindex: M256i, mask: M256, scale: int32 | uint32): M256 {.importc: "_mm256_mask_i32gather_ps".}

func mm256_i64gather_epi32*(p: pointer, vindex: M256i, scale: int32 | uint32): M128i {.importc: "_mm256_i64gather_epi32".}

func mm256_mask_i64gather_epi32*(src: M128i, p: pointer, vindex: M256i, mask: M128i, scale: int32 | uint32): M128i {.importc: "_mm256_mask_i64gather_epi32".}

func mm256_i64gather_epi64*(p: pointer, vindex: M256i, scale: int32 | uint32): M256i {.importc: "_mm256_i64gather_epi64".}

func mm256_mask_i64gather_epi64*(src: M256i, p: pointer, vindex, mask: M256i, scale: int32 | uint32): M256i {.importc: "_mm256_mask_i64gather_epi64".}

func mm256_i64gather_pd*(p: pointer, vindex: M256i, scale: int32 | uint32): M256d {.importc: "_mm256_i64gather_pd".}

func mm256_mask_i64gather_pd*(src: M256d, p: pointer, vindex: M256i, mask: M256d, scale: int32 | uint32): M128d {.importc: "_mm256_mask_i64gather_pd".}

func mm256_i64gather_ps*(p: pointer, vindex: M256i, scale: int32 | uint32): M128 {.importc: "_mm256_i64gather_ps".}

func mm256_mask_i64gather_ps*(src: M128, p: pointer, vindex: M256i, mask: M128, scale: int32 | uint32): M128 {.importc: "_mm256_mask_i64gather_ps".}

func mm256_inserti128_si256*(a: M256i, b: M128i, imm8: int32 | uint32): M256i {.importc: "_mm256_inserti128_si256".}

func mm256_madd_epi16*(a, b: M256i): M256i {.importc: "_mm256_madd_epi16".}

func mm256_maddubs_epi16*(a, b: M256i): M256i {.importc: "_mm256_maddubs_epi16".}

func mm256_maskload_epi32*(p: pointer, mask: M256i): M256i {.importc: "_mm256_maskload_epi32".}

func mm256_maskload_epi64*(p: pointer, mask: M256i): M256i {.importc: "_mm256_maskload_epi64".}

func mm256_maskstore_epi32*(p: pointer, mask, a: M256i) {.importc: "_mm256_maskstore_epi32".}

func mm256_maskstore_epi64*(p: pointer, mask, a: M256i) {.importc: "_mm256_maskstore_epi64".}

func mm256_max_epi16*(a, b: M256i): M256i {.importc: "_mm256_max_epi16".}

func mm256_max_epi32*(a, b: M256i): M256i {.importc: "_mm256_max_epi32".}

func mm256_max_epi8*(a, b: M256i): M256i {.importc: "_mm256_max_epi8".}

func mm256_max_epu16*(a, b: M256i): M256i {.importc: "_mm256_max_epu16".}

func mm256_max_epu32*(a, b: M256i): M256i {.importc: "_mm256_max_epu32".}

func mm256_max_epu8*(a, b: M256i): M256i {.importc: "_mm256_max_epu8".}

func mm256_min_epi16*(a, b: M256i): M256i {.importc: "_mm256_min_epi16".}

func mm256_min_epi32*(a, b: M256i): M256i {.importc: "_mm256_min_epi32".}

func mm256_min_epi8*(a, b: M256i): M256i {.importc: "_mm256_min_epi8".}

func mm256_min_epu16*(a, b: M256i): M256i {.importc: "_mm256_min_epu16".}

func mm256_min_epu32*(a, b: M256i): M256i {.importc: "_mm256_min_epu32".}

func mm256_min_epu8*(a, b: M256i): M256i {.importc: "_mm256_min_epu8".}

func mm256_movemask_epi8*(a: M256i): int32 {.importc: "_mm256_movemask_epi8".}

func mm256_mpsadbw_epu8*(a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mpsadbw_epu8".}

func mm256_mul_epi32*(a, b: M256i): M256i {.importc: "_mm256_mul_epi32".}

func mm256_mul_epu32*(a, b: M256i): M256i {.importc: "_mm256_mul_epu32".}

func mm256_mulhi_epi16*(a, b: M256i): M256i {.importc: "_mm256_mulhi_epi16".}

func mm256_mulhi_epu16*(a, b: M256i): M256i {.importc: "_mm256_mulhi_epu16".}

func mm256_mulhrs_epi16*(a, b: M256i): M256i {.importc: "_mm256_mulhrs_epi16".}

func mm256_mullo_epi16*(a, b: M256i): M256i {.importc: "_mm256_mullo_epi16".}

func mm256_mullo_epi32*(a, b: M256i): M256i {.importc: "_mm256_mullo_epi32".}

func mm256_or_si256*(a, b: M256i): M256i {.importc: "_mm256_or_si256".}

func mm256_packs_epi16*(a, b: M256i): M256i {.importc: "_mm256_packs_epi16".}

func mm256_packs_epi32*(a, b: M256i): M256i {.importc: "_mm256_packs_epi32".}

func mm256_packus_epi16*(a, b: M256i): M256i {.importc: "_mm256_packus_epi16".}

func mm256_packus_epi32*(a, b: M256i): M256i {.importc: "_mm256_packus_epi32".}

func mm256_permute2x128_si256*(a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_permute2x128_si256".}

func mm256_permute4x64_epi64*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_permute4x64_epi64".}

func mm256_permute4x64_pd*(a: M256d, imm8: int32 | uint32): M256d {.importc: "_mm256_permute4x64_pd".}

func mm256_permutevar8x32_epi32*(a, idx: M256i): M256i {.importc: "_mm256_permutevar8x32_epi32".}

func mm256_permutevar8x32_ps*(a: M256, idx: M256i): M256 {.importc: "_mm256_permutevar8x32_ps".}

func mm256_sad_epu8*(a, b: M256i): M256i {.importc: "_mm256_sad_epu8".}

func mm256_shuffle_epi32*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_shuffle_epi32".}

func mm256_shuffle_epi8*(a, b: M256i): M256i {.importc: "_mm256_shuffle_epi8".}

func mm256_shufflehi_epi16*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_shufflehi_epi16".}

func mm256_shufflelo_epi16*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_shufflelo_epi16".}

func mm256_sign_epi16*(a, b: M256i): M256i {.importc: "_mm256_sign_epi16".}

func mm256_sign_epi32*(a, b: M256i): M256i {.importc: "_mm256_sign_epi32".}

func mm256_sign_epi8*(a, b: M256i): M256i {.importc: "_mm256_sign_epi8".}

func mm256_sll_epi16*(a: M256i, count: M128i): M256i {.importc: "_mm256_sll_epi16".}

func mm256_sll_epi32*(a: M256i, count: M128i): M256i {.importc: "_mm256_sll_epi32".}

func mm256_sll_epi64*(a: M256i, count: M128i): M256i {.importc: "_mm256_sll_epi64".}

func mm256_slli_epi16*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_slli_epi16".}

func mm256_slli_epi32*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_slli_epi32".}

func mm256_slli_epi64*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_slli_epi64".}

func mm256_slli_si256*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_slli_si256".}

func mm256_sllv_epi32*(a: M256i, count: M256i): M256i {.importc: "_mm256_sllv_epi32".}

func mm256_sllv_epi64*(a: M256i, count: M256i): M256i {.importc: "_mm256_sllv_epi64".}

func mm256_sra_epi16*(a: M256i, count: M128i): M256i {.importc: "_mm256_sra_epi16".}

func mm256_sra_epi32*(a: M256i, count: M128i): M256i {.importc: "_mm256_sra_epi32".}

func mm256_srai_epi16*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_srai_epi16".}

func mm256_srai_epi32*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_srai_epi32".}

func mm256_srav_epi32*(a: M256i, count: M256i): M256i {.importc: "_mm256_srav_epi32".}

func mm256_srl_epi16*(a: M256i, count: M128i): M256i {.importc: "_mm256_srl_epi16".}

func mm256_srl_epi32*(a: M256i, count: M128i): M256i {.importc: "_mm256_srl_epi32".}

func mm256_srl_epi64*(a: M256i, count: M128i): M256i {.importc: "_mm256_srl_epi64".}

func mm256_srli_epi16*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_srli_epi16".}

func mm256_srli_epi32*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_srli_epi32".}

func mm256_srli_epi64*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_srli_epi64".}

func mm256_srli_si256*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_srli_si256".}

func mm256_srlv_epi32*(a: M256i, count: M256i): M256i {.importc: "_mm256_srlv_epi32".}

func mm256_srlv_epi64*(a: M256i, count: M256i): M256i {.importc: "_mm256_srlv_epi64".}

func mm256_stream_load_si256*(p: pointer): M256i {.importc: "_mm256_stream_load_si256".}

func mm256_sub_epi16*(a, b: M256i): M256i {.importc: "_mm256_sub_epi16".}

func mm256_sub_epi32*(a, b: M256i): M256i {.importc: "_mm256_sub_epi32".}

func mm256_sub_epi64*(a, b: M256i): M256i {.importc: "_mm256_sub_epi64".}

func mm256_sub_epi8*(a, b: M256i): M256i {.importc: "_mm256_sub_epi8".}

func mm256_subs_epi16*(a, b: M256i): M256i {.importc: "_mm256_subs_epi16".}

func mm256_subs_epi8*(a, b: M256i): M256i {.importc: "_mm256_subs_epi8".}

func mm256_subs_epu16*(a, b: M256i): M256i {.importc: "_mm256_subs_epu16".}

func mm256_subs_epu8*(a, b: M256i): M256i {.importc: "_mm256_subs_epu8".}

func mm256_unpackhi_epi16*(a, b: M256i): M256i {.importc: "_mm256_unpackhi_epi16".}

func mm256_unpackhi_epi32*(a, b: M256i): M256i {.importc: "_mm256_unpackhi_epi32".}

func mm256_unpackhi_epi64*(a, b: M256i): M256i {.importc: "_mm256_unpackhi_epi64".}

func mm256_unpackhi_epi8*(a, b: M256i): M256i {.importc: "_mm256_unpackhi_epi8".}

func mm256_unpacklo_epi16*(a, b: M256i): M256i {.importc: "_mm256_unpacklo_epi16".}

func mm256_unpacklo_epi32*(a, b: M256i): M256i {.importc: "_mm256_unpacklo_epi32".}

func mm256_unpacklo_epi64*(a, b: M256i): M256i {.importc: "_mm256_unpacklo_epi64".}

func mm256_unpacklo_epi8*(a, b: M256i): M256i {.importc: "_mm256_unpacklo_epi8".}

func mm256_xor_si256*(a, b: M256i): M256i {.importc: "_mm256_xor_si256".}

{.pop.}
