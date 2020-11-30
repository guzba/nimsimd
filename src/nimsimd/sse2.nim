## SSE and SSE2 instructions

type M128* {.importc: "__m128", header: "xmmintrin.h".} = object

# xmmintrin.h

func mm_loadu_ps*(p: pointer): M128
  {.importc: "_mm_loadu_ps", header: "xmmintrin.h".}

func mm_storeu_ps*(p: pointer, a: M128)
  {.importc: "_mm_storeu_ps", header: "xmmintrin.h".}

func mm_set1_ps*(a: float32): M128
  {.importc: "_mm_set1_ps", header: "xmmintrin.h".}

func mm_and_ps*(a, b: M128): M128
  {.importc: "_mm_and_ps", header: "xmmintrin.h".}

func mm_or_ps*(a, b: M128): M128
  {.importc: "_mm_or_ps", header: "xmmintrin.h".}

func mm_xor_ps*(a, b: M128): M128
  {.importc: "_mm_xor_ps", header: "xmmintrin.h".}

func mm_andnot_ps*(a, b: M128): M128
  {.importc: "_mm_andnot_ps", header: "xmmintrin.h".}

func mm_cmpgt_ps*(a, b: M128): M128
  {.importc: "_mm_cmpgt_ps", header: "xmmintrin.h".}

func mm_cmpge_ps*(a, b: M128): M128
  {.importc: "_mm_cmpge_ps", header: "xmmintrin.h".}

func mm_cmplt_ps*(a, b: M128): M128
  {.importc: "_mm_cmplt_ps", header: "xmmintrin.h".}

func mm_cmple_ps*(a, b: M128): M128
  {.importc: "_mm_cmple_ps", header: "xmmintrin.h".}

func mm_add_ps*(a: M128, b: M128): M128
  {.importc: "_mm_add_ps", header: "xmmintrin.h".}

func mm_sub_ps*(a: M128, b: M128): M128
  {.importc: "_mm_sub_ps", header: "xmmintrin.h".}

func mm_mul_ps*(a: M128, b: M128): M128
  {.importc: "_mm_mul_ps", header: "xmmintrin.h".}

func mm_div_ps*(a: M128, b: M128): M128
  {.importc: "_mm_div_ps", header: "xmmintrin.h".}

# emmintrin.h

type M128i* {.importc: "__m128i", header: "emmintrin.h".} = object

func mm_set1_epi32*(a: int32): M128i
  {.importc: "_mm_set1_epi32", header: "emmintrin.h".}

func mm_cvttps_epi32*(a: M128): M128i
  {.importc: "_mm_cvttps_epi32", header: "emmintrin.h".}

func mm_cvtps_epi32*(a: M128): M128i
  {.importc: "_mm_cvtps_epi32", header: "emmintrin.h".}

func mm_cvtepi32_ps*(a: M128i): M128
  {.importc: "_mm_cvtepi32_ps", header: "emmintrin.h".}

func mm_and_si128*(a, b: M128i): M128i
  {.importc: "_mm_and_si128", header: "emmintrin.h".}

# For readability

func m128*(a: float32): M128 {.inline.} =
  mm_set1_ps(a)

func `and`*(a, b: M128): M128 {.inline.} =
  mm_and_ps(a, b)

func `or`*(a, b: M128): M128 {.inline.} =
  mm_or_ps(a, b)

func `xor`*(a, b: M128): M128 {.inline.} =
  mm_xor_ps(a, b)

func `>`*(a, b: M128): M128 {.inline.} =
  mm_cmpgt_ps(a, b)

func `>=`*(a, b: M128): M128 {.inline.} =
  mm_cmpge_ps(a, b)

func `<`*(a, b: M128): M128 {.inline.} =
  mm_cmplt_ps(a, b)

func `<=`*(a, b: M128): M128 {.inline.} =
  mm_cmple_ps(a, b)

func `+`*(a, b: M128): M128 {.inline.} =
  mm_add_ps(a, b)

func `-`*(a, b: M128): M128 {.inline.} =
  mm_sub_ps(a, b)

func `*`*(a, b: M128): M128 {.inline.} =
  mm_mul_ps(a, b)

func `/`*(a, b: M128): M128 {.inline.} =
  mm_div_ps(a, b)

func `+=`*(a: var M128, b: M128) {.inline.} =
  a = a + b

func `-=`*(a: var M128, b: M128) {.inline.} =
  a = a - b

func `*=`*(a: var M128, b: M128) {.inline.} =
  a = a * b

func `/=`*(a: var M128, b: M128) {.inline.} =
  a = a / b
