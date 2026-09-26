import f

export f

{.push header: "immintrin.h".}

# Arithmetic - 8-bit

func mm512_add_epi8*(a, b: M512i): M512i {.importc: "_mm512_add_epi8".}

func mm512_mask_add_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_add_epi8".}

func mm512_maskz_add_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_add_epi8".}

func mm512_sub_epi8*(a, b: M512i): M512i {.importc: "_mm512_sub_epi8".}

func mm512_mask_sub_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_sub_epi8".}

func mm512_maskz_sub_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_sub_epi8".}

func mm512_adds_epi8*(a, b: M512i): M512i {.importc: "_mm512_adds_epi8".}

func mm512_mask_adds_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_adds_epi8".}

func mm512_maskz_adds_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_adds_epi8".}

func mm512_adds_epu8*(a, b: M512i): M512i {.importc: "_mm512_adds_epu8".}

func mm512_mask_adds_epu8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_adds_epu8".}

func mm512_maskz_adds_epu8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_adds_epu8".}

func mm512_subs_epi8*(a, b: M512i): M512i {.importc: "_mm512_subs_epi8".}

func mm512_mask_subs_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_subs_epi8".}

func mm512_maskz_subs_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_subs_epi8".}

func mm512_subs_epu8*(a, b: M512i): M512i {.importc: "_mm512_subs_epu8".}

func mm512_mask_subs_epu8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_subs_epu8".}

func mm512_maskz_subs_epu8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_subs_epu8".}

# Arithmetic - 16-bit

func mm512_add_epi16*(a, b: M512i): M512i {.importc: "_mm512_add_epi16".}

func mm512_mask_add_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_add_epi16".}

func mm512_maskz_add_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_add_epi16".}

func mm512_sub_epi16*(a, b: M512i): M512i {.importc: "_mm512_sub_epi16".}

func mm512_mask_sub_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_sub_epi16".}

func mm512_maskz_sub_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_sub_epi16".}

func mm512_adds_epi16*(a, b: M512i): M512i {.importc: "_mm512_adds_epi16".}

func mm512_mask_adds_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_adds_epi16".}

func mm512_maskz_adds_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_adds_epi16".}

func mm512_adds_epu16*(a, b: M512i): M512i {.importc: "_mm512_adds_epu16".}

func mm512_mask_adds_epu16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_adds_epu16".}

func mm512_maskz_adds_epu16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_adds_epu16".}

func mm512_subs_epi16*(a, b: M512i): M512i {.importc: "_mm512_subs_epi16".}

func mm512_mask_subs_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_subs_epi16".}

func mm512_maskz_subs_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_subs_epi16".}

func mm512_subs_epu16*(a, b: M512i): M512i {.importc: "_mm512_subs_epu16".}

func mm512_mask_subs_epu16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_subs_epu16".}

func mm512_maskz_subs_epu16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_subs_epu16".}

func mm512_mullo_epi16*(a, b: M512i): M512i {.importc: "_mm512_mullo_epi16".}

func mm512_mask_mullo_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_mullo_epi16".}

func mm512_maskz_mullo_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_mullo_epi16".}

func mm512_mulhi_epi16*(a, b: M512i): M512i {.importc: "_mm512_mulhi_epi16".}

func mm512_mask_mulhi_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_mulhi_epi16".}

func mm512_maskz_mulhi_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_mulhi_epi16".}

func mm512_mulhi_epu16*(a, b: M512i): M512i {.importc: "_mm512_mulhi_epu16".}

func mm512_mask_mulhi_epu16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_mulhi_epu16".}

func mm512_maskz_mulhi_epu16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_mulhi_epu16".}

func mm512_mulhrs_epi16*(a, b: M512i): M512i {.importc: "_mm512_mulhrs_epi16".}

func mm512_mask_mulhrs_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_mulhrs_epi16".}

func mm512_maskz_mulhrs_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_mulhrs_epi16".}

# Average

