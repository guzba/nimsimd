import f

export f

{.push header: "immintrin.h".}

# 32-bit element intersection
# For each element in a, k0 bit is set if element matches any element in b
# For each element in b, k1 bit is set if element matches any element in a

func mm512_2intersect_epi32*(a, b: M512i, k0, k1: ptr Mmask16) {.importc: "_mm512_2intersect_epi32".}

func mm256_2intersect_epi32*(a, b: M256i, k0, k1: ptr Mmask8) {.importc: "_mm256_2intersect_epi32".}

func mm_2intersect_epi32*(a, b: M128i, k0, k1: ptr Mmask8) {.importc: "_mm_2intersect_epi32".}

# 64-bit element intersection

func mm512_2intersect_epi64*(a, b: M512i, k0, k1: ptr Mmask8) {.importc: "_mm512_2intersect_epi64".}

func mm256_2intersect_epi64*(a, b: M256i, k0, k1: ptr Mmask8) {.importc: "_mm256_2intersect_epi64".}

func mm_2intersect_epi64*(a, b: M128i, k0, k1: ptr Mmask8) {.importc: "_mm_2intersect_epi64".}

{.pop.}
