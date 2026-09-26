import bw

export bw

{.push header: "immintrin.h".}

# Compress - 8-bit

func mm512_mask_compress_epi8*(src: M512i, k: Mmask64, a: M512i): M512i {.importc: "_mm512_mask_compress_epi8".}

func mm512_maskz_compress_epi8*(k: Mmask64, a: M512i): M512i {.importc: "_mm512_maskz_compress_epi8".}

func mm512_mask_compressstoreu_epi8*(base_addr: pointer, k: Mmask64, a: M512i) {.importc: "_mm512_mask_compressstoreu_epi8".}

# Compress - 16-bit

func mm512_mask_compress_epi16*(src: M512i, k: Mmask32, a: M512i): M512i {.importc: "_mm512_mask_compress_epi16".}

func mm512_maskz_compress_epi16*(k: Mmask32, a: M512i): M512i {.importc: "_mm512_maskz_compress_epi16".}

func mm512_mask_compressstoreu_epi16*(base_addr: pointer, k: Mmask32, a: M512i) {.importc: "_mm512_mask_compressstoreu_epi16".}

# Expand - 8-bit

func mm512_mask_expand_epi8*(src: M512i, k: Mmask64, a: M512i): M512i {.importc: "_mm512_mask_expand_epi8".}

func mm512_maskz_expand_epi8*(k: Mmask64, a: M512i): M512i {.importc: "_mm512_maskz_expand_epi8".}

func mm512_mask_expandloadu_epi8*(src: M512i, k: Mmask64, mem_addr: pointer): M512i {.importc: "_mm512_mask_expandloadu_epi8".}

func mm512_maskz_expandloadu_epi8*(k: Mmask64, mem_addr: pointer): M512i {.importc: "_mm512_maskz_expandloadu_epi8".}

# Expand - 16-bit

func mm512_mask_expand_epi16*(src: M512i, k: Mmask32, a: M512i): M512i {.importc: "_mm512_mask_expand_epi16".}

func mm512_maskz_expand_epi16*(k: Mmask32, a: M512i): M512i {.importc: "_mm512_maskz_expand_epi16".}

func mm512_mask_expandloadu_epi16*(src: M512i, k: Mmask32, mem_addr: pointer): M512i {.importc: "_mm512_mask_expandloadu_epi16".}

func mm512_maskz_expandloadu_epi16*(k: Mmask32, mem_addr: pointer): M512i {.importc: "_mm512_maskz_expandloadu_epi16".}

# SHLDV - Concatenate and Variable Shift Left - 16-bit

func mm512_shldv_epi16*(a, b, c: M512i): M512i {.importc: "_mm512_shldv_epi16".}

func mm512_mask_shldv_epi16*(a: M512i, k: Mmask32, b, c: M512i): M512i {.importc: "_mm512_mask_shldv_epi16".}

func mm512_maskz_shldv_epi16*(k: Mmask32, a, b, c: M512i): M512i {.importc: "_mm512_maskz_shldv_epi16".}

# SHLDV - Concatenate and Variable Shift Left - 32-bit

func mm512_shldv_epi32*(a, b, c: M512i): M512i {.importc: "_mm512_shldv_epi32".}

func mm512_mask_shldv_epi32*(a: M512i, k: Mmask16, b, c: M512i): M512i {.importc: "_mm512_mask_shldv_epi32".}

func mm512_maskz_shldv_epi32*(k: Mmask16, a, b, c: M512i): M512i {.importc: "_mm512_maskz_shldv_epi32".}

# SHLDV - Concatenate and Variable Shift Left - 64-bit

func mm512_shldv_epi64*(a, b, c: M512i): M512i {.importc: "_mm512_shldv_epi64".}

func mm512_mask_shldv_epi64*(a: M512i, k: Mmask8, b, c: M512i): M512i {.importc: "_mm512_mask_shldv_epi64".}

