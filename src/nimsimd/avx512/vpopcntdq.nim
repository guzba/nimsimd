import f

export f

{.push header: "immintrin.h".}

# Population count - 32-bit

func mm512_popcnt_epi32*(a: M512i): M512i {.importc: "_mm512_popcnt_epi32".}

func mm512_mask_popcnt_epi32*(src: M512i, k: Mmask16, a: M512i): M512i {.importc: "_mm512_mask_popcnt_epi32".}

func mm512_maskz_popcnt_epi32*(k: Mmask16, a: M512i): M512i {.importc: "_mm512_maskz_popcnt_epi32".}

# Population count - 64-bit

func mm512_popcnt_epi64*(a: M512i): M512i {.importc: "_mm512_popcnt_epi64".}

func mm512_mask_popcnt_epi64*(src: M512i, k: Mmask8, a: M512i): M512i {.importc: "_mm512_mask_popcnt_epi64".}

func mm512_maskz_popcnt_epi64*(k: Mmask8, a: M512i): M512i {.importc: "_mm512_maskz_popcnt_epi64".}

{.pop.}
