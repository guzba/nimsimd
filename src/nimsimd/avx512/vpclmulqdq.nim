import f

export f

{.push header: "immintrin.h".}

# Carry-less multiplication of 64-bit values
# imm8 selects which 64-bit halves of each 128-bit lane to multiply:
#   0x00: low * low
#   0x01: low * high
#   0x10: high * low
#   0x11: high * high

func mm512_clmulepi64_epi128*(a, b: M512i, imm8: int32 | uint32): M512i {.importc: "_mm512_clmulepi64_epi128".}

func mm256_clmulepi64_epi128*(a, b: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_clmulepi64_epi128".}

{.pop.}
