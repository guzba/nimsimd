import bw

export bw

type
  M512bh* {.importc: "__m512bh", header: "immintrin.h", bycopy.} = object
  M256bh* {.importc: "__m256bh", header: "immintrin.h", bycopy.} = object
  M128bh* {.importc: "__m128bh", header: "immintrin.h", bycopy.} = object

{.push header: "immintrin.h".}

# Convert float32 to bfloat16 (two sources interleaved)

func mm512_cvtne2ps_pbh*(a, b: M512): M512bh {.importc: "_mm512_cvtne2ps_pbh".}

func mm512_mask_cvtne2ps_pbh*(src: M512bh, k: Mmask32, a, b: M512): M512bh {.importc: "_mm512_mask_cvtne2ps_pbh".}

func mm512_maskz_cvtne2ps_pbh*(k: Mmask32, a, b: M512): M512bh {.importc: "_mm512_maskz_cvtne2ps_pbh".}

func mm256_cvtne2ps_pbh*(a, b: M256): M256bh {.importc: "_mm256_cvtne2ps_pbh".}

func mm256_mask_cvtne2ps_pbh*(src: M256bh, k: Mmask16, a, b: M256): M256bh {.importc: "_mm256_mask_cvtne2ps_pbh".}

func mm256_maskz_cvtne2ps_pbh*(k: Mmask16, a, b: M256): M256bh {.importc: "_mm256_maskz_cvtne2ps_pbh".}

func mm_cvtne2ps_pbh*(a, b: M128): M128bh {.importc: "_mm_cvtne2ps_pbh".}

func mm_mask_cvtne2ps_pbh*(src: M128bh, k: Mmask8, a, b: M128): M128bh {.importc: "_mm_mask_cvtne2ps_pbh".}

func mm_maskz_cvtne2ps_pbh*(k: Mmask8, a, b: M128): M128bh {.importc: "_mm_maskz_cvtne2ps_pbh".}

# Convert float32 to bfloat16 (single source)

func mm512_cvtneps_pbh*(a: M512): M256bh {.importc: "_mm512_cvtneps_pbh".}

func mm512_mask_cvtneps_pbh*(src: M256bh, k: Mmask16, a: M512): M256bh {.importc: "_mm512_mask_cvtneps_pbh".}

func mm512_maskz_cvtneps_pbh*(k: Mmask16, a: M512): M256bh {.importc: "_mm512_maskz_cvtneps_pbh".}

func mm256_cvtneps_pbh*(a: M256): M128bh {.importc: "_mm256_cvtneps_pbh".}

func mm256_mask_cvtneps_pbh*(src: M128bh, k: Mmask8, a: M256): M128bh {.importc: "_mm256_mask_cvtneps_pbh".}

func mm256_maskz_cvtneps_pbh*(k: Mmask8, a: M256): M128bh {.importc: "_mm256_maskz_cvtneps_pbh".}

# Dot product of bfloat16 pairs accumulated to float32

func mm512_dpbf16_ps*(src: M512, a, b: M512bh): M512 {.importc: "_mm512_dpbf16_ps".}

func mm512_mask_dpbf16_ps*(src: M512, k: Mmask16, a, b: M512bh): M512 {.importc: "_mm512_mask_dpbf16_ps".}

func mm512_maskz_dpbf16_ps*(k: Mmask16, src: M512, a, b: M512bh): M512 {.importc: "_mm512_maskz_dpbf16_ps".}

func mm256_dpbf16_ps*(src: M256, a, b: M256bh): M256 {.importc: "_mm256_dpbf16_ps".}

func mm256_mask_dpbf16_ps*(src: M256, k: Mmask8, a, b: M256bh): M256 {.importc: "_mm256_mask_dpbf16_ps".}

func mm256_maskz_dpbf16_ps*(k: Mmask8, src: M256, a, b: M256bh): M256 {.importc: "_mm256_maskz_dpbf16_ps".}

func mm_dpbf16_ps*(src: M128, a, b: M128bh): M128 {.importc: "_mm_dpbf16_ps".}

func mm_mask_dpbf16_ps*(src: M128, k: Mmask8, a, b: M128bh): M128 {.importc: "_mm_mask_dpbf16_ps".}

func mm_maskz_dpbf16_ps*(k: Mmask8, src: M128, a, b: M128bh): M128 {.importc: "_mm_maskz_dpbf16_ps".}

{.pop.}
