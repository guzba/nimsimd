## SSE4.2 intrinsics

import sse41
export sse41

const
  SIDD_UBYTE_OPS*: int32 = 0b0000_0000
  SIDD_UWORD_OPS*: int32 = 0b0000_0001
  SIDDSBYTE_OPS*: int32 = 0b0000_0010
  SIDDSWORD_OPS*: int32 = 0b0000_0011
  SIDD_CMP_EQUAL_ANY*: int32 = 0b0000_0000
  SIDD_CMP_RANGES*: int32 = 0b0000_0100
  SIDD_CMP_EQUAL_EACH*: int32 = 0b0000_1000
  SIDD_CMP_EQUAL_ORDERED*: int32 = 0b0000_1100
  SIDD_POSITIVE_POLARITY*: int32 = 0b0000_0000
  SIDD_NEGATIVE_POLARITY*: int32 = 0b0001_0000
  SIDD_MASKED_POSITIVE_POLARITY*: int32 = 0b0010_0000
  SIDD_MASKED_NEGATIVE_POLARITY*: int32 = 0b0011_0000
  SIDD_LEASTSIGNIFICANT*: int32 = 0b0000_0000
  SIDD_MOSTSIGNIFICANT*: int32 = 0b0100_0000
  SIDD_BIT_MASK*: int32 = 0b0000_0000
  SIDD_UNIT_MASK*: int32 = 0b0100_0000

{.push header: "nmmintrin.h".}

func mm_cmpestra*(a: M128i, la: int32 | uint32, b: M128i, lb: int32 | uint32, imm8: int32 | uint32): int32 {.importc: "_mm_cmpestra".}

func mm_cmpestrc*(a: M128i, la: int32 | uint32, b: M128i, lb: int32 | uint32, imm8: int32 | uint32): int32 {.importc: "_mm_cmpestrc".}

func mm_cmpestri*(a: M128i, la: int32 | uint32, b: M128i, lb: int32 | uint32, imm8: int32 | uint32): int32 {.importc: "_mm_cmpestri".}

func mm_cmpestrm*(a: M128i, la: int32 | uint32, b: M128i, lb: int32 | uint32, imm8: int32 | uint32): M128i {.importc: "_mm_cmpestrm".}

func mm_cmpestro*(a: M128i, la: int32 | uint32, b: M128i, lb: int32 | uint32, imm8: int32 | uint32): int32 {.importc: "_mm_cmpestro".}

func mm_cmpestrs*(a: M128i, la: int32 | uint32, b: M128i, lb: int32 | uint32, imm8: int32 | uint32): int32 {.importc: "_mm_cmpestrs".}

func mm_cmpestrz*(a: M128i, la: int32 | uint32, b: M128i, lb: int32 | uint32, imm8: int32 | uint32): int32 {.importc: "_mm_cmpestrz".}

func mm_cmpgt_epi64*(a, b: M128i): M128i {.importc: "_mm_cmpgt_epi64".}

func mm_cmpistra*(a, b: M128i, imm8: int32 | uint32): int32 {.importc: "_mm_cmpistra".}

func mm_cmpistrc*(a, b: M128i, imm8: int32 | uint32): int32 {.importc: "_mm_cmpistrc".}

func mm_cmpistri*(a, b: M128i, imm8: int32 | uint32): int32 {.importc: "_mm_cmpistri".}

func mm_cmpistrm*(a, b: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_cmpistrm".}

func mm_cmpistro*(a, b: M128i, imm8: int32 | uint32): int32 {.importc: "_mm_cmpistro".}

func mm_cmpistrs*(a, b: M128i, imm8: int32 | uint32): int32 {.importc: "_mm_cmpistrs".}

func mm_cmpistrz*(a, b: M128i, imm8: int32 | uint32): int32 {.importc: "_mm_cmpistrz".}

func mm_crc32_u16*(crc: uint32, v: uint16): uint32 {.importc: "_mm_crc32_u16".}

func mm_crc32_u32*(crc: uint32, v: uint32): uint32 {.importc: "_mm_crc32_u32".}

func mm_crc32_u64*(crc: uint64, v: uint64): uint64 {.importc: "_mm_crc32_u64".}

func mm_crc32_u8*(crc: uint32, v: uint8): uint32 {.importc: "_mm_crc32_u8".}

{.pop.}
