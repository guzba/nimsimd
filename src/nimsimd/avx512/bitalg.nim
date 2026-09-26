import bw

export bw

{.push header: "immintrin.h".}

# Population count - 8-bit

func mm512_popcnt_epi8*(a: M512i): M512i {.importc: "_mm512_popcnt_epi8".}

func mm512_mask_popcnt_epi8*(src: M512i, k: Mmask64, a: M512i): M512i {.importc: "_mm512_mask_popcnt_epi8".}

func mm512_maskz_popcnt_epi8*(k: Mmask64, a: M512i): M512i {.importc: "_mm512_maskz_popcnt_epi8".}

# Population count - 16-bit

func mm512_popcnt_epi16*(a: M512i): M512i {.importc: "_mm512_popcnt_epi16".}

func mm512_mask_popcnt_epi16*(src: M512i, k: Mmask32, a: M512i): M512i {.importc: "_mm512_mask_popcnt_epi16".}

func mm512_maskz_popcnt_epi16*(k: Mmask32, a: M512i): M512i {.importc: "_mm512_maskz_popcnt_epi16".}

# VPSHUFBITQMB - Bit shuffle to mask

func mm512_bitshuffle_epi64_mask*(b, c: M512i): Mmask64 {.importc: "_mm512_bitshuffle_epi64_mask".}

func mm512_mask_bitshuffle_epi64_mask*(k: Mmask64, b, c: M512i): Mmask64 {.importc: "_mm512_mask_bitshuffle_epi64_mask".}

{.pop.}
