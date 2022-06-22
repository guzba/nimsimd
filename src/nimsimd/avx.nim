import sse42

export sse42

type
  M256i* {.importc: "__m256i", header: "immintrin.h".} = object

{.push header: "immintrin.h".}

func mm256_store_si256*(p: pointer, a: M256i) {.importc: "_mm256_store_si256".}

func mm256_set1_epi32*(a: int32 | uint32): M256i {.importc: "_mm256_set1_epi32".}

{.pop.}
