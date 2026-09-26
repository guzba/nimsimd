import bw

export bw

{.push header: "immintrin.h".}

# GF2P8AFFINEINV - Galois field affine transformation with inverse
# Computes inverse in GF(2^8) then applies affine transformation

func mm512_gf2p8affineinv_epi64_epi8*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_gf2p8affineinv_epi64_epi8".}

func mm512_mask_gf2p8affineinv_epi64_epi8*(src: M512i, k: Mmask64, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_gf2p8affineinv_epi64_epi8".}

func mm512_maskz_gf2p8affineinv_epi64_epi8*(k: Mmask64, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_gf2p8affineinv_epi64_epi8".}

func mm256_gf2p8affineinv_epi64_epi8*(a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_gf2p8affineinv_epi64_epi8".}

func mm256_mask_gf2p8affineinv_epi64_epi8*(src: M256i, k: Mmask32, a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_gf2p8affineinv_epi64_epi8".}

func mm256_maskz_gf2p8affineinv_epi64_epi8*(k: Mmask32, a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_gf2p8affineinv_epi64_epi8".}

func mm_gf2p8affineinv_epi64_epi8*(a, b: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_gf2p8affineinv_epi64_epi8".}

func mm_mask_gf2p8affineinv_epi64_epi8*(src: M128i, k: Mmask16, a, b: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_gf2p8affineinv_epi64_epi8".}

func mm_maskz_gf2p8affineinv_epi64_epi8*(k: Mmask16, a, b: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_gf2p8affineinv_epi64_epi8".}

# GF2P8AFFINE - Galois field affine transformation
# Applies affine transformation in GF(2^8)

func mm512_gf2p8affine_epi64_epi8*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_gf2p8affine_epi64_epi8".}

func mm512_mask_gf2p8affine_epi64_epi8*(src: M512i, k: Mmask64, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_gf2p8affine_epi64_epi8".}

func mm512_maskz_gf2p8affine_epi64_epi8*(k: Mmask64, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_gf2p8affine_epi64_epi8".}

func mm256_gf2p8affine_epi64_epi8*(a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_gf2p8affine_epi64_epi8".}

func mm256_mask_gf2p8affine_epi64_epi8*(src: M256i, k: Mmask32, a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_gf2p8affine_epi64_epi8".}

func mm256_maskz_gf2p8affine_epi64_epi8*(k: Mmask32, a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_gf2p8affine_epi64_epi8".}

func mm_gf2p8affine_epi64_epi8*(a, b: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_gf2p8affine_epi64_epi8".}

func mm_mask_gf2p8affine_epi64_epi8*(src: M128i, k: Mmask16, a, b: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_gf2p8affine_epi64_epi8".}

func mm_maskz_gf2p8affine_epi64_epi8*(k: Mmask16, a, b: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_gf2p8affine_epi64_epi8".}

# GF2P8MUL - Galois field multiplication
# Multiplies bytes in GF(2^8) with polynomial 0x11B

func mm512_gf2p8mul_epi8*(a, b: M512i): M512i {.importc: "_mm512_gf2p8mul_epi8".}

func mm512_mask_gf2p8mul_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_gf2p8mul_epi8".}

func mm512_maskz_gf2p8mul_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_gf2p8mul_epi8".}

func mm256_gf2p8mul_epi8*(a, b: M256i): M256i {.importc: "_mm256_gf2p8mul_epi8".}

func mm256_mask_gf2p8mul_epi8*(src: M256i, k: Mmask32, a, b: M256i): M256i {.importc: "_mm256_mask_gf2p8mul_epi8".}

func mm256_maskz_gf2p8mul_epi8*(k: Mmask32, a, b: M256i): M256i {.importc: "_mm256_maskz_gf2p8mul_epi8".}

func mm_gf2p8mul_epi8*(a, b: M128i): M128i {.importc: "_mm_gf2p8mul_epi8".}

func mm_mask_gf2p8mul_epi8*(src: M128i, k: Mmask16, a, b: M128i): M128i {.importc: "_mm_mask_gf2p8mul_epi8".}

func mm_maskz_gf2p8mul_epi8*(k: Mmask16, a, b: M128i): M128i {.importc: "_mm_maskz_gf2p8mul_epi8".}

{.pop.}