func mm512_avg_epu8*(a, b: M512i): M512i {.importc: "_mm512_avg_epu8".}

func mm512_mask_avg_epu8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_avg_epu8".}

func mm512_maskz_avg_epu8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_avg_epu8".}

func mm512_avg_epu16*(a, b: M512i): M512i {.importc: "_mm512_avg_epu16".}

func mm512_mask_avg_epu16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_avg_epu16".}

func mm512_maskz_avg_epu16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_avg_epu16".}

# Min/Max - 8-bit

func mm512_min_epi8*(a, b: M512i): M512i {.importc: "_mm512_min_epi8".}

func mm512_mask_min_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_min_epi8".}

func mm512_maskz_min_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_min_epi8".}

func mm512_min_epu8*(a, b: M512i): M512i {.importc: "_mm512_min_epu8".}

func mm512_mask_min_epu8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_min_epu8".}

func mm512_maskz_min_epu8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_min_epu8".}

func mm512_max_epi8*(a, b: M512i): M512i {.importc: "_mm512_max_epi8".}

func mm512_mask_max_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_max_epi8".}

func mm512_maskz_max_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_max_epi8".}

func mm512_max_epu8*(a, b: M512i): M512i {.importc: "_mm512_max_epu8".}

func mm512_mask_max_epu8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_max_epu8".}

func mm512_maskz_max_epu8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_max_epu8".}

# Min/Max - 16-bit

func mm512_min_epi16*(a, b: M512i): M512i {.importc: "_mm512_min_epi16".}

func mm512_mask_min_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_min_epi16".}

func mm512_maskz_min_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_min_epi16".}

func mm512_min_epu16*(a, b: M512i): M512i {.importc: "_mm512_min_epu16".}

func mm512_mask_min_epu16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_min_epu16".}

func mm512_maskz_min_epu16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_min_epu16".}

func mm512_max_epi16*(a, b: M512i): M512i {.importc: "_mm512_max_epi16".}

func mm512_mask_max_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_max_epi16".}

func mm512_maskz_max_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_max_epi16".}

func mm512_max_epu16*(a, b: M512i): M512i {.importc: "_mm512_max_epu16".}

func mm512_mask_max_epu16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_max_epu16".}

func mm512_maskz_max_epu16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_max_epu16".}

# Abs

func mm512_abs_epi8*(a: M512i): M512i {.importc: "_mm512_abs_epi8".}

func mm512_mask_abs_epi8*(src: M512i, k: Mmask64, a: M512i): M512i {.importc: "_mm512_mask_abs_epi8".}

func mm512_maskz_abs_epi8*(k: Mmask64, a: M512i): M512i {.importc: "_mm512_maskz_abs_epi8".}

func mm512_abs_epi16*(a: M512i): M512i {.importc: "_mm512_abs_epi16".}

func mm512_mask_abs_epi16*(src: M512i, k: Mmask32, a: M512i): M512i {.importc: "_mm512_mask_abs_epi16".}

func mm512_maskz_abs_epi16*(k: Mmask32, a: M512i): M512i {.importc: "_mm512_maskz_abs_epi16".}

# Compare - 8-bit

func mm512_cmpeq_epi8_mask*(a, b: M512i): Mmask64 {.importc: "_mm512_cmpeq_epi8_mask".}

func mm512_mask_cmpeq_epi8_mask*(k: Mmask64, a, b: M512i): Mmask64 {.importc: "_mm512_mask_cmpeq_epi8_mask".}

func mm512_cmpgt_epi8_mask*(a, b: M512i): Mmask64 {.importc: "_mm512_cmpgt_epi8_mask".}

func mm512_mask_cmpgt_epi8_mask*(k: Mmask64, a, b: M512i): Mmask64 {.importc: "_mm512_mask_cmpgt_epi8_mask".}

func mm512_cmplt_epi8_mask*(a, b: M512i): Mmask64 {.importc: "_mm512_cmplt_epi8_mask".}

