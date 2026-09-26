import bw

export bw

{.push header: "immintrin.h".}

# AES Encode (single round)

func mm512_aesenc_epi128*(a, roundKey: M512i): M512i {.importc: "_mm512_aesenc_epi128".}

func mm256_aesenc_epi128*(a, roundKey: M256i): M256i {.importc: "_mm256_aesenc_epi128".}

# AES Encode Last (final round)

func mm512_aesenclast_epi128*(a, roundKey: M512i): M512i {.importc: "_mm512_aesenclast_epi128".}

func mm256_aesenclast_epi128*(a, roundKey: M256i): M256i {.importc: "_mm256_aesenclast_epi128".}

# AES Decode (single round)

func mm512_aesdec_epi128*(a, roundKey: M512i): M512i {.importc: "_mm512_aesdec_epi128".}

func mm256_aesdec_epi128*(a, roundKey: M256i): M256i {.importc: "_mm256_aesdec_epi128".}

# AES Decode Last (final round)

func mm512_aesdeclast_epi128*(a, roundKey: M512i): M512i {.importc: "_mm512_aesdeclast_epi128".}

func mm256_aesdeclast_epi128*(a, roundKey: M256i): M256i {.importc: "_mm256_aesdeclast_epi128".}

{.pop.}