func mm512_maskz_shldv_epi64*(k: Mmask8, a, b, c: M512i): M512i {.importc: "_mm512_maskz_shldv_epi64".}

# SHRDV - Concatenate and Variable Shift Right - 16-bit

func mm512_shrdv_epi16*(a, b, c: M512i): M512i {.importc: "_mm512_shrdv_epi16".}

func mm512_mask_shrdv_epi16*(a: M512i, k: Mmask32, b, c: M512i): M512i {.importc: "_mm512_mask_shrdv_epi16".}

func mm512_maskz_shrdv_epi16*(k: Mmask32, a, b, c: M512i): M512i {.importc: "_mm512_maskz_shrdv_epi16".}

# SHRDV - Concatenate and Variable Shift Right - 32-bit

func mm512_shrdv_epi32*(a, b, c: M512i): M512i {.importc: "_mm512_shrdv_epi32".}

func mm512_mask_shrdv_epi32*(a: M512i, k: Mmask16, b, c: M512i): M512i {.importc: "_mm512_mask_shrdv_epi32".}

func mm512_maskz_shrdv_epi32*(k: Mmask16, a, b, c: M512i): M512i {.importc: "_mm512_maskz_shrdv_epi32".}

# SHRDV - Concatenate and Variable Shift Right - 64-bit

func mm512_shrdv_epi64*(a, b, c: M512i): M512i {.importc: "_mm512_shrdv_epi64".}

func mm512_mask_shrdv_epi64*(a: M512i, k: Mmask8, b, c: M512i): M512i {.importc: "_mm512_mask_shrdv_epi64".}

func mm512_maskz_shrdv_epi64*(k: Mmask8, a, b, c: M512i): M512i {.importc: "_mm512_maskz_shrdv_epi64".}

# SHLDI - Concatenate and Immediate Shift Left - 16-bit

func mm512_shldi_epi16*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_shldi_epi16".}

func mm512_mask_shldi_epi16*(src: M512i, k: Mmask32, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_shldi_epi16".}

func mm512_maskz_shldi_epi16*(k: Mmask32, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_shldi_epi16".}

# SHLDI - Concatenate and Immediate Shift Left - 32-bit

func mm512_shldi_epi32*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_shldi_epi32".}

func mm512_mask_shldi_epi32*(src: M512i, k: Mmask16, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_shldi_epi32".}

func mm512_maskz_shldi_epi32*(k: Mmask16, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_shldi_epi32".}

# SHLDI - Concatenate and Immediate Shift Left - 64-bit

func mm512_shldi_epi64*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_shldi_epi64".}

func mm512_mask_shldi_epi64*(src: M512i, k: Mmask8, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_shldi_epi64".}

func mm512_maskz_shldi_epi64*(k: Mmask8, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_shldi_epi64".}

# SHRDI - Concatenate and Immediate Shift Right - 16-bit

func mm512_shrdi_epi16*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_shrdi_epi16".}

func mm512_mask_shrdi_epi16*(src: M512i, k: Mmask32, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_shrdi_epi16".}

func mm512_maskz_shrdi_epi16*(k: Mmask32, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_shrdi_epi16".}

# SHRDI - Concatenate and Immediate Shift Right - 32-bit

func mm512_shrdi_epi32*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_shrdi_epi32".}

func mm512_mask_shrdi_epi32*(src: M512i, k: Mmask16, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_shrdi_epi32".}

func mm512_maskz_shrdi_epi32*(k: Mmask16, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_shrdi_epi32".}

# SHRDI - Concatenate and Immediate Shift Right - 64-bit

func mm512_shrdi_epi64*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_shrdi_epi64".}

func mm512_mask_shrdi_epi64*(src: M512i, k: Mmask8, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_mask_shrdi_epi64".}

func mm512_maskz_shrdi_epi64*(k: Mmask8, a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_maskz_shrdi_epi64".}

{.pop.}