func mm512_mask_cmplt_epi8_mask*(k: Mmask64, a, b: M512i): Mmask64 {.importc: "_mm512_mask_cmplt_epi8_mask".}

func mm512_cmple_epi8_mask*(a, b: M512i): Mmask64 {.importc: "_mm512_cmple_epi8_mask".}

func mm512_mask_cmple_epi8_mask*(k: Mmask64, a, b: M512i): Mmask64 {.importc: "_mm512_mask_cmple_epi8_mask".}

func mm512_cmpge_epi8_mask*(a, b: M512i): Mmask64 {.importc: "_mm512_cmpge_epi8_mask".}

func mm512_mask_cmpge_epi8_mask*(k: Mmask64, a, b: M512i): Mmask64 {.importc: "_mm512_mask_cmpge_epi8_mask".}

func mm512_cmpneq_epi8_mask*(a, b: M512i): Mmask64 {.importc: "_mm512_cmpneq_epi8_mask".}

func mm512_mask_cmpneq_epi8_mask*(k: Mmask64, a, b: M512i): Mmask64 {.importc: "_mm512_mask_cmpneq_epi8_mask".}

# Compare - 16-bit

func mm512_cmpeq_epi16_mask*(a, b: M512i): Mmask32 {.importc: "_mm512_cmpeq_epi16_mask".}

func mm512_mask_cmpeq_epi16_mask*(k: Mmask32, a, b: M512i): Mmask32 {.importc: "_mm512_mask_cmpeq_epi16_mask".}

func mm512_cmpgt_epi16_mask*(a, b: M512i): Mmask32 {.importc: "_mm512_cmpgt_epi16_mask".}

func mm512_mask_cmpgt_epi16_mask*(k: Mmask32, a, b: M512i): Mmask32 {.importc: "_mm512_mask_cmpgt_epi16_mask".}

func mm512_cmplt_epi16_mask*(a, b: M512i): Mmask32 {.importc: "_mm512_cmplt_epi16_mask".}

func mm512_mask_cmplt_epi16_mask*(k: Mmask32, a, b: M512i): Mmask32 {.importc: "_mm512_mask_cmplt_epi16_mask".}

func mm512_cmple_epi16_mask*(a, b: M512i): Mmask32 {.importc: "_mm512_cmple_epi16_mask".}

func mm512_mask_cmple_epi16_mask*(k: Mmask32, a, b: M512i): Mmask32 {.importc: "_mm512_mask_cmple_epi16_mask".}

func mm512_cmpge_epi16_mask*(a, b: M512i): Mmask32 {.importc: "_mm512_cmpge_epi16_mask".}

func mm512_mask_cmpge_epi16_mask*(k: Mmask32, a, b: M512i): Mmask32 {.importc: "_mm512_mask_cmpge_epi16_mask".}

func mm512_cmpneq_epi16_mask*(a, b: M512i): Mmask32 {.importc: "_mm512_cmpneq_epi16_mask".}

func mm512_mask_cmpneq_epi16_mask*(k: Mmask32, a, b: M512i): Mmask32 {.importc: "_mm512_mask_cmpneq_epi16_mask".}

# Shift - 16-bit

func mm512_slli_epi16*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_slli_epi16".}

