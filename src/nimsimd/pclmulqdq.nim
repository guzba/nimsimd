## PCLMULQDQ intrinsics

import sse2
export sse2

{.push header: "wmmintrin.h".}

func mm_clmulepi64_si128*(a, b: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_clmulepi64_si128".}

{.pop.}
