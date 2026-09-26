import bw

export bw

{.push header: "immintrin.h".}

# Permute bytes

func mm512_permutexvar_epi8*(idx, a: M512i): M512i {.importc: "_mm512_permutexvar_epi8".}

func mm512_mask_permutexvar_epi8*(src: M512i, k: Mmask64, idx, a: M512i): M512i {.importc: "_mm512_mask_permutexvar_epi8".}

func mm512_maskz_permutexvar_epi8*(k: Mmask64, idx, a: M512i): M512i {.importc: "_mm512_maskz_permutexvar_epi8".}

# Permute bytes from two sources

func mm512_permutex2var_epi8*(a, idx, b: M512i): M512i {.importc: "_mm512_permutex2var_epi8".}

func mm512_mask_permutex2var_epi8*(a: M512i, k: Mmask64, idx, b: M512i): M512i {.importc: "_mm512_mask_permutex2var_epi8".}

func mm512_mask2_permutex2var_epi8*(a, idx: M512i, k: Mmask64, b: M512i): M512i {.importc: "_mm512_mask2_permutex2var_epi8".}

func mm512_maskz_permutex2var_epi8*(k: Mmask64, a, idx, b: M512i): M512i {.importc: "_mm512_maskz_permutex2var_epi8".}

# Multishift - extract 8 bytes from each 64-bit element

func mm512_multishift_epi64_epi8*(a, b: M512i): M512i {.importc: "_mm512_multishift_epi64_epi8".}

func mm512_mask_multishift_epi64_epi8*(src: M512i, k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_mask_multishift_epi64_epi8".}

func mm512_maskz_multishift_epi64_epi8*(k: Mmask64, a, b: M512i): M512i {.importc: "_mm512_maskz_multishift_epi64_epi8".}

{.pop.}