func mm512_mask_slli_epi16*(src: M512i, k: Mmask32, a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_slli_epi16".}

func mm512_maskz_slli_epi16*(k: Mmask32, a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_slli_epi16".}

func mm512_srli_epi16*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_srli_epi16".}

func mm512_mask_srli_epi16*(src: M512i, k: Mmask32, a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_srli_epi16".}

func mm512_maskz_srli_epi16*(k: Mmask32, a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_srli_epi16".}

func mm512_srai_epi16*(a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_srai_epi16".}

func mm512_mask_srai_epi16*(src: M512i, k: Mmask32, a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_srai_epi16".}

func mm512_maskz_srai_epi16*(k: Mmask32, a: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_srai_epi16".}

func mm512_sll_epi16*(a: M512i, count: M128i): M512i {.importc: "_mm512_sll_epi16".}

func mm512_mask_sll_epi16*(src: M512i, k: Mmask32, a: M512i, count: M128i): M512i {.importc: "_mm512_mask_sll_epi16".}

func mm512_maskz_sll_epi16*(k: Mmask32, a: M512i, count: M128i): M512i {.importc: "_mm512_maskz_sll_epi16".}

func mm512_srl_epi16*(a: M512i, count: M128i): M512i {.importc: "_mm512_srl_epi16".}

func mm512_mask_srl_epi16*(src: M512i, k: Mmask32, a: M512i, count: M128i): M512i {.importc: "_mm512_mask_srl_epi16".}

func mm512_maskz_srl_epi16*(k: Mmask32, a: M512i, count: M128i): M512i {.importc: "_mm512_maskz_srl_epi16".}

func mm512_sra_epi16*(a: M512i, count: M128i): M512i {.importc: "_mm512_sra_epi16".}

func mm512_mask_sra_epi16*(src: M512i, k: Mmask32, a: M512i, count: M128i): M512i {.importc: "_mm512_mask_sra_epi16".}

func mm512_maskz_sra_epi16*(k: Mmask32, a: M512i, count: M128i): M512i {.importc: "_mm512_maskz_sra_epi16".}

func mm512_sllv_epi16*(a, count: M512i): M512i {.importc: "_mm512_sllv_epi16".}

func mm512_mask_sllv_epi16*(src: M512i, k: Mmask32, a, count: M512i): M512i {.importc: "_mm512_mask_sllv_epi16".}

func mm512_maskz_sllv_epi16*(k: Mmask32, a, count: M512i): M512i {.importc: "_mm512_maskz_sllv_epi16".}

func mm512_srlv_epi16*(a, count: M512i): M512i {.importc: "_mm512_srlv_epi16".}

func mm512_mask_srlv_epi16*(src: M512i, k: Mmask32, a, count: M512i): M512i {.importc: "_mm512_mask_srlv_epi16".}

func mm512_maskz_srlv_epi16*(k: Mmask32, a, count: M512i): M512i {.importc: "_mm512_maskz_srlv_epi16".}

func mm512_srav_epi16*(a, count: M512i): M512i {.importc: "_mm512_srav_epi16".}

func mm512_mask_srav_epi16*(src: M512i, k: Mmask32, a, count: M512i): M512i {.importc: "_mm512_mask_srav_epi16".}

func mm512_maskz_srav_epi16*(k: Mmask32, a, count: M512i): M512i {.importc: "_mm512_maskz_srav_epi16".}

# Pack

func mm512_packs_epi16*(a, b: M512i): M512i {.importc: "_mm512_packs_epi16".}

func mm512_mask_packs_epi16*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_packs_epi16".}

func mm512_maskz_packs_epi16*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_packs_epi16".}

func mm512_packs_epi32*(a, b: M512i): M512i {.importc: "_mm512_packs_epi32".}

func mm512_mask_packs_epi32*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_packs_epi32".}

func mm512_maskz_packs_epi32*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_packs_epi32".}

func mm512_packus_epi16*(a, b: M512i): M512i {.importc: "_mm512_packus_epi16".}

func mm512_mask_packus_epi16*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_packus_epi16".}

func mm512_maskz_packus_epi16*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_packus_epi16".}

func mm512_packus_epi32*(a, b: M512i): M512i {.importc: "_mm512_packus_epi32".}

func mm512_mask_packus_epi32*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_packus_epi32".}

func mm512_maskz_packus_epi32*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_packus_epi32".}

# Unpack

func mm512_unpackhi_epi8*(a, b: M512i): M512i {.importc: "_mm512_unpackhi_epi8".}

func mm512_mask_unpackhi_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_unpackhi_epi8".}

func mm512_maskz_unpackhi_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_unpackhi_epi8".}

func mm512_unpacklo_epi8*(a, b: M512i): M512i {.importc: "_mm512_unpacklo_epi8".}

func mm512_mask_unpacklo_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_unpacklo_epi8".}

func mm512_maskz_unpacklo_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_unpacklo_epi8".}

func mm512_unpackhi_epi16*(a, b: M512i): M512i {.importc: "_mm512_unpackhi_epi16".}

func mm512_mask_unpackhi_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_unpackhi_epi16".}

func mm512_maskz_unpackhi_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_unpackhi_epi16".}

func mm512_unpacklo_epi16*(a, b: M512i): M512i {.importc: "_mm512_unpacklo_epi16".}

func mm512_mask_unpacklo_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_unpacklo_epi16".}

func mm512_maskz_unpacklo_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_unpacklo_epi16".}

# Shuffle bytes

func mm512_shuffle_epi8*(a, b: M512i): M512i {.importc: "_mm512_shuffle_epi8".}

func mm512_mask_shuffle_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_shuffle_epi8".}

func mm512_maskz_shuffle_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_shuffle_epi8".}

# Permute

func mm512_permutexvar_epi16*(idx, a: M512i): M512i {.importc: "_mm512_permutexvar_epi16".}

func mm512_mask_permutexvar_epi16*(src: M512i, k: Mmask32, idx, a: M512i): M512i {.importc: "_mm512_mask_permutexvar_epi16".}

func mm512_maskz_permutexvar_epi16*(k: Mmask32, idx, a: M512i): M512i {.importc: "_mm512_maskz_permutexvar_epi16".}

func mm512_permutex2var_epi16*(a, idx, b: M512i): M512i {.importc: "_mm512_permutex2var_epi16".}

func mm512_mask_permutex2var_epi16*(a: M512i, k: Mmask32, idx, b: M512i): M512i {.importc: "_mm512_mask_permutex2var_epi16".}

func mm512_maskz_permutex2var_epi16*(k: Mmask32, a, idx, b: M512i): M512i {.importc: "_mm512_maskz_permutex2var_epi16".}

# Conversion

func mm512_cvtepi8_epi16*(a: M256i): M512i {.importc: "_mm512_cvtepi8_epi16".}

func mm512_mask_cvtepi8_epi16*(src: M512i, k: Mmask32, a: M256i): M512i {.importc: "_mm512_mask_cvtepi8_epi16".}

func mm512_maskz_cvtepi8_epi16*(k: Mmask32, a: M256i): M512i {.importc: "_mm512_maskz_cvtepi8_epi16".}

func mm512_cvtepu8_epi16*(a: M256i): M512i {.importc: "_mm512_cvtepu8_epi16".}

func mm512_mask_cvtepu8_epi16*(src: M512i, k: Mmask32, a: M256i): M512i {.importc: "_mm512_mask_cvtepu8_epi16".}

func mm512_maskz_cvtepu8_epi16*(k: Mmask32, a: M256i): M512i {.importc: "_mm512_maskz_cvtepu8_epi16".}

func mm512_cvtepi16_epi8*(a: M512i): M256i {.importc: "_mm512_cvtepi16_epi8".}

func mm512_mask_cvtepi16_epi8*(src: M256i, k: Mmask32, a: M512i): M256i {.importc: "_mm512_mask_cvtepi16_epi8".}

func mm512_maskz_cvtepi16_epi8*(k: Mmask32, a: M512i): M256i {.importc: "_mm512_maskz_cvtepi16_epi8".}

func mm512_cvtsepi16_epi8*(a: M512i): M256i {.importc: "_mm512_cvtsepi16_epi8".}

func mm512_mask_cvtsepi16_epi8*(src: M256i, k: Mmask32, a: M512i): M256i {.importc: "_mm512_mask_cvtsepi16_epi8".}

func mm512_maskz_cvtsepi16_epi8*(k: Mmask32, a: M512i): M256i {.importc: "_mm512_maskz_cvtsepi16_epi8".}

func mm512_cvtusepi16_epi8*(a: M512i): M256i {.importc: "_mm512_cvtusepi16_epi8".}

func mm512_mask_cvtusepi16_epi8*(src: M256i, k: Mmask32, a: M512i): M256i {.importc: "_mm512_mask_cvtusepi16_epi8".}

func mm512_maskz_cvtusepi16_epi8*(k: Mmask32, a: M512i): M256i {.importc: "_mm512_maskz_cvtusepi16_epi8".}

# Blend

func mm512_mask_blend_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_blend_epi8".}

func mm512_mask_blend_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_blend_epi16".}

# Set

func mm512_set1_epi8*(a: int8 | uint8): M512i {.importc: "_mm512_set1_epi8".}

func mm512_set1_epi16*(a: int16 | uint16): M512i {.importc: "_mm512_set1_epi16".}

# Load/Store

func mm512_loadu_epi8*(mem_addr: pointer): M512i {.importc: "_mm512_loadu_epi8".}

func mm512_mask_loadu_epi8*(src: M512i, k: Mmask64, mem_addr: pointer): M512i {.importc: "_mm512_mask_loadu_epi8".}

func mm512_maskz_loadu_epi8*(k: Mmask64, mem_addr: pointer): M512i {.importc: "_mm512_maskz_loadu_epi8".}

func mm512_loadu_epi16*(mem_addr: pointer): M512i {.importc: "_mm512_loadu_epi16".}

func mm512_mask_loadu_epi16*(src: M512i, k: Mmask32, mem_addr: pointer): M512i {.importc: "_mm512_mask_loadu_epi16".}

func mm512_maskz_loadu_epi16*(k: Mmask32, mem_addr: pointer): M512i {.importc: "_mm512_maskz_loadu_epi16".}

func mm512_storeu_epi8*(mem_addr: pointer, a: M512i) {.importc: "_mm512_storeu_epi8".}

func mm512_mask_storeu_epi8*(mem_addr: pointer, k: Mmask64, a: M512i) {.importc: "_mm512_mask_storeu_epi8".}

func mm512_storeu_epi16*(mem_addr: pointer, a: M512i) {.importc: "_mm512_storeu_epi16".}

func mm512_mask_storeu_epi16*(mem_addr: pointer, k: Mmask32, a: M512i) {.importc: "_mm512_mask_storeu_epi16".}

# Move mask

func mm512_movepi8_mask*(a: M512i): Mmask64 {.importc: "_mm512_movepi8_mask".}

func mm512_movepi16_mask*(a: M512i): Mmask32 {.importc: "_mm512_movepi16_mask".}

func mm512_movm_epi8*(k: Mmask64): M512i {.importc: "_mm512_movm_epi8".}

func mm512_movm_epi16*(k: Mmask32): M512i {.importc: "_mm512_movm_epi16".}

# Broadcast

func mm512_broadcastb_epi8*(a: M128i): M512i {.importc: "_mm512_broadcastb_epi8".}

func mm512_mask_broadcastb_epi8*(src: M512i, k: Mmask64, a: M128i): M512i {.importc: "_mm512_mask_broadcastb_epi8".}

func mm512_maskz_broadcastb_epi8*(k: Mmask64, a: M128i): M512i {.importc: "_mm512_maskz_broadcastb_epi8".}

func mm512_broadcastw_epi16*(a: M128i): M512i {.importc: "_mm512_broadcastw_epi16".}

func mm512_mask_broadcastw_epi16*(src: M512i, k: Mmask32, a: M128i): M512i {.importc: "_mm512_mask_broadcastw_epi16".}

func mm512_maskz_broadcastw_epi16*(k: Mmask32, a: M128i): M512i {.importc: "_mm512_maskz_broadcastw_epi16".}

# SAD

func mm512_sad_epu8*(a, b: M512i): M512i {.importc: "_mm512_sad_epu8".}

# DBPSADBW

func mm512_dbsadbw*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_dbsadbw".}

func mm512_mask_dbsadbw*(src: M512i, k: Mmask32, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_dbsadbw".}

func mm512_maskz_dbsadbw*(k: Mmask32, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_dbsadbw".}

# MADDUBS

func mm512_maddubs_epi16*(a, b: M512i): M512i {.importc: "_mm512_maddubs_epi16".}

func mm512_mask_maddubs_epi16*(src: M512i, k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_mask_maddubs_epi16".}

func mm512_maskz_maddubs_epi16*(k: Mmask32, a, b: M512i): M512i {.importc: "_mm512_maskz_maddubs_epi16".}

# MADD

func mm512_madd_epi16*(a, b: M512i): M512i {.importc: "_mm512_madd_epi16".}

func mm512_mask_madd_epi16*(src: M512i, k: Mmask16, a, b: M512i): M512i {.importc: "_mm512_mask_madd_epi16".}

func mm512_maskz_madd_epi16*(k: Mmask16, a, b: M512i): M512i {.importc: "_mm512_maskz_madd_epi16".}

# Alignr for bytes

func mm512_alignr_epi8*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_alignr_epi8".}

func mm512_mask_alignr_epi8*(src: M512i, k: Mmask64, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_alignr_epi8".}

func mm512_maskz_alignr_epi8*(k: Mmask64, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_alignr_epi8".}

# Test mask

func mm512_test_epi8_mask*(a, b: M512i): Mmask64 {.importc: "_mm512_test_epi8_mask".}

func mm512_mask_test_epi8_mask*(k: Mmask64, a, b: M512i): Mmask64 {.importc: "_mm512_mask_test_epi8_mask".}

func mm512_test_epi16_mask*(a, b: M512i): Mmask32 {.importc: "_mm512_test_epi16_mask".}

func mm512_mask_test_epi16_mask*(k: Mmask32, a, b: M512i): Mmask32 {.importc: "_mm512_mask_test_epi16_mask".}

func mm512_testn_epi8_mask*(a, b: M512i): Mmask64 {.importc: "_mm512_testn_epi8_mask".}

func mm512_mask_testn_epi8_mask*(k: Mmask64, a, b: M512i): Mmask64 {.importc: "_mm512_mask_testn_epi8_mask".}

func mm512_testn_epi16_mask*(a, b: M512i): Mmask32 {.importc: "_mm512_testn_epi16_mask".}

func mm512_mask_testn_epi16_mask*(k: Mmask32, a, b: M512i): Mmask32 {.importc: "_mm512_mask_testn_epi16_mask".}

# Mask operations for 32-bit and 64-bit masks

func kadd_mask32*(a, b: Mmask32): Mmask32 {.importc: "_kadd_mask32".}

func kadd_mask64*(a, b: Mmask64): Mmask64 {.importc: "_kadd_mask64".}

func kand_mask32*(a, b: Mmask32): Mmask32 {.importc: "_kand_mask32".}

func kand_mask64*(a, b: Mmask64): Mmask64 {.importc: "_kand_mask64".}

func kandn_mask32*(a, b: Mmask32): Mmask32 {.importc: "_kandn_mask32".}

func kandn_mask64*(a, b: Mmask64): Mmask64 {.importc: "_kandn_mask64".}

func knot_mask32*(a: Mmask32): Mmask32 {.importc: "_knot_mask32".}

func knot_mask64*(a: Mmask64): Mmask64 {.importc: "_knot_mask64".}

func kor_mask32*(a, b: Mmask32): Mmask32 {.importc: "_kor_mask32".}

func kor_mask64*(a, b: Mmask64): Mmask64 {.importc: "_kor_mask64".}

func kxor_mask32*(a, b: Mmask32): Mmask32 {.importc: "_kxor_mask32".}

func kxor_mask64*(a, b: Mmask64): Mmask64 {.importc: "_kxor_mask64".}

func kxnor_mask32*(a, b: Mmask32): Mmask32 {.importc: "_kxnor_mask32".}

func kxnor_mask64*(a, b: Mmask64): Mmask64 {.importc: "_kxnor_mask64".}

{.pop.}
