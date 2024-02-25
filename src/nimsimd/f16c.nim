
import ./[sse2, avx]
export sse2
export avx

{.push header: "immintrin.h".}

# type
#   M128bh* {.importc: "__m128bh", header: "immintrin.h".} = object

const
  MM_FROUND_TO_NEAREST_INT* :int32 = 0 ## round to nearest
  MM_FROUND_TO_NEG_INF*     :int32 = 1 ## round down
  MM_FROUND_TO_POS_INF*     :int32 = 2 ## round up
  MM_FROUND_TO_ZERO*        :int32 = 3 ## truncate
  MM_FROUND_CUR_DIRECTION*  :int32 = 4 ## use MXCSR.RC; see _MM_SET_ROUNDING_MODE


# func mm_malloc*( size: int, align: int32 ) :pointer   {.importc: "_mm_malloc".}
# func mm_free*( p :pointer )                           {.importc: "_mm_free"  .}
func mm_sfence*()                                     {.importc: "_mm_sfence".}

func mm_cvtph_ps*(    vec :M128i )             :M128  {.importc: "_mm_cvtph_ps".}
func mm_cvtps_ph*(    vec :M128, imm8 :int32 ) :M128i {.importc: "_mm_cvtps_ph".}

func mm256_cvtph_ps*( vec :M128i )             :M256  {.importc: "_mm256_cvtph_ps".}
func mm256_cvtps_ph*( vec :M256, imm8 :int32 ) :M128i {.importc: "_mm256_cvtps_ph".}

# bf = brain-float (16-bit) by Google/Intel
# func mm_bcstnebf16_ps*( bf :pointer ) :M128 {.importc: "_mm_bcstnebf16_ps".}
# func mm_cvtneebf16_ps*( bf :pointer ) :M128 {.importc: "_mm_cvtneebf16_ps".}

# IEEE half-precision a.k.a. 'float16', here short 'f16'
# func mm_bcstnesh_ps*( f16 :pointer ) :M128 {.importc: "_mm_bcstnebf16_ps".}

# func mm_cvtneps_avx_pbh*(    vec :M128 ) :M128h {.importc: "_mm_cvtneps_avx_pbh".}
# func mm256_cvtneps_avx_pbh*( vec :M256 ) :M128h {.importc: "_mm256_cvtneps_avx_pbh".}

# even indexed half-P to single-P
# func mm_cvtneeph_ps*( bh :ptr M128bh ) :M128 {.importc: "_mm_cvtneeph_ps".}



#func load_f16_even_ps*( pt :static pointer ) :M128 = mm_cvtneebf16_ps( pt )

# func ps_ph*(     vec :M128  ) :M128h = vec.mm_cvtneps_avx_pbh()
# func ps_128_ph*( vec :M256  ) :M128h = vec.mm256_cvtneps_avx_pbh()

# func load_bf_ps*( bf  :pointer ) :M128 = mm_bcstnebf16_ps bf
# func load_ph_ps*( f16 :pointer ) :M128 = mm_bcstnesh_ps f16

{.pop.}