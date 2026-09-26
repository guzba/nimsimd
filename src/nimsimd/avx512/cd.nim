import f

export f

{.push header: "immintrin.h".}

# Conflict detection - 512-bit

func mm512_conflict_epi32*(a: M512i): M512i {.importc: "_mm512_conflict_epi32".}

func mm512_mask_conflict_epi32*(src: M512i, k: Mmask16, a: M512i): M512i {.importc: "_mm512_mask_conflict_epi32".}

func mm512_maskz_conflict_epi32*(k: Mmask16, a: M512i): M512i {.importc: "_mm512_maskz_conflict_epi32".}

func mm512_conflict_epi64*(a: M512i): M512i {.importc: "_mm512_conflict_epi64".}

func mm512_mask_conflict_epi64*(src: M512i, k: Mmask8, a: M512i): M512i {.importc: "_mm512_mask_conflict_epi64".}

func mm512_maskz_conflict_epi64*(k: Mmask8, a: M512i): M512i {.importc: "_mm512_maskz_conflict_epi64".}

# Leading zero count - 512-bit

func mm512_lzcnt_epi32*(a: M512i): M512i {.importc: "_mm512_lzcnt_epi32".}

func mm512_mask_lzcnt_epi32*(src: M512i, k: Mmask16, a: M512i): M512i {.importc: "_mm512_mask_lzcnt_epi32".}

func mm512_maskz_lzcnt_epi32*(k: Mmask16, a: M512i): M512i {.importc: "_mm512_maskz_lzcnt_epi32".}

func mm512_lzcnt_epi64*(a: M512i): M512i {.importc: "_mm512_lzcnt_epi64".}

func mm512_mask_lzcnt_epi64*(src: M512i, k: Mmask8, a: M512i): M512i {.importc: "_mm512_mask_lzcnt_epi64".}

func mm512_maskz_lzcnt_epi64*(k: Mmask8, a: M512i): M512i {.importc: "_mm512_maskz_lzcnt_epi64".}

# Broadcast mask to vector

func mm512_broadcastmb_epi64*(k: Mmask8): M512i {.importc: "_mm512_broadcastmb_epi64".}

func mm512_broadcastmw_epi32*(k: Mmask16): M512i {.importc: "_mm512_broadcastmw_epi32".}

{.pop.}
