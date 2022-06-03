## SSSE3 intrinsics

import sse3
export sse3

{.push header: "tmmintrin.h".}

func mm_abs_epi16*(a: M128i): M128i

func mm_abs_epi32*(a: M128i): M128i

func mm_abs_epi8*(a: M128i): M128i

func mm_alignr_epi8*(a, b: M128i, imm8: int32 | uint32): M128i

func mm_hadd_epi16*(a, b: M128i): M128i

func mm_hadd_epi32*(a, b: M128i): M128i

func mm_hadds_epi16*(a, b: M128i): M128i

func mm_hsub_epi16*(a, b: M128i): M128i

func mm_hsub_epi32*(a, b: M128i): M128i

func mm_hsubs_epi16*(a, b: M128i): M128i

func mm_maddubs_epi16*(a, b: M128i): M128i

func mm_mulhrs_epi16*(a, b: M128i): M128i

func mm_shuffle_epi8*(a, b: M128i): M128i

func mm_sign_epi16*(a, b: M128i): M128i

func mm_sign_epi32*(a, b: M128i): M128i

func mm_sign_epi8*(a, b: M128i): M128i

{.pop.}
